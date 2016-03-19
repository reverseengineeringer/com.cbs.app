package com.cbs.app.service;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.service.social.CalendarService;
import com.cbs.app.service.social.CalendarServiceImpl;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.mycbs.MyCBSExporter;
import com.cbs.app.view.fragments.mycbs.MyCBSExporter.ExporterDoneListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.model.rest.ShowAddedEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimeZone;

public class ButtonServiceHelper
{
  static ResponseModelListener a;
  static ResponseModelListener b;
  static ResponseModelListener c;
  static MyCBSExporter.ExporterDoneListener d = new MyCBSExporter.ExporterDoneListener()
  {
    public final void a() {}
    
    public final void a(FavoriteShowList paramAnonymousFavoriteShowList)
    {
      ButtonServiceHelper.k();
      if (paramAnonymousFavoriteShowList != null)
      {
        paramAnonymousFavoriteShowList = paramAnonymousFavoriteShowList.getShowList();
        if (paramAnonymousFavoriteShowList == null) {
          break label143;
        }
        paramAnonymousFavoriteShowList = paramAnonymousFavoriteShowList.iterator();
        do
        {
          if (!paramAnonymousFavoriteShowList.hasNext()) {
            break;
          }
        } while (((FavoriteShow)paramAnonymousFavoriteShowList.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
      }
      label143:
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          ButtonServiceHelper.a(true);
        }
        if (ButtonServiceHelper.h()) {
          if (ButtonServiceHelper.i()) {
            ButtonServiceHelper.a();
          }
        }
        for (;;)
        {
          ButtonServiceHelper.c();
          return;
          if (ButtonServiceHelper.j())
          {
            Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
          }
          else
          {
            ButtonServiceHelper.b();
            continue;
            if (ButtonServiceHelper.l()) {
              if (ButtonServiceHelper.j()) {
                Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
              } else {
                ButtonServiceHelper.b();
              }
            }
          }
        }
      }
    }
  };
  static ResponseModelListener e = new ResponseModelListener()
  {
    public final void a() {}
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          paramAnonymousResponseModel = paramAnonymousResponseModel.getFavshowlist();
          if (paramAnonymousResponseModel == null) {
            break label132;
          }
          paramAnonymousResponseModel = paramAnonymousResponseModel.getShowList().iterator();
          do
          {
            if (!paramAnonymousResponseModel.hasNext()) {
              break;
            }
          } while (((FavoriteShow)paramAnonymousResponseModel.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          ButtonServiceHelper.a(true);
        }
        if (ButtonServiceHelper.h())
        {
          if (ButtonServiceHelper.i()) {
            ButtonServiceHelper.a();
          }
        }
        else {
          ButtonServiceHelper.k();
        }
        for (;;)
        {
          ButtonServiceHelper.c();
          return;
          if (ButtonServiceHelper.j())
          {
            Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
            break;
          }
          ButtonServiceHelper.b();
          break;
          label132:
          new MyCBSService().a(ButtonServiceHelper.g(), "favorite-shows", ButtonServiceHelper.c);
        }
      }
    }
  };
  public static final AccountUIHelper.RefreshAccountListener f = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      AccountUIHelper.setReconcileDialogShowing(false);
      ButtonServiceHelper.b(false);
      if (Util.y(ButtonServiceHelper.g()) != null)
      {
        if (Util.r(ButtonServiceHelper.g())) {
          new MyCBSService().a(ButtonServiceHelper.g(), ButtonServiceHelper.e);
        }
      }
      else {
        return;
      }
      new MyCBSExporter(ButtonServiceHelper.g(), ButtonServiceHelper.d).a();
    }
  };
  private static boolean g = false;
  private static boolean h = false;
  private static boolean i = false;
  private static boolean j = true;
  private static Context k;
  private static Show l;
  private static Button m;
  private static String n = "";
  private static boolean o;
  private static boolean p;
  
  static
  {
    a = new ResponseModelListener()
    {
      public final void a()
      {
        ButtonServiceHelper.a("CBS", "Unable to remove add show at this time, please try again later.");
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof ShowAddedEndpointResponse)))
        {
          ButtonServiceHelper.a(false);
          ButtonServiceHelper.d().setText("Add this show to My CBS");
          paramAnonymousResponseModel = Action.a;
          paramAnonymousResponseModel.setName("MyCBSRemove");
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("events", "event84");
          localHashMap.put("ShowTitle", ButtonServiceHelper.f().getTitle());
          localHashMap.put("showId", Long.valueOf(ButtonServiceHelper.f().getId()));
          localHashMap.put("optionSelected", "Remove from My CBS" + ButtonServiceHelper.e());
          String str = "cbscom:" + ButtonServiceHelper.f().getId() + "|" + ButtonServiceHelper.f().getTitle();
          localHashMap.put("evar_63", str);
          localHashMap.put("prop_63", str);
          AnalyticsManager.a(ButtonServiceHelper.g(), paramAnonymousResponseModel, localHashMap);
          Toast.makeText(ButtonServiceHelper.g(), "Removed", 0).show();
          return;
        }
        ButtonServiceHelper.a("CBS", "Unable to remove add show at this time, please try again later.");
      }
    };
    b = new ResponseModelListener()
    {
      public final void a()
      {
        ButtonServiceHelper.a("CBS", "Unable to add show at this time, please try again later.");
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof ShowAddedEndpointResponse)))
        {
          ButtonServiceHelper.a(true);
          ButtonServiceHelper.d().setText("Remove this show from My CBS");
          paramAnonymousResponseModel = Action.a;
          paramAnonymousResponseModel.setName("MyCBSAdd");
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("from", ButtonServiceHelper.e());
          localHashMap.put("events", "event83");
          localHashMap.put("ShowTitle", ButtonServiceHelper.f().getTitle());
          localHashMap.put("showId", Long.valueOf(ButtonServiceHelper.f().getId()));
          localHashMap.put("optionSelected", "Add to My CBS" + ButtonServiceHelper.e());
          String str = "cbscom:" + ButtonServiceHelper.f().getId() + "|" + ButtonServiceHelper.f().getTitle();
          localHashMap.put("evar_63", str);
          localHashMap.put("prop_63", str);
          AnalyticsManager.a(ButtonServiceHelper.g(), paramAnonymousResponseModel, localHashMap);
          Toast.makeText(ButtonServiceHelper.g(), "Added", 0).show();
          return;
        }
        ButtonServiceHelper.a("CBS", "Unable to add show at this time, please try again later.");
      }
    };
    o = false;
    c = new ResponseModelListener()
    {
      public final void a() {}
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
        {
          paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
          if (paramAnonymousResponseModel.isSuccess())
          {
            paramAnonymousResponseModel = paramAnonymousResponseModel.getFavshowlist();
            if (paramAnonymousResponseModel != null)
            {
              paramAnonymousResponseModel = paramAnonymousResponseModel.getShowList();
              if (paramAnonymousResponseModel == null) {
                break label147;
              }
              Preferences.a(ButtonServiceHelper.g(), "mycbs_show_count", paramAnonymousResponseModel.size());
              paramAnonymousResponseModel = paramAnonymousResponseModel.iterator();
              do
              {
                if (!paramAnonymousResponseModel.hasNext()) {
                  break;
                }
              } while (((FavoriteShow)paramAnonymousResponseModel.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
            }
          }
        }
        label120:
        label147:
        for (int i = 1;; i = 0)
        {
          if (i != 0) {
            ButtonServiceHelper.a(true);
          }
          if (ButtonServiceHelper.h())
          {
            if (!ButtonServiceHelper.i()) {
              break label120;
            }
            ButtonServiceHelper.a();
          }
          for (;;)
          {
            ButtonServiceHelper.k();
            return;
            if (ButtonServiceHelper.j()) {
              Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
            } else {
              ButtonServiceHelper.b();
            }
          }
        }
      }
    };
    p = false;
  }
  
  public static void a()
  {
    new MyCBSService().b(k, "favorite-shows", Long.valueOf(l.getShowId()).toString(), a);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(k, 2131427561));
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
  
  public static boolean a(View paramView, final Context paramContext, Episode paramEpisode, String paramString)
  {
    n = paramString;
    if (paramView != null)
    {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (a != null)
          {
            paramAnonymousView = new CalendarServiceImpl();
            paramAnonymousView.setContext(paramContext);
          }
          for (;;)
          {
            try
            {
              l2 = a.getAirDate_sec() * 1000L;
              long l3 = Long.parseLong(a.getDuration());
              i = TimeZone.getDefault().getRawOffset();
              if (i <= -28800000L) {
                continue;
              }
              l1 = l2 + 3600000L;
              paramAnonymousView.a(a.getShowTitle(), l1, l3 * 60000L + l1, a.getUrllink());
            }
            catch (NumberFormatException paramAnonymousView)
            {
              long l2;
              int i;
              long l1;
              HashMap localHashMap;
              String str;
              continue;
            }
            paramAnonymousView = Action.ay;
            localHashMap = new HashMap();
            localHashMap.put("events", "event19");
            localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
            localHashMap.put("ShowTitle", a.getShowTitle());
            localHashMap.put("showId", a.getShow_id());
            str = "cbscom:" + a.getShow_id() + "|" + a.getShowTitle();
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
            AnalyticsManager.a(paramContext, paramAnonymousView, localHashMap);
            return;
            l1 = l2;
            if (i > -32400000L) {
              l1 = l2 + 10800000L;
            }
          }
        }
      });
      return true;
    }
    return false;
  }
  
  public static boolean a(View paramView, Context paramContext, Show paramShow, String paramString)
  {
    return b(paramView, paramContext, paramShow, paramString);
  }
  
  public static boolean a(View paramView, Context paramContext, final String paramString1, final long paramLong, String paramString2, final Show paramShow)
  {
    n = paramString2;
    if (paramView != null)
    {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new FacebookServiceImplV2(a).a(paramShow);
          paramAnonymousView = Action.aQ;
          HashMap localHashMap = new HashMap();
          localHashMap.put("events", "event19, event10");
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("optionSelected", "Share via FB" + ButtonServiceHelper.e());
          if (paramString1 != null)
          {
            localHashMap.put("ShowTitle", paramString1);
            String str = "cbscom:" + paramLong + "|" + paramString1;
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
          }
          if (paramLong != 0L) {
            localHashMap.put("showId", Long.valueOf(paramLong));
          }
          AnalyticsManager.a(a, paramAnonymousView, localHashMap);
        }
      });
      return true;
    }
    return false;
  }
  
  public static boolean a(View paramView, final Context paramContext, String paramString1, final String paramString2, final long paramLong, String paramString3)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString1 != null)
    {
      bool1 = bool2;
      if (!paramString1.equals(""))
      {
        n = paramString3;
        bool1 = bool2;
        if (paramView != null)
        {
          paramView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (a != null)
              {
                paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(a));
                if (Util.a(paramContext, paramAnonymousView)) {
                  paramContext.startActivity(paramAnonymousView);
                }
                paramAnonymousView = Action.aD;
                HashMap localHashMap = new HashMap();
                localHashMap.put("events", "event19, event10");
                localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
                if (paramString2 != null)
                {
                  localHashMap.put("ShowTitle", paramString2);
                  localHashMap.put("optionSelected", "Share via FB" + ButtonServiceHelper.e());
                  String str = "cbscom:" + paramLong + "|" + paramString2;
                  localHashMap.put("evar_63", str);
                  localHashMap.put("prop_63", str);
                }
                if (paramLong != 0L) {
                  localHashMap.put("showId", Long.valueOf(paramLong));
                }
                AnalyticsManager.a(paramContext, paramAnonymousView, localHashMap);
              }
            }
          });
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean a(View paramView, Context paramContext, final String paramString1, final String paramString2, final String paramString3, final long paramLong, String paramString4)
  {
    n = paramString4;
    if (paramView != null)
    {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new EmailServiceImpl();
          paramAnonymousView.setContext(a);
          paramAnonymousView.a(paramString1, paramString2);
          paramAnonymousView = Action.aE;
          HashMap localHashMap = new HashMap();
          localHashMap.put("events", "event19, event10");
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("optionSelected", "Share via email" + ButtonServiceHelper.e());
          if (paramString3 != null)
          {
            localHashMap.put("ShowTitle", paramString3);
            String str = "cbscom:" + paramLong + "|" + paramString3;
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
          }
          if (paramLong != 0L) {
            localHashMap.put("showId", Long.valueOf(paramLong));
          }
          AnalyticsManager.a(a, paramAnonymousView, localHashMap);
        }
      });
      return true;
    }
    return false;
  }
  
  public static void b()
  {
    new MyCBSService().a(k, "favorite-shows", Long.valueOf(l.getShowId()).toString(), b);
  }
  
  public static boolean b(View paramView, Context paramContext, Show paramShow, String paramString)
  {
    if (paramShow.getCategory().equals("Movies & Specials")) {
      paramView.setVisibility(8);
    }
    if (paramContext != null)
    {
      m = (Button)paramView;
      k = paramContext;
      l = paramShow;
      n = paramString;
      g = false;
      h = false;
      i = false;
      if (Util.u(k) == null) {
        break label115;
      }
      j = false;
      if (Util.r(k)) {
        new MyCBSService().a(k, e);
      }
    }
    else
    {
      return false;
    }
    p = false;
    new MyCBSExporter(k, d).a();
    return false;
    label115:
    j = true;
    if (l.getCategory().equals("Movies & Specials"))
    {
      m.setVisibility(8);
      return false;
    }
    c();
    return false;
  }
  
  public static boolean b(View paramView, Context paramContext, final String paramString1, final String paramString2, final long paramLong, String paramString3)
  {
    n = paramString3;
    if (paramView != null)
    {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new Twitter(a).a(new TweetOperation(paramString1));
          paramAnonymousView = Action.aC;
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("events", "event19, event10");
          localHashMap.put("optionSelected", "Share via Twitter" + ButtonServiceHelper.e());
          if (paramString2 != null)
          {
            localHashMap.put("ShowTitle", paramString2);
            String str = "cbscom:" + paramLong + "|" + paramString2;
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
          }
          if (paramLong != 0L) {
            localHashMap.put("showId", Long.valueOf(paramLong));
          }
          AnalyticsManager.a(a, paramAnonymousView, localHashMap);
        }
      });
      return true;
    }
    return false;
  }
  
  public static void c()
  {
    boolean bool;
    if (!l.getCategory().equals("Movies & Specials"))
    {
      if (Util.u(k) != null) {
        break label165;
      }
      if ((Util.r(k)) || (l == null)) {
        break label242;
      }
      MyShowDataSource localMyShowDataSource = new MyShowDataSource(k);
      localMyShowDataSource.a();
      bool = localMyShowDataSource.a(l.getShowId());
      localMyShowDataSource.b();
    }
    for (;;)
    {
      if (bool)
      {
        o = true;
        m.setText("Remove this show from My CBS");
        if (l.getCategory().equals("Movies & Specials")) {
          break label231;
        }
        m.setVisibility(0);
      }
      for (;;)
      {
        if (!l.getCategory().equals("Movies & Specials")) {
          m.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (Util.y(ButtonServiceHelper.g()) != null)
              {
                ButtonServiceHelper.c(false);
                if (Util.r(ButtonServiceHelper.g())) {
                  if (ButtonServiceHelper.m()) {
                    if (!ButtonServiceHelper.j()) {
                      if (!ButtonServiceHelper.f().getCategory().equals("Movies & Specials")) {
                        ButtonServiceHelper.b();
                      }
                    }
                  }
                }
              }
              for (;;)
              {
                return;
                if (!ButtonServiceHelper.f().getCategory().equals("Movies & Specials"))
                {
                  ButtonServiceHelper.a();
                  return;
                  new MyCBSService().a(ButtonServiceHelper.g(), ButtonServiceHelper.e);
                  return;
                  paramAnonymousView = new MyShowDataSource(ButtonServiceHelper.g());
                  paramAnonymousView.a();
                  paramAnonymousView.b();
                  ButtonServiceHelper.n();
                  new MyCBSExporter(ButtonServiceHelper.g(), ButtonServiceHelper.d).a();
                  return;
                  ButtonServiceHelper.c(true);
                  if ((ButtonServiceHelper.g() == null) || (ButtonServiceHelper.o())) {
                    break;
                  }
                  AccountUIHelper.a(ButtonServiceHelper.f);
                  AccountUIHelper.setFrom(ButtonServiceHelper.e());
                  if (((ButtonServiceHelper.g() instanceof NavigationActivity)) && (!((NavigationActivity)ButtonServiceHelper.g()).isFinishing())) {}
                  for (int i = 1; i != 0; i = 0)
                  {
                    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                    SVODPopupHelper.setWeWantToSeeVideo(null);
                    SVODPopupHelper.setWeWantToSeeShow(null);
                    AccountUIHelper.b(ButtonServiceHelper.g());
                    ButtonServiceHelper.b(true);
                    return;
                  }
                }
              }
            }
          });
        }
        return;
        m.setText("Add this show to My CBS");
        if (!l.getCategory().equals("Movies & Specials"))
        {
          m.setVisibility(0);
          continue;
          label165:
          if (g)
          {
            if (l.getCategory().equals("Movies & Specials")) {
              m.setVisibility(8);
            }
            for (;;)
            {
              if (!i) {
                break label220;
              }
              m.setText("Remove this show from My CBS");
              break;
              m.setVisibility(0);
            }
            label220:
            m.setText("Add this show to My CBS");
            continue;
          }
        }
        label231:
        m.setVisibility(8);
      }
      label242:
      bool = false;
    }
  }
  
  public static boolean c(View paramView, Context paramContext, final String paramString1, final String paramString2, final long paramLong, String paramString3)
  {
    n = paramString3;
    if (paramView != null)
    {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new Twitter(a).b(paramString1);
          paramAnonymousView = Action.aC;
          HashMap localHashMap = new HashMap();
          localHashMap.put("events", "event19, event10");
          localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
          localHashMap.put("optionSelected", "Share via Twitter" + ButtonServiceHelper.e());
          if (paramString2 != null)
          {
            localHashMap.put("ShowTitle", paramString2);
            String str = "cbscom:" + paramLong + "|" + paramString2;
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
          }
          if (paramLong != 0L) {
            localHashMap.put("showId", Long.valueOf(paramLong));
          }
          AnalyticsManager.a(a, paramAnonymousView, localHashMap);
        }
      });
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */