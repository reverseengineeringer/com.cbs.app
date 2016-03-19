package com.cbs.app.view.fragments.mycbs;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AppCompatActivity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.HeaderViewListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.cbs.app.adapter.mycbs.MyShowAdapter;
import com.cbs.app.adapter.mycbs.MyShowAdapter.MyShowViewHolder;
import com.cbs.app.adapter.mycbs.ShowVideoAdapter;
import com.cbs.app.adapter.mycbs.ShowVideoAdapter.VideoDataHolder;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.ShowVideo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.db.MyShow;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.model.rest.MyCbsEndpointResponse;
import com.cbs.app.view.model.rest.ShowAddedEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class MyShowVideoFragment
  extends AbstractAsyncFragment
{
  private static final String q = MyShowVideoFragment.class.getSimpleName();
  private AdapterView.OnItemClickListener A = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      MyShowVideoFragment.i();
      MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousView);
      paramAnonymousView = (ShowItem)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
      MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousView);
      if (paramAnonymousView != null)
      {
        MyShowVideoFragment.i();
        paramAnonymousAdapterView = null;
        if (MyShowVideoFragment.b(MyShowVideoFragment.this) != null)
        {
          MyShowVideoFragment.i();
          paramAnonymousAdapterView = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
        }
        if ((paramAnonymousAdapterView == null) || (paramAnonymousAdapterView.size() <= 0)) {
          break label212;
        }
        MyShowVideoFragment.i();
        paramAnonymousAdapterView = paramAnonymousAdapterView.iterator();
        while (paramAnonymousAdapterView.hasNext())
        {
          FavoriteShow localFavoriteShow = (FavoriteShow)paramAnonymousAdapterView.next();
          if (showId == localFavoriteShow.getCbsShowId()) {
            MyShowVideoFragment.i();
          }
        }
      }
      label212:
      for (paramAnonymousInt = 1;; paramAnonymousInt = 0)
      {
        b();
        if (paramAnonymousInt != 0)
        {
          MyShowVideoFragment.i();
          new MyCBSService().b(MyShowVideoFragment.c(MyShowVideoFragment.this), "favorite-shows", String.valueOf(showId), h);
          return;
        }
        MyShowVideoFragment.i();
        new MyCBSService().a(MyShowVideoFragment.d(MyShowVideoFragment.this), "favorite-shows", String.valueOf(showId), i);
        return;
      }
    }
  };
  private MyShowDataSource B;
  private Button C;
  private Button D = null;
  private LinearLayout E = null;
  private LinearLayout F = null;
  private ShowVideo[] G = null;
  private long H = -1L;
  private boolean I = false;
  private ListView J;
  private boolean K;
  private GridView L;
  private boolean M = false;
  private ShowServiceManager N;
  ResponseModelListener h = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      d();
      a("CBS", "Unable to remove this show at this time, please try again later.");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      if ((MyShowVideoFragment.e(MyShowVideoFragment.this)) && ((paramAnonymousResponseModel instanceof ShowAddedEndpointResponse)))
      {
        if ((MyShowVideoFragment.f(MyShowVideoFragment.this) != null) && (MyShowVideoFragment.g(MyShowVideoFragment.this) != null))
        {
          MyShowVideoFragment.i();
          paramAnonymousResponseModel = (MyShowAdapter.MyShowViewHolder)MyShowVideoFragment.f(MyShowVideoFragment.this).getTag();
          Object localObject1 = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
          Object localObject2 = new FavoriteShow();
          ((FavoriteShow)localObject2).setCbsShowId(gshowId);
          if (localObject1 != null)
          {
            MyShowVideoFragment.i();
            new StringBuilder("before size: ").append(((ArrayList)localObject1).size());
            ((ArrayList)localObject1).remove(localObject2);
            MyShowVideoFragment.i();
            new StringBuilder("after size: ").append(((ArrayList)localObject1).size());
          }
          MyShowVideoFragment.h(MyShowVideoFragment.this);
          f();
          c.setVisibility(0);
          c.setImageResource(2130837993);
          paramAnonymousResponseModel = Action.a;
          paramAnonymousResponseModel.setName("MyCBSRemove");
          MyShowVideoFragment.i();
          localObject1 = new HashMap();
          ((HashMap)localObject1).put("appState", "cbscom:My CBS");
          ((HashMap)localObject1).put("events", "event84");
          ((HashMap)localObject1).put("from", "My CBS");
          ((HashMap)localObject1).put("ShowTitle", gtitle);
          ((HashMap)localObject1).put("showId", Long.valueOf(gshowId));
          localObject2 = "cbscom:" + gshowId + "|" + gtitle;
          ((HashMap)localObject1).put("evar_63", localObject2);
          ((HashMap)localObject1).put("prop_63", localObject2);
          AnalyticsManager.a(MyShowVideoFragment.i(MyShowVideoFragment.this), paramAnonymousResponseModel, (HashMap)localObject1);
        }
        d();
        return;
      }
      MyShowVideoFragment.i();
      d();
      a("CBS", "Unable to remove this show at this time, please try again later.");
    }
  };
  ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      d();
      a("CBS", "Unable to add show at this time, please try again later.");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      if ((MyShowVideoFragment.e(MyShowVideoFragment.this)) && ((paramAnonymousResponseModel instanceof ShowAddedEndpointResponse)))
      {
        MyShowVideoFragment.i();
        if ((MyShowVideoFragment.f(MyShowVideoFragment.this) != null) && (MyShowVideoFragment.g(MyShowVideoFragment.this) != null))
        {
          MyShowVideoFragment.i();
          paramAnonymousResponseModel = (MyShowAdapter.MyShowViewHolder)MyShowVideoFragment.f(MyShowVideoFragment.this).getTag();
          if (MyShowVideoFragment.b(MyShowVideoFragment.this) != null)
          {
            localObject1 = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
            localObject2 = new FavoriteShow();
            ((FavoriteShow)localObject2).setCbsShowId(gshowId);
            if (localObject1 != null)
            {
              MyShowVideoFragment.i();
              new StringBuilder("before size: ").append(((ArrayList)localObject1).size());
              ((ArrayList)localObject1).add(localObject2);
              MyShowVideoFragment.i();
              new StringBuilder("after size: ").append(((ArrayList)localObject1).size());
            }
          }
          MyShowVideoFragment.h(MyShowVideoFragment.this);
          f();
          c.setVisibility(0);
          c.setImageResource(2130837711);
          paramAnonymousResponseModel = Action.a;
          paramAnonymousResponseModel.setName("MyCBSAdd");
          MyShowVideoFragment.i();
          Object localObject1 = new HashMap();
          ((HashMap)localObject1).put("appState", "cbscom:My CBS");
          ((HashMap)localObject1).put("from", "My CBS");
          ((HashMap)localObject1).put("events", "event83");
          ((HashMap)localObject1).put("ShowTitle", gtitle);
          ((HashMap)localObject1).put("showId", Long.valueOf(gshowId));
          Object localObject2 = "cbscom:" + gshowId + "|" + gtitle;
          ((HashMap)localObject1).put("evar_63", localObject2);
          ((HashMap)localObject1).put("prop_63", localObject2);
          AnalyticsManager.a(MyShowVideoFragment.j(MyShowVideoFragment.this), paramAnonymousResponseModel, (HashMap)localObject1);
        }
        d();
        return;
      }
      MyShowVideoFragment.i();
      d();
      a("CBS", "Unable to add this show at this time, please try again later.");
    }
  };
  ResponseModelListener j = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      if ((MyShowVideoFragment.e(MyShowVideoFragment.this)) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousResponseModel.getFavshowlist());
        if (MyShowVideoFragment.b(MyShowVideoFragment.this) != null)
        {
          MyShowVideoFragment.i();
          MyShowVideoFragment.a(MyShowVideoFragment.this, MyShowVideoFragment.b(MyShowVideoFragment.this).getId());
          paramAnonymousResponseModel = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
          MainApplication localMainApplication = getApplicationContext();
          if (localMainApplication != null) {
            ((MainApplication)localMainApplication).setMycbsShows(paramAnonymousResponseModel);
          }
          if (paramAnonymousResponseModel == null)
          {
            if (MyShowVideoFragment.k(MyShowVideoFragment.this) != null) {
              Preferences.a(MyShowVideoFragment.l(MyShowVideoFragment.this), "mycbs_show_count", -1);
            }
            paramAnonymousResponseModel = new ArrayList();
            MyShowVideoFragment.b(MyShowVideoFragment.this).setShowList(paramAnonymousResponseModel);
          }
          for (;;)
          {
            e();
            return;
            if (MyShowVideoFragment.m(MyShowVideoFragment.this) != null) {
              Preferences.a(MyShowVideoFragment.n(MyShowVideoFragment.this), "mycbs_show_count", paramAnonymousResponseModel.size());
            }
          }
        }
        MyShowVideoFragment.i();
        d();
        b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
        return;
      }
      MyShowVideoFragment.i();
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
  };
  ShowServiceManager.ShowServiceManagerListener k = new ShowServiceManager.ShowServiceManagerListener()
  {
    public final void a()
    {
      boolean bool = false;
      if (MyShowVideoFragment.o(MyShowVideoFragment.this) != null) {
        bool = Util.r(MyShowVideoFragment.p(MyShowVideoFragment.this));
      }
      if (bool)
      {
        getMyShowsForEditList();
        return;
      }
      e();
    }
    
    public final void a(int paramAnonymousInt) {}
  };
  AccountUIHelper.RefreshAccountListener l = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      MyShowVideoFragment.q(MyShowVideoFragment.this);
      d();
      AccountUIHelper.setReconcileDialogShowing(false);
      if (Util.y(MyShowVideoFragment.r(MyShowVideoFragment.this)) != null)
      {
        MyShowVideoFragment.i();
        MyShowVideoFragment.s(MyShowVideoFragment.this).setClickable(true);
        MyShowVideoFragment.t(MyShowVideoFragment.this).setClickable(true);
        MyShowVideoFragment.u(MyShowVideoFragment.this);
        if (!Util.r(MyShowVideoFragment.v(MyShowVideoFragment.this)))
        {
          MyShowVideoFragment.i();
          b();
          new MyCBSExporter(MyShowVideoFragment.w(MyShowVideoFragment.this), p).a();
        }
      }
      do
      {
        return;
        MyShowVideoFragment.i();
        new MyCBSService().a(MyShowVideoFragment.x(MyShowVideoFragment.this), o);
        return;
        MyShowVideoFragment.i();
      } while ((MyShowVideoFragment.y(MyShowVideoFragment.this) == null) || (!(MyShowVideoFragment.z(MyShowVideoFragment.this) instanceof NavigationActivity)));
      ((NavigationActivity)MyShowVideoFragment.A(MyShowVideoFragment.this)).k();
      d();
    }
  };
  ResponseModelListener m = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      MyShowVideoFragment.a(MyShowVideoFragment.this, null);
      MyShowVideoFragment.C(MyShowVideoFragment.this);
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      int i;
      Object localObject1;
      int j;
      if ((paramAnonymousResponseModel instanceof MyCbsEndpointResponse))
      {
        MyShowVideoFragment.i();
        paramAnonymousResponseModel = (MyCbsEndpointResponse)paramAnonymousResponseModel;
        MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousResponseModel.getShowVideoArray());
        if (MyShowVideoFragment.B(MyShowVideoFragment.this) != null)
        {
          paramAnonymousResponseModel = MyShowVideoFragment.B(MyShowVideoFragment.this);
          int k = paramAnonymousResponseModel.length;
          i = 0;
          if (i < k)
          {
            localObject1 = paramAnonymousResponseModel[i];
            if (localObject1 == null) {
              break label160;
            }
            Object localObject2 = ((ShowVideo)localObject1).getShowId();
            if (localObject2 == null) {
              break label160;
            }
            localObject2 = ShowServiceManager.a(((Integer)localObject2).longValue());
            if (localObject2 == null) {
              break label160;
            }
            j = 1;
            ((ShowVideo)localObject1).setShowTitle(title);
          }
        }
      }
      for (;;)
      {
        if ((j == 0) && (localObject1 != null)) {
          ((ShowVideo)localObject1).setShowTitle("z");
        }
        i += 1;
        break;
        Arrays.sort(MyShowVideoFragment.B(MyShowVideoFragment.this), new Comparator() {});
        MyShowVideoFragment.C(MyShowVideoFragment.this);
        return;
        label160:
        j = 0;
      }
    }
  };
  ResponseModelListener n = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      if ((MyShowVideoFragment.e(MyShowVideoFragment.this)) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        MyShowVideoFragment.i();
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousResponseModel.getFavshowlist());
          if (MyShowVideoFragment.b(MyShowVideoFragment.this) != null)
          {
            MyShowVideoFragment.this.a();
            return;
          }
          d();
          b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
          return;
        }
        d();
        b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
        return;
      }
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
  };
  ResponseModelListener o = new ResponseModelListener()
  {
    public final void a()
    {
      MyShowVideoFragment.i();
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      MyShowVideoFragment.i();
      if ((MyShowVideoFragment.e(MyShowVideoFragment.this)) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        MyShowVideoFragment.i();
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousResponseModel.getFavshowlist());
          if (MyShowVideoFragment.b(MyShowVideoFragment.this) != null)
          {
            paramAnonymousResponseModel = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
            if (MyShowVideoFragment.D(MyShowVideoFragment.this) != null)
            {
              if (paramAnonymousResponseModel != null) {
                Preferences.a(MyShowVideoFragment.E(MyShowVideoFragment.this), "mycbs_show_count", paramAnonymousResponseModel.size());
              }
            }
            else
            {
              MyShowVideoFragment.a(MyShowVideoFragment.this, MyShowVideoFragment.b(MyShowVideoFragment.this).getId());
              MyShowVideoFragment.this.a();
            }
          }
          do
          {
            return;
            Preferences.a(MyShowVideoFragment.F(MyShowVideoFragment.this), "mycbs_show_count", -1);
            break;
            paramAnonymousResponseModel = MyShowVideoFragment.G(MyShowVideoFragment.this);
          } while (paramAnonymousResponseModel == null);
          Preferences.a(paramAnonymousResponseModel, "mycbs_show_count", -1);
          new MyCBSService().a(paramAnonymousResponseModel, "favorite-shows", n);
          return;
        }
        d();
        b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
        return;
      }
      d();
      b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
    }
  };
  MyCBSExporter.ExporterDoneListener p = new MyCBSExporter.ExporterDoneListener()
  {
    public final void a()
    {
      d();
      MyShowVideoFragment.C(MyShowVideoFragment.this);
    }
    
    public final void a(FavoriteShowList paramAnonymousFavoriteShowList)
    {
      int j = 1;
      if (!MyShowVideoFragment.e(MyShowVideoFragment.this)) {
        return;
      }
      MyShowVideoFragment.i();
      if (paramAnonymousFavoriteShowList != null)
      {
        MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousFavoriteShowList);
        MyShowVideoFragment.a(MyShowVideoFragment.this, MyShowVideoFragment.b(MyShowVideoFragment.this).getId());
        MyShowVideoFragment.i();
        new StringBuilder("list id: ").append(MyShowVideoFragment.H(MyShowVideoFragment.this));
        paramAnonymousFavoriteShowList = MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList();
        if ((paramAnonymousFavoriteShowList != null) && (paramAnonymousFavoriteShowList.size() > 0))
        {
          MyShowVideoFragment.i();
          new StringBuilder("showList.size: ").append(MyShowVideoFragment.b(MyShowVideoFragment.this).getShowList().size());
        }
      }
      for (int i = 1;; i = 0)
      {
        if (MyShowVideoFragment.I(MyShowVideoFragment.this) != null) {
          if (Util.w(MyShowVideoFragment.J(MyShowVideoFragment.this))) {
            break label260;
          }
        }
        for (;;)
        {
          MyShowVideoFragment.i();
          MyShowVideoFragment.i();
          new StringBuilder("user had local data: ").append(MyShowVideoFragment.K(MyShowVideoFragment.this));
          MyShowVideoFragment.i();
          new StringBuilder("user was logged in: ").append(MyShowVideoFragment.L(MyShowVideoFragment.this));
          if ((MyShowVideoFragment.L(MyShowVideoFragment.this)) && ((MyShowVideoFragment.K(MyShowVideoFragment.this)) || (i != 0)) && (j != 0))
          {
            a("Update to My CBS", "Good news! We've improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.");
            Util.setUserHasSeenDialog(MyShowVideoFragment.M(MyShowVideoFragment.this));
          }
          MyShowVideoFragment.this.a();
          return;
          label260:
          j = 0;
        }
      }
    }
  };
  private final View.OnClickListener r = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      MyShowVideoFragment.i();
      paramAnonymousView = getTagb;
      if (paramAnonymousView != null)
      {
        ShowItem localShowItem = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
        if (localShowItem != null)
        {
          VideoUtil.a(MyShowVideoFragment.a(MyShowVideoFragment.this), paramAnonymousView, localShowItem);
          MyShowVideoFragment.a(MyShowVideoFragment.this, paramAnonymousView);
        }
      }
    }
  };
  private boolean s = false;
  private FavoriteShowList t;
  private View u = null;
  private ShowItem v;
  private View w = null;
  private boolean x;
  private boolean y = false;
  private MenuChangeListener z;
  
  private static List<Long> a(List<Long> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Long localLong = (Long)paramList.next();
      if (localHashSet.add(localLong)) {
        localArrayList.add(localLong);
      }
    }
    return localArrayList;
  }
  
  private void j()
  {
    new MyCBSService().a(g, o);
  }
  
  private void k()
  {
    if (w != null)
    {
      if ((y) || (G == null) || (G.length <= 0)) {
        break label317;
      }
      y = false;
      if (D != null)
      {
        D.setText("EDIT");
        D.setVisibility(0);
        D.setEnabled(true);
        D.setTextColor(g.getResources().getColor(2131558439));
        localObject = new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            h();
          }
        };
        D.setOnClickListener((View.OnClickListener)localObject);
      }
      if (C != null)
      {
        C.setText("EDIT");
        C.setEnabled(true);
        C.setTextColor(g.getResources().getColor(2131558439));
        localObject = new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            h();
          }
        };
        C.setOnClickListener((View.OnClickListener)localObject);
      }
      if (E != null) {
        E.setVisibility(8);
      }
      if (F != null) {
        F.setVisibility(8);
      }
      Object localObject = (ListView)w.findViewById(2131690031);
      View localView = g.getLayoutInflater().inflate(2130903140, null, false);
      new StringBuilder("list view footer count:").append(((ListView)localObject).getFooterViewsCount());
      if (((ListView)localObject).getFooterViewsCount() == 0)
      {
        ((ListView)localObject).addFooterView(localView);
        ((ListView)localObject).setFooterDividersEnabled(false);
      }
      ((ListView)localObject).setAdapter(new ShowVideoAdapter(g, G, x, r));
      ((ListView)localObject).setVisibility(0);
      if (z != null) {
        z.a(0);
      }
    }
    for (;;)
    {
      d();
      return;
      label317:
      m();
    }
  }
  
  private void l()
  {
    Object localObject1 = getResources();
    Object localObject2;
    if (t != null)
    {
      localObject2 = t.getShowList();
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
      {
        new StringBuilder("newList.size: ").append(((ArrayList)localObject2).size());
        if (D != null)
        {
          D.setVisibility(0);
          D.setEnabled(true);
          D.setTextColor(((Resources)localObject1).getColor(2131558439));
          localObject2 = (TextView)w.findViewById(2131690033);
          if (localObject2 != null) {
            ((TextView)localObject2).setText("Tap on a show below to add or remove it from My CBS.");
          }
        }
        if (C != null)
        {
          C.setEnabled(true);
          C.setTextColor(((Resources)localObject1).getColor(2131558439));
          localObject1 = (TextView)w.findViewById(2131690036);
          if (localObject1 != null) {
            ((TextView)localObject1).setText("Tap on a show below to add or remove it from My CBS.");
          }
        }
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (D != null)
            {
              D.setEnabled(false);
              D.setTextColor(((Resources)localObject1).getColor(2131558502));
              localObject2 = (TextView)w.findViewById(2131690033);
              if (localObject2 != null) {
                ((TextView)localObject2).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below.");
              }
            }
          } while (C == null);
          C.setEnabled(false);
          C.setTextColor(((Resources)localObject1).getColor(2131558502));
          localObject1 = (TextView)w.findViewById(2131690036);
        } while (localObject1 == null);
        ((TextView)localObject1).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below.");
        return;
        if (D != null)
        {
          D.setEnabled(false);
          D.setTextColor(((Resources)localObject1).getColor(2131558502));
          localObject2 = (TextView)w.findViewById(2131690033);
          if (localObject2 != null) {
            ((TextView)localObject2).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below.");
          }
        }
      } while (C == null);
      C.setEnabled(false);
      C.setTextColor(((Resources)localObject1).getColor(2131558502));
      localObject1 = (TextView)w.findViewById(2131690036);
    } while (localObject1 == null);
    ((TextView)localObject1).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Choose your shows below.");
  }
  
  private void m()
  {
    y = true;
    Object localObject = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        g();
      }
    };
    if (C != null)
    {
      C.setText("DONE");
      C.setOnClickListener((View.OnClickListener)localObject);
    }
    if (D != null)
    {
      D.setText("DONE");
      D.setOnClickListener((View.OnClickListener)localObject);
    }
    localObject = (ListView)w.findViewById(2131690031);
    if (localObject != null) {
      ((ListView)localObject).setVisibility(8);
    }
    if ((Util.i(g)) || (Util.j(g))) {
      if (E != null) {
        E.setVisibility(0);
      }
    }
    for (;;)
    {
      if (Util.y(g) != null)
      {
        b();
        localObject = AuthStatusManager.getUserAuthStatus();
        if (localObject != null)
        {
          localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
          if (localObject != null) {
            ((UserStatus)localObject).getDescription();
          }
        }
        N.getAllShows();
      }
      if (z != null) {
        z.a(1);
      }
      return;
      if (F != null) {
        F.setVisibility(0);
      }
    }
  }
  
  public final void a()
  {
    if (t != null)
    {
      Object localObject2 = t.getShowList();
      if ((localObject2 == null) || (((ArrayList)localObject2).size() == 0))
      {
        G = null;
        k();
        return;
      }
      b();
      Object localObject1 = new ArrayList(((ArrayList)localObject2).size());
      new StringBuilder("shows: ").append(((List)localObject1).size());
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        FavoriteShow localFavoriteShow = (FavoriteShow)((Iterator)localObject2).next();
        if (ShowServiceManager.a(localFavoriteShow.getCbsShowId()) != null) {
          ((List)localObject1).add(Long.valueOf(localFavoriteShow.getCbsShowId()));
        }
      }
      localObject1 = a((List)localObject1);
      new ShowServiceImpl().b(g, (List)localObject1, Integer.valueOf(4), m);
      return;
    }
    m();
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (g != null)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(g, 2131427561));
      localBuilder.setMessage(paramString2).setTitle(paramString1).setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      });
      paramString1 = localBuilder.create();
      paramString1.setCancelable(true);
      paramString1.show();
    }
  }
  
  public final void b(String paramString1, String paramString2)
  {
    if (g != null)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(g, 2131427561));
      localBuilder.setMessage(paramString2).setTitle(paramString1).setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          if ((MyShowVideoFragment.N(MyShowVideoFragment.this) != null) && ((MyShowVideoFragment.O(MyShowVideoFragment.this) instanceof NavigationActivity))) {
            ((NavigationActivity)MyShowVideoFragment.P(MyShowVideoFragment.this)).k();
          }
        }
      });
      paramString1 = localBuilder.create();
      paramString1.setCancelable(false);
      paramString1.show();
    }
  }
  
  public final void e()
  {
    Object localObject = bshowItems;
    if (localObject != null)
    {
      l();
      if (localObject != null)
      {
        new StringBuilder("list not null:").append(((List)localObject).size());
        Collections.sort((List)localObject, new Comparator() {});
        if (!x) {
          break label176;
        }
        if (J != null)
        {
          localObject = new MyShowAdapter(g, (List)localObject, x, 2130903134, t);
          if (J.getFooterViewsCount() == 0)
          {
            View localView = getActivity().getLayoutInflater().inflate(2130903140, null, false);
            J.addFooterView(localView);
            J.setFooterDividersEnabled(false);
          }
          J.setAdapter((ListAdapter)localObject);
          if (Util.y(g) == null) {
            break label165;
          }
          J.setOnItemClickListener(A);
        }
      }
    }
    for (;;)
    {
      d();
      return;
      label165:
      J.setClickable(false);
      continue;
      label176:
      if (L != null)
      {
        if (Util.l(g))
        {
          L.setNumColumns(3);
          if (Util.i(g)) {
            L.setColumnWidth(Util.a(g, 168.0D));
          }
        }
        for (;;)
        {
          localObject = new MyShowAdapter(g, (List)localObject, x, 2130903135, t);
          L.setAdapter((ListAdapter)localObject);
          if (Util.y(g) == null) {
            break label332;
          }
          L.setOnItemClickListener(A);
          break;
          L.setColumnWidth(Util.a(g, 168.0D));
          continue;
          L.setNumColumns(4);
          L.setColumnWidth(Util.a(g, 168.0D));
        }
        label332:
        L.setClickable(false);
        continue;
        a("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
      }
    }
  }
  
  public final void f()
  {
    if (t != null)
    {
      MyShowAdapter localMyShowAdapter;
      if ((L != null) && (!x))
      {
        localMyShowAdapter = (MyShowAdapter)L.getAdapter();
        if (localMyShowAdapter != null) {
          localMyShowAdapter.setNewMyShowList(t);
        }
      }
      if ((J != null) && (x))
      {
        localMyShowAdapter = (MyShowAdapter)((HeaderViewListAdapter)J.getAdapter()).getWrappedAdapter();
        if (localMyShowAdapter != null) {
          localMyShowAdapter.setNewMyShowList(t);
        }
        d();
      }
    }
  }
  
  public final boolean g()
  {
    if (t == null) {
      return false;
    }
    y = false;
    ArrayList localArrayList = t.getShowList();
    if ((localArrayList != null) && (localArrayList.size() > 0)) {
      j();
    }
    for (;;)
    {
      return true;
      Toast.makeText(g, "You didn't add any shows.", 1).show();
    }
  }
  
  public void getMyShowsForEditList()
  {
    b();
    new MyCBSService().a(g, j);
  }
  
  public final void h()
  {
    m();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    K = true;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    k();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    B = new MyShowDataSource(g);
    N = new ShowServiceManager(g);
    N.setShowServiceListener(k);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    boolean bool2 = true;
    b();
    c = true;
    boolean bool1 = bool2;
    if (!Util.g(g)) {
      if (!Util.f(g)) {
        break label198;
      }
    }
    label198:
    for (bool1 = bool2;; bool1 = false)
    {
      x = bool1;
      w = paramLayoutInflater.inflate(2130903177, paramViewGroup, false);
      D = ((Button)g.findViewById(2131689489));
      if (D != null) {
        D.setVisibility(8);
      }
      C = ((Button)g.findViewById(2131690204));
      if (C != null) {
        C.setVisibility(8);
      }
      E = ((LinearLayout)w.findViewById(2131690032));
      F = ((LinearLayout)w.findViewById(2131690035));
      J = ((ListView)w.findViewById(2131690037));
      L = ((GridView)w.findViewById(2131690034));
      return w;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(l);
    w = null;
    N.c();
    J = null;
    L = null;
    B = null;
    d();
  }
  
  public void onDetach()
  {
    d();
    super.onDetach();
    K = false;
  }
  
  public void onPause()
  {
    super.onPause();
    d();
    AccountUIHelper.b(l);
  }
  
  public void onResume()
  {
    d = null;
    super.onResume();
    boolean bool = AccountUIHelper.a();
    AccountUIHelper.a(l);
    if ((g != null) && (!g.isFinishing())) {
      AccountUIHelper.i(g);
    }
    AppCompatActivity localAppCompatActivity;
    String str;
    if (g != null)
    {
      if (bool) {
        break label536;
      }
      localAppCompatActivity = g;
      str = Util.y(g);
      if (!Util.r(localAppCompatActivity)) {
        break label179;
      }
      if (str == null) {
        break label95;
      }
      s = true;
      j();
    }
    label95:
    label179:
    label452:
    label536:
    label546:
    label551:
    for (;;)
    {
      d();
      return;
      if (!I)
      {
        I = true;
        AccountUIHelper.setFrom("My CBS");
        if (((localAppCompatActivity instanceof NavigationActivity)) && (!((NavigationActivity)localAppCompatActivity).isFinishing())) {}
        for (int i1 = 1;; i1 = 0)
        {
          if (i1 == 0) {
            break label551;
          }
          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
          SVODPopupHelper.setWeWantToSeeVideo(null);
          SVODPopupHelper.setWeWantToSeeShow(null);
          if (Util.e(getContext()))
          {
            NewMyCBSFragment.h = true;
            g.invalidateOptionsMenu();
          }
          AccountUIHelper.b(g);
          break;
          if (B == null) {
            B = new MyShowDataSource(g);
          }
          B.a();
          Object localObject1 = B.getAllShows();
          B.b();
          if ((localObject1 == null) || (((List)localObject1).size() == 0)) {
            m();
          }
          for (;;)
          {
            if (str == null) {
              break label452;
            }
            s = true;
            new MyCBSExporter(g, p).a();
            break;
            if (((List)localObject1).size() > 0) {
              M = true;
            }
            B.a();
            Object localObject2 = B.getAllShows();
            B.b();
            if ((localObject2 == null) || (((List)localObject2).size() == 0))
            {
              G = null;
              k();
            }
            else
            {
              b();
              localObject1 = new ArrayList(((List)localObject2).size());
              localObject2 = ((List)localObject2).iterator();
              while (((Iterator)localObject2).hasNext()) {
                ((List)localObject1).add(((MyShow)((Iterator)localObject2).next()).getShowId());
              }
              new StringBuilder("shows: ").append(((List)localObject1).size());
              new ShowServiceImpl().a(g, (List)localObject1, Integer.valueOf(4), m);
            }
          }
          if (I) {
            break;
          }
          I = true;
          AccountUIHelper.setFrom("My CBS");
          if (((localAppCompatActivity instanceof NavigationActivity)) && (!((NavigationActivity)localAppCompatActivity).isFinishing())) {}
          for (i1 = 1;; i1 = 0)
          {
            if (i1 == 0) {
              break label546;
            }
            SVODPopupHelper.setWeWantToSeeVideo(null);
            SVODPopupHelper.setWeWantToSeeShow(null);
            SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
            if (Util.e(getContext()))
            {
              NewMyCBSFragment.h = true;
              g.invalidateOptionsMenu();
            }
            AccountUIHelper.b(g);
            break;
            AccountUIHelper.setSocialWasShowing(false);
            break;
          }
          break;
        }
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  public void setMenuChangeListener(MenuChangeListener paramMenuChangeListener)
  {
    z = paramMenuChangeListener;
  }
  
  public static abstract interface MenuChangeListener
  {
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */