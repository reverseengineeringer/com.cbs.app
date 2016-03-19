package com.cbs.app.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.service.social.CalendarService;
import com.cbs.app.service.social.CalendarServiceImpl;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;
import java.util.List;

public class VideoSocialDialog
{
  private static final String a = VideoSocialDialog.class.getSimpleName();
  private static Dialog b;
  
  public static void a(Context paramContext, final Show paramShow, final VideoData paramVideoData, final ShowConfig paramShowConfig)
  {
    if ((paramShow != null) && (paramVideoData != null))
    {
      b = new Dialog(paramContext);
      final String str = paramShow.getTitle();
      b.requestWindowFeature(1);
      b.setContentView(2130903125);
      ((TextView)b.findViewById(2131689840)).setText("Episode Options");
      b.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public final void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          paramAnonymousDialogInterface.dismiss();
          AccountUIHelper.b(ButtonServiceHelper.f);
        }
      });
      Button localButton = (Button)b.findViewById(2131689853);
      localButton.setText("Share on Facebook");
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new FacebookServiceImplV2(a).a(paramVideoData);
          HashMap localHashMap = new HashMap();
          String str;
          if (paramVideoData.getFullEpisode())
          {
            paramAnonymousView = Action.aQ;
            localHashMap.put("EpisodeTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            localHashMap.put("evar_64", str);
            localHashMap.put("prop_64", str);
          }
          for (;;)
          {
            localHashMap.put("appState", "cbscom:Comments Page");
            localHashMap.put("ShowTitle", paramShow.getTitle());
            localHashMap.put("showId", Long.valueOf(paramShow.getId()));
            localHashMap.put("EpisodeTitle", VideoUtil.b(paramVideoData));
            if (paramVideoData.getPid() != null) {
              localHashMap.put("VideoID", paramVideoData.getPid());
            }
            localHashMap.put("ContentID", paramVideoData.getCid());
            str = "cbscom:" + paramShow.getId() + "|" + paramShow.getTitle();
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
            if (paramVideoData.getPid() != null)
            {
              str = "cbscom:" + paramVideoData.getPid();
              localHashMap.put("evar_31", str);
              localHashMap.put("prop_31", str);
            }
            localHashMap.put("events", "event19, event10");
            AnalyticsManager.a(a, paramAnonymousView, localHashMap);
            return;
            paramAnonymousView = Action.aN;
            localHashMap.put("ClipTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            localHashMap.put("evar_62", str);
            localHashMap.put("prop_62", str);
          }
        }
      });
      localButton = (Button)b.findViewById(2131689852);
      localButton.setText("Share on Twitter");
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new Twitter(a).a(new TweetOperation("Check out " + paramShow.getTitle() + " \"" + VideoUtil.b(paramVideoData) + "\" at " + paramVideoData.getUrl()));
          HashMap localHashMap = new HashMap();
          String str;
          if (paramVideoData.getFullEpisode())
          {
            paramAnonymousView = Action.aP;
            localHashMap.put("EpisodeTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            localHashMap.put("evar_64", str);
            localHashMap.put("prop_64", str);
          }
          for (;;)
          {
            localHashMap.put("appState", "cbscom:Comments Page");
            localHashMap.put("ShowTitle", paramShow.getTitle());
            localHashMap.put("showId", Long.valueOf(paramShow.getId()));
            localHashMap.put("EpisodeTitle", VideoUtil.b(paramVideoData));
            if (paramVideoData.getPid() != null) {
              localHashMap.put("VideoID", paramVideoData.getPid());
            }
            localHashMap.put("ContentID", paramVideoData.getCid());
            str = "cbscom:" + paramShow.getId() + "|" + paramShow.getTitle();
            localHashMap.put("evar_63", str);
            localHashMap.put("prop_63", str);
            if (paramVideoData.getPid() != null)
            {
              str = "cbscom:" + paramVideoData.getPid();
              localHashMap.put("evar_31", str);
              localHashMap.put("prop_31", str);
            }
            localHashMap.put("events", "event19, event10");
            AnalyticsManager.a(a, paramAnonymousView, localHashMap);
            return;
            paramAnonymousView = Action.aM;
            localHashMap.put("ClipTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            localHashMap.put("evar_62", str);
            localHashMap.put("prop_62", str);
          }
        }
      });
      ((Button)b.findViewById(2131689854)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new EmailServiceImpl();
          paramAnonymousView.setContext(a);
          Object localObject = Util.a(paramShow, paramShowConfig);
          paramAnonymousView.a(str, (String)localObject);
          localObject = new HashMap();
          String str;
          if (paramVideoData.getFullEpisode())
          {
            paramAnonymousView = Action.aR;
            ((HashMap)localObject).put("EpisodeTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            ((HashMap)localObject).put("evar_64", str);
            ((HashMap)localObject).put("prop_64", str);
          }
          for (;;)
          {
            ((HashMap)localObject).put("appState", "cbscom:Comments Page");
            ((HashMap)localObject).put("ShowTitle", paramShow.getTitle());
            ((HashMap)localObject).put("showId", Long.valueOf(paramShow.getId()));
            if (paramVideoData.getPid() != null) {
              ((HashMap)localObject).put("VideoID", paramVideoData.getPid());
            }
            ((HashMap)localObject).put("ContentID", paramVideoData.getCid());
            str = "cbscom:" + paramShow.getId() + "|" + paramShow.getTitle();
            ((HashMap)localObject).put("evar_63", str);
            ((HashMap)localObject).put("prop_63", str);
            if (paramVideoData.getPid() != null)
            {
              str = "cbscom:" + paramVideoData.getPid();
              ((HashMap)localObject).put("evar_31", str);
              ((HashMap)localObject).put("prop_31", str);
            }
            ((HashMap)localObject).put("events", "event19, event10");
            AnalyticsManager.a(a, paramAnonymousView, (HashMap)localObject);
            return;
            paramAnonymousView = Action.aO;
            ((HashMap)localObject).put("ClipTitle", VideoUtil.b(paramVideoData));
            str = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
            ((HashMap)localObject).put("evar_62", str);
            ((HashMap)localObject).put("prop_62", str);
          }
        }
      });
      ButtonServiceHelper.a(b.findViewById(2131689855), paramContext, paramShow, "Show Page");
      ((Button)b.findViewById(2131689856)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Object localObject2 = (Activity)a;
          Object localObject1 = null;
          paramAnonymousView = (View)localObject1;
          if (localObject2 != null)
          {
            paramAnonymousView = (View)localObject1;
            if ((localObject2 instanceof NavigationActivity)) {
              paramAnonymousView = ((NavigationActivity)localObject2).a(paramShow.getId());
            }
          }
          if ((paramAnonymousView != null) && (paramAnonymousView.size() > 0))
          {
            paramAnonymousView = (Episode)paramAnonymousView.get(0);
            if (paramAnonymousView != null)
            {
              localObject1 = new CalendarServiceImpl();
              ((CalendarService)localObject1).setContext((Context)localObject2);
            }
          }
          try
          {
            localObject2 = str;
            long l1 = paramAnonymousView.getAirDate_sec();
            long l2 = paramAnonymousView.getAirDate_sec();
            ((CalendarService)localObject1).a((String)localObject2, l1 * 1000L, Long.parseLong(paramAnonymousView.getDuration()) * 60000L + l2 * 1000L);
            paramAnonymousView = Action.ay;
            localObject1 = new HashMap();
            if (paramVideoData.getFullEpisode())
            {
              localObject2 = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
              ((HashMap)localObject1).put("evar_64", localObject2);
              ((HashMap)localObject1).put("prop_64", localObject2);
              ((HashMap)localObject1).put("ShowTitle", paramShow.getTitle());
              ((HashMap)localObject1).put("showId", Long.valueOf(paramShow.getId()));
              ((HashMap)localObject1).put("EpisodeTitle", VideoUtil.b(paramVideoData));
              if (paramVideoData.getPid() != null) {
                ((HashMap)localObject1).put("VideoID", paramVideoData.getPid());
              }
              ((HashMap)localObject1).put("ContentID", paramVideoData.getCid());
              localObject2 = "cbscom:" + paramShow.getId() + "|" + paramShow.getTitle();
              ((HashMap)localObject1).put("evar_63", localObject2);
              ((HashMap)localObject1).put("prop_63", localObject2);
              ((HashMap)localObject1).put("events", "event19");
              ((HashMap)localObject1).put("appState", "cbscom:Comments Page");
              AnalyticsManager.a(a, paramAnonymousView, (HashMap)localObject1);
              return;
            }
          }
          catch (NumberFormatException paramAnonymousView)
          {
            for (;;)
            {
              Log.e(VideoSocialDialog.a(), "nfe:" + paramAnonymousView.getLocalizedMessage());
              continue;
              localObject2 = "cbscom:" + paramVideoData.getCid() + "|" + VideoUtil.b(paramVideoData);
              ((HashMap)localObject1).put("evar_62", localObject2);
              ((HashMap)localObject1).put("prop_62", localObject2);
            }
          }
        }
      });
      ((Button)b.findViewById(2131689841)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          VideoSocialDialog.b().dismiss();
          AccountUIHelper.b(ButtonServiceHelper.f);
        }
      });
      b.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */