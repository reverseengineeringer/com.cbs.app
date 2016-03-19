package com.cbs.app.view.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.service.UpsellService;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.LogoKeeper;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.ShowSocialDialog;
import com.cbs.app.view.VideoSocialDialog;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.fragments.show.CustomWebViewFragment;
import com.cbs.app.view.fragments.show.LiveFeedFragment;
import com.cbs.app.view.fragments.show.cast.CastFragment;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.photos.ShowPhotosFragment;
import com.cbs.app.view.fragments.show.videos.VideosFragment;
import com.cbs.app.view.menu.DrawerStatusListener;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.AssetCarouselItem;
import com.cbs.app.view.model.AssetFilePathMap;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowBlockNavigation;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AssetCarouselResponse;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastResponse;
import com.cbs.app.view.model.rest.ShowAssetResponseV2;
import com.cbs.app.view.model.rest.ShowAssetsResponse;
import com.cbs.app.view.model.rest.ShowBlockNavigationResponse;
import com.cbs.app.view.model.rest.ShowConfigResponse;
import com.cbs.app.view.model.rest.ShowEndpointResponse;
import com.cbs.app.view.model.rest.ShowPhotosEndpointResponse;
import com.cbs.app.view.model.rest.ShowResponse;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityData;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityItem;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityResponse;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.CBSPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ShowFragmentV2
  extends AbstractAsyncFragment
{
  public static final String h = ShowFragmentV2.class.getSimpleName();
  private final DrawerStatusListener A = new DrawerStatusListener()
  {
    public final void a()
    {
      String str = ShowFragmentV2.h;
    }
    
    public final void b()
    {
      String str = ShowFragmentV2.h;
      ShowFragmentV2.a(ShowFragmentV2.this, ShowFragmentV2.b(ShowFragmentV2.this).getBundle("show_item"));
      if ((isVisible()) && (ctitle != null))
      {
        ShowFragmentV2.a(ShowFragmentV2.this, ctitle);
        ShowFragmentV2.d(ShowFragmentV2.this);
      }
    }
  };
  private View.OnClickListener B = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ShowFragmentV2.h;
      ShowFragmentV2.e(ShowFragmentV2.this);
      e();
    }
  };
  private View.OnClickListener C = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ShowFragmentV2.h;
      ShowFragmentV2.f(ShowFragmentV2.this);
      i();
    }
  };
  private View.OnClickListener D = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ShowFragmentV2.h;
      ShowFragmentV2.g(ShowFragmentV2.this);
      g();
    }
  };
  private View.OnClickListener E = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ShowFragmentV2.h;
      ShowFragmentV2.h(ShowFragmentV2.this);
      h();
    }
  };
  private ResponseModelListener F = new ResponseModelListener()
  {
    private void b()
    {
      synchronized (ShowFragmentV2.i(ShowFragmentV2.this))
      {
        ShowFragmentV2.a(ShowFragmentV2.this, true);
        if ((ShowFragmentV2.j(ShowFragmentV2.this)) && (ShowFragmentV2.k(ShowFragmentV2.this)) && (ShowFragmentV2.l(ShowFragmentV2.this)) && (ShowFragmentV2.m(ShowFragmentV2.this))) {
          ShowFragmentV2.n(ShowFragmentV2.this);
        }
        return;
      }
    }
    
    public final void a()
    {
      String str = ShowFragmentV2.h;
      b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ShowFragmentV2.h;
      paramAnonymousResponseModel = (ShowSeasonAvailabilityResponse)paramAnonymousResponseModel;
      a(paramAnonymousResponseModel);
      b();
    }
  };
  private ResponseModelListener G = new ResponseModelListener()
  {
    private void b()
    {
      synchronized (ShowFragmentV2.i(ShowFragmentV2.this))
      {
        ShowFragmentV2.b(ShowFragmentV2.this, true);
        if ((ShowFragmentV2.o(ShowFragmentV2.this)) && (ShowFragmentV2.k(ShowFragmentV2.this)) && (ShowFragmentV2.l(ShowFragmentV2.this)) && (ShowFragmentV2.m(ShowFragmentV2.this))) {
          ShowFragmentV2.n(ShowFragmentV2.this);
        }
        return;
      }
    }
    
    public final void a()
    {
      String str = ShowFragmentV2.h;
      b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ShowFragmentV2.h;
      paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
      if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0)) {
        ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasVideos", true);
      }
      b();
    }
  };
  private ResponseModelListener H = new ResponseModelListener()
  {
    private void b()
    {
      synchronized (ShowFragmentV2.i(ShowFragmentV2.this))
      {
        ShowFragmentV2.p(ShowFragmentV2.this);
        if ((ShowFragmentV2.o(ShowFragmentV2.this)) && (ShowFragmentV2.k(ShowFragmentV2.this)) && (ShowFragmentV2.j(ShowFragmentV2.this)) && (ShowFragmentV2.l(ShowFragmentV2.this))) {
          ShowFragmentV2.n(ShowFragmentV2.this);
        }
        return;
      }
    }
    
    public final void a()
    {
      String str = ShowFragmentV2.h;
      b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ShowFragmentV2.h;
      paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
      if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0)) {
        ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasVideos", true);
      }
      b();
    }
  };
  private ResponseModelListener I = new ResponseModelListener()
  {
    private void b()
    {
      synchronized (ShowFragmentV2.i(ShowFragmentV2.this))
      {
        ShowFragmentV2.c(ShowFragmentV2.this, true);
        if ((ShowFragmentV2.o(ShowFragmentV2.this)) && (ShowFragmentV2.j(ShowFragmentV2.this)) && (ShowFragmentV2.l(ShowFragmentV2.this)) && (ShowFragmentV2.m(ShowFragmentV2.this))) {
          ShowFragmentV2.n(ShowFragmentV2.this);
        }
        return;
      }
    }
    
    public final void a()
    {
      String str = ShowFragmentV2.h;
      ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasPhotos", false);
      b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ShowFragmentV2.h;
      paramAnonymousResponseModel = ((ShowPhotosEndpointResponse)paramAnonymousResponseModel).getShowAlbums();
      if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0)) {
        ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasPhotos", true);
      }
      for (;;)
      {
        b();
        return;
        ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasPhotos", false);
      }
    }
  };
  private ResponseModelListener J = new ResponseModelListener()
  {
    private void b()
    {
      synchronized (ShowFragmentV2.i(ShowFragmentV2.this))
      {
        ShowFragmentV2.d(ShowFragmentV2.this, true);
        if ((ShowFragmentV2.o(ShowFragmentV2.this)) && (ShowFragmentV2.j(ShowFragmentV2.this)) && (ShowFragmentV2.k(ShowFragmentV2.this)) && (ShowFragmentV2.m(ShowFragmentV2.this))) {
          ShowFragmentV2.n(ShowFragmentV2.this);
        }
        return;
      }
    }
    
    public final void a()
    {
      String str = ShowFragmentV2.h;
      ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasCast", false);
      b();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      List localList = null;
      Object localObject = ShowFragmentV2.h;
      localObject = (DeviceCastEndpointResponse)paramAnonymousResponseModel;
      paramAnonymousResponseModel = ((DeviceCastEndpointResponse)localObject).getCastResponse();
      if (paramAnonymousResponseModel != null) {}
      for (paramAnonymousResponseModel = paramAnonymousResponseModel.getCastList();; paramAnonymousResponseModel = null)
      {
        localObject = ((DeviceCastEndpointResponse)localObject).getHostResponse();
        if (localObject != null) {
          localList = ((DeviceCastResponse)localObject).getCastList();
        }
        if (((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0)) || ((localList != null) && (localList.size() > 0))) {
          ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasCast", true);
        }
        for (;;)
        {
          b();
          return;
          ShowFragmentV2.b(ShowFragmentV2.this).putBoolean("hasCast", false);
        }
      }
    }
  };
  private ResponseModelListener K = new ResponseModelListener()
  {
    public final void a()
    {
      String str = ShowFragmentV2.h;
      ShowFragmentV2.this.a();
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ShowFragmentV2.h;
      paramAnonymousResponseModel = (ShowEndpointResponse)paramAnonymousResponseModel;
      a(paramAnonymousResponseModel);
    }
  };
  private AccountUIHelper.RefreshAccountListener L = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      String str = ShowFragmentV2.h;
      ShowFragmentV2.a(ShowFragmentV2.this, false);
      ShowFragmentV2.d(ShowFragmentV2.this, false);
      ShowFragmentV2.c(ShowFragmentV2.this, false);
      ShowFragmentV2.b(ShowFragmentV2.this, false);
      if (CBSPlayer.a())
      {
        AccountUIHelper.setIsPlayerActive(true);
        ShowFragmentV2.q(ShowFragmentV2.this);
      }
      getShowData();
    }
  };
  private boolean M;
  private final BackButtonListener N = new BackButtonListener()
  {
    public final boolean c()
    {
      String str = ShowFragmentV2.h;
      if (ShowFragmentV2.r(ShowFragmentV2.this))
      {
        ShowFragmentV2.s(ShowFragmentV2.this);
        return true;
      }
      ShowFragmentV2.t(ShowFragmentV2.this);
      if ((ShowFragmentV2.u(ShowFragmentV2.this) instanceof NavigationActivity))
      {
        ((NavigationActivity)ShowFragmentV2.v(ShowFragmentV2.this)).g();
        return true;
      }
      return false;
    }
    
    public final String getTag()
    {
      return ShowFragmentV2.h;
    }
  };
  String i = UserDescription.ANONYMOUS.name();
  int j = 0;
  int k = 0;
  int l = 0;
  int m = 0;
  public ResponseModelListener n = new ResponseModelListener()
  {
    public final void a()
    {
      String str = ShowFragmentV2.h;
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      Object localObject = ShowFragmentV2.h;
      if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
      {
        paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
        if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
        {
          localObject = (UpsellInfo)paramAnonymousResponseModel.get(0);
          paramAnonymousResponseModel = ((UpsellInfo)localObject).getCallToAction();
          localObject = ((UpsellInfo)localObject).getProductID();
          if ((paramAnonymousResponseModel != null) && (localObject != null))
          {
            String str = ShowFragmentV2.h;
            new StringBuilder(" callToAction: ").append(paramAnonymousResponseModel).append(" aa productId: ").append((String)localObject);
          }
          ShowFragmentV2.a(ShowFragmentV2.this);
        }
      }
    }
  };
  private final Object o = new Object();
  private boolean p = false;
  private LogoKeeper q;
  private ShowItem r = null;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private VideoData x = null;
  private boolean y = false;
  private Bundle z = new Bundle();
  
  public static ShowFragmentV2 a(ShowItem paramShowItem, String paramString, VideoData paramVideoData, int paramInt, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("showItem", paramShowItem);
    localBundle.putBoolean("isClassic", category.equals("Classic"));
    if (paramVideoData != null) {
      localBundle.putParcelable("selectedVideo", paramVideoData);
    }
    if (!TextUtils.isEmpty(paramString)) {
      localBundle.putString("selectedVideoId", paramString);
    }
    if ((paramInt != 0) && (paramLong > 0L))
    {
      localBundle.putInt("resumeMode", paramInt);
      localBundle.putLong("resumeTime", paramLong);
    }
    paramShowItem = new ShowFragmentV2();
    paramShowItem.setArguments(localBundle);
    return paramShowItem;
  }
  
  private static Asset a(Asset[] paramArrayOfAsset)
  {
    if ((paramArrayOfAsset != null) && (paramArrayOfAsset.length > 0))
    {
      int i2 = paramArrayOfAsset.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Asset localAsset = paramArrayOfAsset[i1];
        new StringBuilder("assets filepath: ").append(localAsset.getFilepath());
        new StringBuilder("asset feature: ").append(localAsset.getFeature());
        if ((localAsset.getFilepath() != null) && (localAsset.getFeature() != null) && (localAsset.getFeature().contains("show_info_background")) && (!localAsset.getFilepath().equals("null")) && (!localAsset.getFilepath().equals(""))) {
          return localAsset;
        }
        i1 += 1;
      }
    }
    return null;
  }
  
  private ShowBlockNavigation a(String paramString)
  {
    Object localObject = m();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        ShowBlockNavigation localShowBlockNavigation = (ShowBlockNavigation)((Iterator)localObject).next();
        new StringBuilder("type: ").append(localShowBlockNavigation.getNavigationType()).append(" url: ").append(localShowBlockNavigation.getUrl());
        if ((localShowBlockNavigation.getNavigationType() != null) && (localShowBlockNavigation.getNavigationType().equalsIgnoreCase(paramString))) {
          return localShowBlockNavigation;
        }
      }
    }
    return null;
  }
  
  private void a(int paramInt, String paramString)
  {
    Object localObject1;
    Object localObject2;
    ShowBlockNavigation localShowBlockNavigation;
    if (Util.m(g))
    {
      localObject1 = PreferenceManager.getDefaultSharedPreferences(g);
      if (((SharedPreferences)localObject1).getBoolean("webcheckbox", false))
      {
        a(z.getBundle("show_item"));
        if (r.showId == ((SharedPreferences)localObject1).getLong("showidselected", -1L))
        {
          int i1 = ((SharedPreferences)localObject1).getInt("webtabspinnerposition", -1);
          new StringBuilder("tabSelectedPosition: ").append(i1).append(" position: ").append(paramInt);
          if (i1 == paramInt)
          {
            localObject2 = ((SharedPreferences)localObject1).getString("webtablabel", null);
            Object localObject3 = ((SharedPreferences)localObject1).getString("weburltext", null);
            localObject1 = new ShowBlockNavigation();
            ((ShowBlockNavigation)localObject1).setUrl((String)localObject3);
            ((ShowBlockNavigation)localObject1).setLabel((String)localObject2);
            ((ShowBlockNavigation)localObject1).setNavigationType(paramString);
            localObject2 = new ArrayList();
            localObject3 = m();
            if (localObject3 == null) {
              break label283;
            }
            localObject3 = ((ArrayList)localObject3).iterator();
            if (((Iterator)localObject3).hasNext())
            {
              localShowBlockNavigation = (ShowBlockNavigation)((Iterator)localObject3).next();
              if ((localShowBlockNavigation.getNavigationType() == null) || (!localShowBlockNavigation.getNavigationType().equalsIgnoreCase(paramString))) {
                break label272;
              }
              ((ArrayList)localObject2).add(localObject1);
            }
          }
        }
      }
    }
    for (;;)
    {
      z.putParcelableArray("showBlockNavigation", (Parcelable[])((ArrayList)localObject2).toArray(new ShowBlockNavigation[((ArrayList)localObject2).size()]));
      return;
      label272:
      ((ArrayList)localObject2).add(localShowBlockNavigation);
      break;
      label283:
      ((ArrayList)localObject2).add(localObject1);
    }
  }
  
  private void a(Bundle paramBundle)
  {
    if (r == null) {
      r = new ShowItem();
    }
    r.setBundle(paramBundle);
  }
  
  private void a(View paramView, List<View> paramList)
  {
    paramView = (Button)paramView.findViewById(2131689948);
    ShowBlockNavigation localShowBlockNavigation;
    if (paramView != null)
    {
      a(2, "cast");
      localShowBlockNavigation = a("cast");
      if ((localShowBlockNavigation == null) && (!z.getBoolean("hasCast"))) {
        paramList.add(paramView);
      }
    }
    else
    {
      return;
    }
    if (localShowBlockNavigation != null) {
      paramView.setText(localShowBlockNavigation.getLabel());
    }
    paramView.setOnClickListener(E);
  }
  
  private void b(View paramView, List<View> paramList)
  {
    paramView = (Button)paramView.findViewById(2131689946);
    ShowBlockNavigation localShowBlockNavigation;
    if (paramView != null)
    {
      a(1, "photos");
      localShowBlockNavigation = a("photos");
      if ((localShowBlockNavigation == null) && (!z.getBoolean("hasPhotos"))) {
        paramList.add(paramView);
      }
    }
    else
    {
      return;
    }
    if (localShowBlockNavigation != null)
    {
      new StringBuilder("photo url : ").append(localShowBlockNavigation.getUrl());
      paramView.setText(localShowBlockNavigation.getLabel());
    }
    paramView.setOnClickListener(D);
  }
  
  private void b(String paramString)
  {
    if ((g != null) && ((g instanceof NavigationActivity)))
    {
      a(getArguments().getBundle("show_item"));
      NavigationActivity localNavigationActivity = (NavigationActivity)g;
      localNavigationActivity.i();
      localNavigationActivity.a(r.showId, paramString);
    }
  }
  
  private void c(View paramView, List<View> paramList)
  {
    Object localObject = (LinearLayout)paramView.findViewById(2131689943);
    paramView = (Button)paramView.findViewById(2131689944);
    if ((localObject != null) && (paramView != null))
    {
      a(0, "video");
      localObject = a("video");
      if ((a("photos") == null) && (!z.getBoolean("hasPhotos")) && (a("cast") == null) && (!z.getBoolean("hasCast"))) {
        paramList.add(paramView);
      }
    }
    else
    {
      return;
    }
    if (localObject != null) {
      paramView.setText(((ShowBlockNavigation)localObject).getLabel());
    }
    paramView.setOnClickListener(B);
  }
  
  private void c(String paramString)
  {
    e = paramString;
    ActionBar localActionBar = g.getSupportActionBar();
    if (localActionBar != null)
    {
      localActionBar.setTitle(paramString);
      localActionBar.setLogo(LogoKeeper.a(paramString));
    }
  }
  
  private void d(View paramView, List<View> paramList)
  {
    Object localObject = (LinearLayout)paramView.findViewById(2131689943);
    paramView = (Button)paramView.findViewById(2131689950);
    if ((localObject != null) && (paramView != null))
    {
      a(3, "connect");
      localObject = a("connect");
      if ((localObject == null) || ((Util.G(g)) && (r.showId == 5692L))) {
        paramList.add(paramView);
      }
    }
    else
    {
      return;
    }
    paramView.setText(((ShowBlockNavigation)localObject).getLabel());
    new StringBuilder("manageConnectButton: Live : ").append(((ShowBlockNavigation)localObject).getLabel());
    paramView.setVisibility(0);
    paramView.setOnClickListener(C);
  }
  
  private void j()
  {
    final Show localShow = (Show)z.getParcelable("show");
    a(z.getBundle("show_item"));
    final ShowConfig localShowConfig = (ShowConfig)z.getParcelable("showConfig");
    if (g != null)
    {
      localObject = g.getSupportActionBar().getCustomView();
      if (localObject == null) {
        break label125;
      }
      localObject = ((View)localObject).findViewById(2131690205);
      if (!(localObject instanceof Button)) {
        break label125;
      }
    }
    label125:
    for (Object localObject = (Button)localObject;; localObject = null)
    {
      if (localObject != null)
      {
        if (x != null) {
          ((Button)localObject).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              VideoSocialDialog.a(ShowFragmentV2.w(ShowFragmentV2.this), localShow, ShowFragmentV2.x(ShowFragmentV2.this), localShowConfig);
              if (Util.e(ShowFragmentV2.y(ShowFragmentV2.this)))
              {
                paramAnonymousView = new HashMap();
                paramAnonymousView.put("Show Title", ShowFragmentV2.z(ShowFragmentV2.this));
                AnalyticsManager.c(ShowFragmentV2.A(ShowFragmentV2.this), Action.bf, paramAnonymousView);
              }
            }
          });
        }
      }
      else {
        return;
      }
      ((Button)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ShowSocialDialog.a(ShowFragmentV2.B(ShowFragmentV2.this), localShow, localShowConfig);
          if (Util.e(ShowFragmentV2.C(ShowFragmentV2.this)))
          {
            paramAnonymousView = new HashMap();
            paramAnonymousView.put("Show Title", ShowFragmentV2.D(ShowFragmentV2.this));
            AnalyticsManager.c(ShowFragmentV2.E(ShowFragmentV2.this), Action.bf, paramAnonymousView);
          }
        }
      });
      return;
    }
  }
  
  private void k()
  {
    Object localObject1 = getView();
    Object localObject2 = z.getParcelableArray("assets");
    ArrayList localArrayList = new ArrayList();
    if ((localObject2 != null) && (localObject2.length > 0))
    {
      int i2 = localObject2.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject3 = localObject2[i1];
        if ((localObject3 instanceof Asset)) {
          localArrayList.add((Asset)localObject3);
        }
        i1 += 1;
      }
    }
    localObject2 = (Asset[])localArrayList.toArray(new Asset[localArrayList.size()]);
    if (localObject1 != null)
    {
      localObject2 = a((Asset[])localObject2);
      if (localObject2 != null)
      {
        localObject1 = ((View)localObject1).findViewById(2131689954);
        new StringBuilder("asset view = ").append(localObject1);
        if ((localObject1 instanceof ImageView))
        {
          localObject1 = (ImageView)localObject1;
          ((ImageView)localObject1).setVisibility(0);
          ImageHelper.a(((Asset)localObject2).getFilepath(), (ImageView)localObject1);
        }
      }
    }
  }
  
  private void l()
  {
    z.putBoolean("allDataLoaded", false);
    Object localObject = getView();
    Bundle localBundle = getArguments();
    v = false;
    w = false;
    t = false;
    u = false;
    if ((localObject != null) && (isAdded()) && (g != null) && (localBundle != null))
    {
      a(localBundle.getBundle("show_item"));
      localObject = new ShowServiceImpl();
      if (a("photos") == null) {
        break label177;
      }
      v = true;
      if (a("cast") == null) {
        break label204;
      }
      w = true;
      label112:
      if (!Util.G(g)) {
        break label231;
      }
      s = true;
    }
    for (;;)
    {
      ((ShowService)localObject).b(g, String.valueOf(r.showId), G);
      ((ShowService)localObject).c(g, String.valueOf(r.showId), 1, H);
      return;
      label177:
      ((ShowService)localObject).e(g, String.valueOf(r.showId), I);
      break;
      label204:
      ((ShowService)localObject).d(g, String.valueOf(r.showId), J);
      break label112;
      label231:
      ((ShowService)localObject).c(g, String.valueOf(r.showId), F);
    }
  }
  
  private ArrayList<ShowBlockNavigation> m()
  {
    Parcelable[] arrayOfParcelable = z.getParcelableArray("showBlockNavigation");
    Parcelable localParcelable = null;
    Object localObject = localParcelable;
    if (arrayOfParcelable != null)
    {
      localObject = localParcelable;
      if (arrayOfParcelable.length > 0)
      {
        localObject = new ArrayList();
        int i2 = arrayOfParcelable.length;
        int i1 = 0;
        while (i1 < i2)
        {
          localParcelable = arrayOfParcelable[i1];
          if ((localParcelable instanceof ShowBlockNavigation)) {
            ((ArrayList)localObject).add((ShowBlockNavigation)localParcelable);
          }
          i1 += 1;
        }
      }
    }
    return (ArrayList<ShowBlockNavigation>)localObject;
  }
  
  private void n()
  {
    Object localObject2;
    Object localObject1;
    boolean bool2;
    if (isResumed())
    {
      y = true;
      v = false;
      w = false;
      t = false;
      u = false;
      localObject2 = getView();
      if ((localObject2 != null) && (g != null) && (z != null))
      {
        a(z.getBundle("show_item"));
        c(r.title);
        new StringBuilder("showItem.showId: ").append(r.showId);
        localObject1 = (TextView)((View)localObject2).findViewById(2131689942);
        ((TextView)localObject1).setText(r.tuneInTime);
        if (!Util.e(g)) {
          break label451;
        }
        Object localObject3 = getView();
        if ((g != null) && (z != null))
        {
          localObject2 = (Show)z.getParcelable("show");
          if ((localObject3 != null) && (localObject2 != null))
          {
            Button localButton = (Button)((View)localObject3).findViewById(2131689952);
            localObject3 = (TextView)((View)localObject3).findViewById(2131689956);
            if (localObject3 != null) {
              ((TextView)localObject3).setText(((Show)localObject2).getAbout());
            }
            if (localButton != null) {
              localButton.setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  ShowFragmentV2.s(ShowFragmentV2.this);
                }
              });
            }
          }
        }
        k();
        if (!z.getBoolean("isClassic")) {
          break label443;
        }
        ((TextView)localObject1).setVisibility(8);
      }
      o();
      new StringBuilder("showBottomFragment: ").append(isResumed());
      if (z != null)
      {
        boolean bool1 = z.getBoolean("showCast", false);
        bool2 = z.getBoolean("showPhotos", false);
        if (z.getBoolean("isClassic")) {
          break label601;
        }
        if (!bool1) {
          break label590;
        }
        h();
      }
      label335:
      d();
      j();
      localObject1 = AuthStatusManager.getUserAuthStatus();
      if (localObject1 != null)
      {
        localObject1 = ((AuthStatusEndpointResponse)localObject1).getUserStatus();
        if (localObject1 != null) {
          i = ((UserStatus)localObject1).getDescription();
        }
      }
      if ((!i.equals(UserDescription.SUBSCRIBER.name())) && (!i.equals(UserDescription.SUSPENDED.name()))) {
        break label608;
      }
      if (getView() != null)
      {
        localObject1 = (LinearLayout)getView().findViewById(2131690049);
        if (localObject1 != null) {
          ((LinearLayout)localObject1).setVisibility(8);
        }
      }
    }
    for (;;)
    {
      z.putBoolean("allDataLoaded", true);
      return;
      label443:
      ((TextView)localObject1).setVisibility(0);
      break;
      label451:
      localObject2 = (TextView)((View)localObject2).findViewById(2131689941);
      ((TextView)localObject2).setText(r.title);
      if (z.getBoolean("isClassic"))
      {
        ((TextView)localObject1).setVisibility(8);
        ((TextView)localObject2).setVisibility(0);
      }
      for (;;)
      {
        if (!Util.j(g)) {
          break label557;
        }
        ((TextView)localObject2).setTextAppearance(g, 2131427535);
        ((TextView)localObject2).setTextColor(getApplicationContext().getResources().getColor(2131558596));
        break;
        ((TextView)localObject2).setVisibility(0);
        ((TextView)localObject1).setVisibility(0);
      }
      label557:
      ((TextView)localObject2).setTextAppearance(g, 2131427542);
      ((TextView)localObject2).setTextColor(getApplicationContext().getResources().getColor(2131558596));
      break;
      label590:
      if (bool2)
      {
        g();
        break label335;
      }
      label601:
      e();
      break label335;
      label608:
      getAllAccessSeasonData();
    }
  }
  
  private void o()
  {
    Object localObject1 = getView();
    if (localObject1 != null)
    {
      localObject1 = (LinearLayout)((View)localObject1).findViewById(2131689943);
      if (localObject1 != null)
      {
        Object localObject2 = new ArrayList();
        a((View)localObject1, (List)localObject2);
        b((View)localObject1, (List)localObject2);
        c((View)localObject1, (List)localObject2);
        d((View)localObject1, (List)localObject2);
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((LinearLayout)localObject1).removeView((View)((Iterator)localObject2).next());
        }
        if (((LinearLayout)localObject1).getChildCount() > 1) {
          ((LinearLayout)localObject1).setVisibility(0);
        }
      }
    }
  }
  
  private void p()
  {
    View localView4 = getView();
    if (localView4 != null)
    {
      View localView1 = localView4.findViewById(2131689944);
      View localView2 = localView4.findViewById(2131689946);
      View localView3 = localView4.findViewById(2131689948);
      localView4 = localView4.findViewById(2131689950);
      if (localView4 != null) {
        localView4.setSelected(false);
      }
      if (localView1 != null) {
        localView1.setSelected(true);
      }
      if (localView2 != null) {
        localView2.setSelected(false);
      }
      if (localView3 != null) {
        localView3.setSelected(false);
      }
    }
  }
  
  private void q()
  {
    View localView4 = getView();
    if (localView4 != null)
    {
      View localView1 = localView4.findViewById(2131689944);
      View localView2 = localView4.findViewById(2131689946);
      View localView3 = localView4.findViewById(2131689948);
      localView4 = localView4.findViewById(2131689950);
      if (localView4 != null) {
        localView4.setSelected(false);
      }
      if (localView1 != null) {
        localView1.setSelected(false);
      }
      if (localView2 != null) {
        localView2.setSelected(true);
      }
      if (localView3 != null) {
        localView3.setSelected(false);
      }
    }
  }
  
  private void r()
  {
    View localView4 = getView();
    if (localView4 != null)
    {
      View localView1 = localView4.findViewById(2131689944);
      View localView2 = localView4.findViewById(2131689946);
      View localView3 = localView4.findViewById(2131689948);
      localView4 = localView4.findViewById(2131689950);
      if (localView4 != null) {
        localView4.setSelected(true);
      }
      if (localView1 != null) {
        localView1.setSelected(false);
      }
      if (localView2 != null) {
        localView2.setSelected(false);
      }
      if (localView3 != null) {
        localView3.setSelected(false);
      }
    }
  }
  
  private void s()
  {
    View localView4 = getView();
    if (localView4 != null)
    {
      View localView1 = localView4.findViewById(2131689944);
      View localView2 = localView4.findViewById(2131689946);
      View localView3 = localView4.findViewById(2131689948);
      localView4 = localView4.findViewById(2131689950);
      if (localView4 != null) {
        localView4.setSelected(false);
      }
      if (localView1 != null) {
        localView1.setSelected(false);
      }
      if (localView2 != null) {
        localView2.setSelected(false);
      }
      if (localView3 != null) {
        localView3.setSelected(true);
      }
    }
  }
  
  private void t()
  {
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      z.remove("selectedVideo");
      z.remove("selectedVideoId");
      localBundle.remove("selectedVideo");
      localBundle.remove("selectedVideoId");
    }
  }
  
  public final void a()
  {
    if ((g != null) && (!g.isFinishing()))
    {
      Object localObject = getResources().getString(2131231161);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(g, 2131427561));
      localBuilder.setMessage((CharSequence)localObject).setTitle("CBS").setPositiveButton("Refresh", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          getShowData();
        }
      }).setNegativeButton("Go to Home", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          if ((ShowFragmentV2.F(ShowFragmentV2.this) instanceof NavigationActivity)) {
            ((NavigationActivity)ShowFragmentV2.G(ShowFragmentV2.this)).k();
          }
        }
      });
      localObject = localBuilder.create();
      ((Dialog)localObject).setCancelable(false);
      ((Dialog)localObject).show();
    }
  }
  
  public final void a(ShowEndpointResponse paramShowEndpointResponse)
  {
    Object localObject = paramShowEndpointResponse.getShowShowResponse();
    if (localObject != null)
    {
      localObject = ((ShowResponse)localObject).getShows();
      if ((localObject != null) && (((List)localObject).size() > 0))
      {
        new StringBuilder("showList not null: ").append(((List)localObject).size());
        localObject = (Show)((List)localObject).get(0);
        z.putParcelable("show", (Parcelable)localObject);
        z.putBoolean("isClassic", ((Show)localObject).getCategory().equalsIgnoreCase("Classics"));
        new StringBuilder("show id:").append(((Show)localObject).getId()).append(((Show)localObject).getAbout());
      }
    }
    localObject = paramShowEndpointResponse.getShowConfigResponse();
    if (localObject != null)
    {
      localObject = ((ShowConfigResponse)localObject).getConfiguration();
      if (localObject != null)
      {
        new StringBuilder("configList not null:").append(((List)localObject).size());
        localObject = (ShowConfig)((List)localObject).get(0);
        z.putParcelable("showConfig", (Parcelable)localObject);
      }
    }
    localObject = paramShowEndpointResponse.getShowAssetsResponse();
    if (localObject != null)
    {
      localObject = ((ShowAssetsResponse)localObject).getAssets();
      if (localObject != null)
      {
        new StringBuilder("assetList not null:").append(((List)localObject).size());
        localObject = (Asset[])((List)localObject).toArray(new Asset[((List)localObject).size()]);
        z.putParcelableArray("assets", (Parcelable[])localObject);
      }
    }
    localObject = paramShowEndpointResponse.getShowAssetResponseV2();
    if (localObject != null)
    {
      localObject = ((ShowAssetResponseV2)localObject).getShowAssets();
      if (localObject != null)
      {
        if (((AssetFilePathMap)localObject).getFilepath_show_home_page_landscape_background() != null) {}
        z.putParcelable("showAssets", (Parcelable)localObject);
      }
    }
    localObject = paramShowEndpointResponse.getAssetCarouselResponse();
    if (localObject != null)
    {
      localObject = ((AssetCarouselResponse)localObject).getItems();
      if (localObject != null)
      {
        new StringBuilder("assetCarouselList not null: ").append(((List)localObject).size());
        localObject = (AssetCarouselItem[])((List)localObject).toArray(new AssetCarouselItem[((List)localObject).size()]);
        z.putParcelableArray("carousel", (Parcelable[])localObject);
      }
    }
    paramShowEndpointResponse = paramShowEndpointResponse.getShowBlockNavigationResponse();
    if (paramShowEndpointResponse != null)
    {
      paramShowEndpointResponse = paramShowEndpointResponse.getItems();
      if (paramShowEndpointResponse != null)
      {
        new StringBuilder("showBlockNavigationlList not null: ").append(paramShowEndpointResponse.size());
        paramShowEndpointResponse = (ShowBlockNavigation[])paramShowEndpointResponse.toArray(new ShowBlockNavigation[paramShowEndpointResponse.size()]);
        z.putParcelableArray("showBlockNavigation", paramShowEndpointResponse);
      }
    }
    l();
  }
  
  public final void a(ShowSeasonAvailabilityResponse paramShowSeasonAvailabilityResponse)
  {
    paramShowSeasonAvailabilityResponse = paramShowSeasonAvailabilityResponse.getAvailableSeasons();
    if (paramShowSeasonAvailabilityResponse != null)
    {
      paramShowSeasonAvailabilityResponse = paramShowSeasonAvailabilityResponse.getSeasonAvailabilityItems();
      if (paramShowSeasonAvailabilityResponse != null)
      {
        new StringBuilder("availabilityItems size:").append(paramShowSeasonAvailabilityResponse.size());
        z.putParcelableArray("showSeasons", (Parcelable[])paramShowSeasonAvailabilityResponse.toArray(new ShowSeasonAvailabilityItem[paramShowSeasonAvailabilityResponse.size()]));
        paramShowSeasonAvailabilityResponse = paramShowSeasonAvailabilityResponse.iterator();
        while (paramShowSeasonAvailabilityResponse.hasNext())
        {
          ShowSeasonAvailabilityItem localShowSeasonAvailabilityItem = (ShowSeasonAvailabilityItem)paramShowSeasonAvailabilityResponse.next();
          j += localShowSeasonAvailabilityItem.getTotalCount();
          k += localShowSeasonAvailabilityItem.getPremiumCount();
          l += localShowSeasonAvailabilityItem.getClipsCount();
          int i1 = m;
          m = (localShowSeasonAvailabilityItem.getDelayCount() + i1);
        }
      }
    }
  }
  
  public final void e()
  {
    Object localObject2 = null;
    Object localObject1 = getView();
    Bundle localBundle;
    Object localObject4;
    long l1;
    String str1;
    String str2;
    String str3;
    if ((g != null) && (isResumed()) && (localObject1 != null))
    {
      localObject1 = getChildFragmentManager();
      if (((FragmentManager)localObject1).findFragmentByTag("fragment_show_videos") != null) {
        break label767;
      }
      p();
      setVideoShowing(null);
      localBundle = new Bundle();
      localBundle.putParcelable("show", z.getParcelable("show"));
      localBundle.putBundle("show_item", z.getBundle("show_item"));
      localBundle.putBoolean("isRefreshing", p);
      p = false;
      VideoData localVideoData = (VideoData)z.getParcelable("selectedVideo");
      if (localVideoData != null)
      {
        new StringBuilder("selectedVideo: ").append(localVideoData.getPid());
        localBundle.putParcelable("selectedVideo", z.getParcelable("selectedVideo"));
        z.putParcelable("selectedVideo", null);
      }
      Object localObject3 = (VideoData)z.getParcelable("selectedVideo");
      if (localObject3 != null) {
        new StringBuilder("selectedVideo2: ").append(((VideoData)localObject3).getPid());
      }
      localObject3 = z.getString("selectedVideoId");
      if (localObject3 != null)
      {
        localBundle.putString("selectedVideoId", (String)localObject3);
        z.putString("selectedVideoId", null);
      }
      if (z.getString("selectedVideoId") != null) {}
      localBundle.putLong("resumeTime", z.getLong("resumeTime"));
      localBundle.putInt("resumeMode", z.getInt("resumeMode"));
      z.remove("resumeTime");
      z.remove("resumeMode");
      localBundle.putParcelableArray("assets", z.getParcelableArray("assets"));
      localBundle.putParcelableArray("carousel", z.getParcelableArray("carousel"));
      localBundle.putParcelable("configuration", z.getParcelable("showConfig"));
      localBundle.putBoolean("dontShowPlayer", z.getBoolean("dontShowPlayer"));
      z.remove("dontShowPlayer");
      localBundle.putParcelableArray("showSeasons", z.getParcelableArray("showSeasons"));
      FragmentTransaction localFragmentTransaction = ((FragmentManager)localObject1).beginTransaction();
      localObject4 = a("video");
      localObject1 = localObject2;
      if (localObject4 != null)
      {
        l1 = ((ShowBlockNavigation)localObject4).getShowId();
        str1 = ((ShowBlockNavigation)localObject4).getUrl();
        str2 = ((ShowBlockNavigation)localObject4).getLabel();
        str3 = r.category;
        localObject4 = ((ShowBlockNavigation)localObject4).getInBoundDeepLinkUrl();
        new StringBuilder("bb url: ").append(str1).append("id: ").append(l1).append("livefeed: ").append(e).append(str3);
        if ((str1 == null) || (str1.equals(""))) {
          break label640;
        }
        localObject1 = new CustomWebViewFragment();
        localBundle.putString("pageUrl", str1);
      }
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = Fragment.instantiate(g, VideosFragment.class.getName());
        ((VideosFragment)localObject2).setShowItem(r);
      }
      ((Fragment)localObject2).setArguments(localBundle);
      localFragmentTransaction.replace(2131689951, (Fragment)localObject2, "fragment_show_videos");
      localFragmentTransaction.commitAllowingStateLoss();
      z.remove("dontShowPlayer");
      if ((localVideoData == null) && (localObject3 == null)) {
        b(Util.c("fragment_show_videos"));
      }
    }
    label640:
    label767:
    do
    {
      return;
      localObject1 = localObject2;
      if (localObject4 == null) {
        break;
      }
      localObject1 = localObject2;
      if (((String)localObject4).equals("")) {
        break;
      }
      localObject1 = Fragment.instantiate(getActivity(), LiveFeedFragment.class.getName());
      localBundle.putString("pageUrl", str1);
      localBundle.putLong("showId", l1);
      localObject2 = new HashMap();
      ((HashMap)localObject2).put("eVar6", str3 + "|" + e + "|tab|" + str2);
      AnalyticsManager.a(g, Action.j, (HashMap)localObject2);
      break;
      localObject1 = new NewViewInfo();
      a.setBundle(z.getBundle("show_item"));
      c = ((Show)z.getParcelable("show"));
      b = ((ShowConfig)z.getParcelable("showConfig"));
      e = z.getParcelableArray("carousel");
      d = z.getParcelableArray("assets");
      f = z.getParcelableArray("showSeasons");
      localObject2 = getChildFragmentManager().findFragmentByTag("fragment_show_videos");
    } while ((localObject2 == null) || (!(localObject2 instanceof VideosFragment)));
    ((VideosFragment)localObject2).a((NewViewInfo)localObject1);
  }
  
  public final void f()
  {
    p();
  }
  
  public final void g()
  {
    Object localObject2 = null;
    q();
    setVideoShowing(null);
    Object localObject1 = getView();
    Bundle localBundle;
    FragmentTransaction localFragmentTransaction;
    Object localObject3;
    long l1;
    String str1;
    String str2;
    if ((g != null) && (localObject1 != null))
    {
      localBundle = new Bundle();
      localBundle.putParcelable("show", z.getParcelable("show"));
      if (((View)localObject1).findViewById(2131689951) != null)
      {
        localFragmentTransaction = getChildFragmentManager().beginTransaction();
        localObject3 = a("photos");
        localObject1 = localObject2;
        if (localObject3 != null)
        {
          l1 = ((ShowBlockNavigation)localObject3).getShowId();
          a(z.getBundle("show_item"));
          str1 = ((ShowBlockNavigation)localObject3).getUrl();
          str2 = ((ShowBlockNavigation)localObject3).getLabel();
          localObject3 = ((ShowBlockNavigation)localObject3).getInBoundDeepLinkUrl();
          new StringBuilder("bb url: ").append(str1).append("id: ").append(l1).append("livefeed: ").append(e).append(r.category);
          if ((str1 == null) || (str1.equals(""))) {
            break label301;
          }
          localObject1 = new CustomWebViewFragment();
          localBundle.putString("pageUrl", str1);
        }
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = Fragment.instantiate(g, ShowPhotosFragment.class.getName());
        ((ShowPhotosFragment)localObject2).setShowItem(r);
      }
      ((Fragment)localObject2).setArguments(localBundle);
      localFragmentTransaction.replace(2131689951, (Fragment)localObject2, "fragment_show_photos");
      localFragmentTransaction.commitAllowingStateLoss();
      z.remove("showPhotos");
      t();
      b(Util.c("fragment_show_photos"));
      return;
      label301:
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject1 = localObject2;
        if (!((String)localObject3).equals(""))
        {
          localObject1 = Fragment.instantiate(getActivity(), LiveFeedFragment.class.getName());
          localBundle.putString("pageUrl", str1);
          localBundle.putLong("showId", l1);
          localObject2 = new HashMap();
          ((HashMap)localObject2).put("eVar6", r.category + "|" + e + "|tab|" + str2);
          AnalyticsManager.a(g, Action.j, (HashMap)localObject2);
        }
      }
    }
  }
  
  public void getAllAccessSeasonData()
  {
    new UpsellService().a(g, "ALL_ACCESS_SEASON_DATA", n);
  }
  
  public final void getShowData()
  {
    if (g != null) {
      if (r == null)
      {
        Bundle localBundle = getArguments();
        if (localBundle != null)
        {
          localBundle = localBundle.getBundle("show_item");
          if (localBundle != null) {
            a(localBundle);
          }
        }
      }
      else
      {
        c(r.title);
        new ShowServiceImpl().a(g, String.valueOf(r.showId), K);
      }
    }
  }
  
  public final void h()
  {
    Object localObject2 = null;
    s();
    setVideoShowing(null);
    Object localObject1 = getView();
    Bundle localBundle;
    FragmentTransaction localFragmentTransaction;
    Object localObject3;
    long l1;
    String str1;
    String str2;
    String str3;
    if ((g != null) && (localObject1 != null))
    {
      localBundle = new Bundle();
      localBundle.putParcelable("show", z.getParcelable("show"));
      if (((View)localObject1).findViewById(2131689951) != null)
      {
        localFragmentTransaction = getChildFragmentManager().beginTransaction();
        localObject3 = a("Cast");
        localObject1 = localObject2;
        if (localObject3 != null)
        {
          l1 = ((ShowBlockNavigation)localObject3).getShowId();
          a(z.getBundle("show_item"));
          str1 = ((ShowBlockNavigation)localObject3).getUrl();
          str2 = ((ShowBlockNavigation)localObject3).getLabel();
          str3 = r.category;
          localObject3 = ((ShowBlockNavigation)localObject3).getInBoundDeepLinkUrl();
          new StringBuilder("bb url: ").append(str1).append("id: ").append(l1).append("livefeed: ").append(e).append(str3);
          if ((str1 == null) || (str1.equals(""))) {
            break label293;
          }
          localObject1 = new CustomWebViewFragment();
          localBundle.putString("pageUrl", str1);
        }
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = Fragment.instantiate(g, CastFragment.class.getName());
      }
      ((Fragment)localObject2).setArguments(localBundle);
      localFragmentTransaction.replace(2131689951, (Fragment)localObject2, "fragment_show_cast");
      localFragmentTransaction.commitAllowingStateLoss();
      z.remove("showCast");
      t();
      b(Util.c("fragment_show_cast"));
      return;
      label293:
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject1 = localObject2;
        if (!((String)localObject3).equals(""))
        {
          localObject1 = Fragment.instantiate(getActivity(), LiveFeedFragment.class.getName());
          localBundle.putString("pageUrl", str1);
          localBundle.putLong("showId", l1);
          localObject2 = new HashMap();
          ((HashMap)localObject2).put("eVar6", str3 + "|" + e + "|tab|" + str2);
          AnalyticsManager.a(g, Action.j, (HashMap)localObject2);
        }
      }
    }
  }
  
  public final void i()
  {
    r();
    setVideoShowing(null);
    Object localObject1 = getView();
    Bundle localBundle;
    FragmentTransaction localFragmentTransaction;
    String str1;
    long l1;
    String str2;
    String str3;
    Object localObject2;
    if ((g != null) && (localObject1 != null))
    {
      localBundle = new Bundle();
      localBundle.putParcelable("show", z.getParcelable("show"));
      if (((View)localObject1).findViewById(2131689951) != null)
      {
        localFragmentTransaction = getChildFragmentManager().beginTransaction();
        localObject1 = a("connect");
        if (localObject1 != null)
        {
          a(z.getBundle("show_item"));
          str1 = ((ShowBlockNavigation)localObject1).getLabel();
          l1 = ((ShowBlockNavigation)localObject1).getShowId();
          str2 = r.title;
          str3 = r.category;
          localObject2 = ((ShowBlockNavigation)localObject1).getUrl();
          localObject1 = ((ShowBlockNavigation)localObject1).getInBoundDeepLinkUrl();
          new StringBuilder("bb url: ").append((String)localObject2).append("id: ").append(l1).append("livefeed: ").append(str2).append(str3);
          if ((localObject2 == null) || (((String)localObject2).equals(""))) {
            break label263;
          }
          localObject1 = new CustomWebViewFragment();
          localBundle.putString("pageUrl", (String)localObject2);
        }
      }
    }
    for (;;)
    {
      ((Fragment)localObject1).setArguments(localBundle);
      localFragmentTransaction.replace(2131689951, (Fragment)localObject1, "fragment_show_connect");
      localFragmentTransaction.commitAllowingStateLoss();
      z.remove("showConnect");
      t();
      b(Util.c("fragment_show_connect"));
      return;
      label263:
      if ((localObject1 != null) && (!((String)localObject1).equals("")))
      {
        localObject1 = Fragment.instantiate(getActivity(), LiveFeedFragment.class.getName());
        localBundle.putString("pageUrl", (String)localObject2);
        localBundle.putLong("showId", l1);
        localObject2 = new HashMap();
        ((HashMap)localObject2).put("eVar6", str3 + "|" + str2 + "|tab|" + str1);
        AnalyticsManager.a(g, Action.j, (HashMap)localObject2);
      }
      else
      {
        localObject1 = new CustomWebViewFragment();
        localBundle.putString("pageUrl", "about:blank");
      }
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    setHasOptionsMenu(true);
    q = new LogoKeeper(paramActivity);
    if ((paramActivity instanceof NavigationActivity)) {
      ((NavigationActivity)paramActivity).setDrawerStatusListner(A);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      setShowItem((ShowItem)getArguments().getParcelable("showItem"));
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (x != null)
    {
      paramMenu = paramMenu.add(0, 2131689505, 10, "Edit");
      paramMenu.setShowAsAction(2);
      paramMenu.setIcon(2130837900);
      return;
    }
    paramMenu = paramMenu.add(0, 2131689495, 10, "Edit");
    paramMenu.setShowAsAction(2);
    paramMenu.setIcon(2130837900);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(L);
    return paramLayoutInflater.inflate(2130903180, paramViewGroup, false);
  }
  
  public final void onDestroyView()
  {
    super.onDestroyView();
    t();
    d();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(N);
    }
    AccountUIHelper.b(L);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131689505: 
      paramMenuItem = (Show)z.getParcelable("show");
      a(z.getBundle("show_item"));
      localShowConfig = (ShowConfig)z.getParcelable("showConfig");
      VideoSocialDialog.a(g, paramMenuItem, x, localShowConfig);
      paramMenuItem = new HashMap();
      paramMenuItem.put("Show Title", e);
      AnalyticsManager.c(g, Action.bf, paramMenuItem);
      return true;
    }
    paramMenuItem = (Show)z.getParcelable("show");
    a(z.getBundle("show_item"));
    ShowConfig localShowConfig = (ShowConfig)z.getParcelable("showConfig");
    ShowSocialDialog.a(g, paramMenuItem, localShowConfig);
    paramMenuItem = new HashMap();
    paramMenuItem.put("Show Title", e);
    AnalyticsManager.c(g, Action.bf, paramMenuItem);
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public final void onResume()
  {
    super.onResume();
    AccountUIHelper.i(g);
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      new StringBuilder("afterAllDataLoaded, userStatus : ").append(localObject);
      if (localObject != null) {
        i = ((UserStatus)localObject).getDescription();
      }
    }
    if ((Show)z.getParcelable("show") == null)
    {
      getShowData();
      return;
    }
    if (!z.getBoolean("allDataLoaded"))
    {
      l();
      return;
    }
    n();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putAll(z);
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  public void onStop()
  {
    super.onStop();
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    b();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).a(N);
    }
    if (paramBundle == null)
    {
      paramView = getArguments();
      if (paramView != null) {
        z.putAll(paramView);
      }
      return;
    }
    z = paramBundle;
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if (r != null) {
      paramBundle.putBundle("show_item", r.getBundle());
    }
    super.setArguments(paramBundle);
  }
  
  public void setShowItem(ShowItem paramShowItem)
  {
    r = paramShowItem;
  }
  
  public final void setVideoShowing(VideoData paramVideoData)
  {
    x = paramVideoData;
    j();
  }
  
  public static class NewViewInfo
  {
    public ShowItem a = new ShowItem();
    public ShowConfig b;
    public Show c;
    public Parcelable[] d;
    public Parcelable[] e;
    public Parcelable[] f;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */