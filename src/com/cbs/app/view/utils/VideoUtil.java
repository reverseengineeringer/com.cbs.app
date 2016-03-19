package com.cbs.app.view.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.widget.Button;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.analytics.AnalyticsManager.AgeGroupAndGender;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.cast.CBSCaptionsPreferenceActivity;
import com.cbs.app.cast.CBSTracksPreferenceManager;
import com.cbs.app.cast.CBSVideoCastControllerActivity;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.MyCBSDBService;
import com.cbs.app.service.MyCBSDBServiceImpl;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.NielsenDialogHelper;
import com.cbs.app.view.NielsenDialogHelper.VideoClickListener;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.ThumbNailView;
import com.cbs.app.view.UnableToConnectDialogHelper;
import com.cbs.app.view.fragments.ResumeDialogFragment;
import com.cbs.app.view.fragments.ResumeDialogFragment.ResumeDialogListener;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.Thumbnail;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.VideoStreamsEndpoint;
import com.cbs.app.view.model.db.MyRecentVideo;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.PlayerActivityV2;
import com.google.android.gms.cast.d.a;
import com.google.android.gms.cast.e;
import com.google.android.gms.cast.i;
import com.google.android.gms.cast.j;
import com.google.android.gms.common.images.WebImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class VideoUtil
{
  public static String a = null;
  private static String b = null;
  
  private static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "3F";
    case 100: 
      return "FF";
    case 75: 
      return "BF";
    }
    return "80";
  }
  
  private static String a(String paramString)
  {
    if (paramString.equals("16777215")) {
      return "FFFFFF";
    }
    if (paramString.equals("16711680")) {
      return "FF0000";
    }
    if (paramString.equals("65280")) {
      return "00FF00";
    }
    if (paramString.equals("16776960")) {
      return "0000FF";
    }
    if (paramString.equals("12277397")) {
      return "FFFF00";
    }
    if (paramString.equals("558497")) {
      return "FF00FF";
    }
    return "000000";
  }
  
  public static List<VideoData> a(List<VideoData> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        VideoData localVideoData = (VideoData)paramList.next();
        String str = localVideoData.getStatus();
        if ((str != null) && ((str.equals("AVAILABLE")) || (str.equals("PREMIUM")) || (str.equals("DELAYED")))) {
          localArrayList.add(localVideoData);
        }
      }
    }
    return localArrayList;
  }
  
  public static void a(Activity paramActivity)
  {
    if (paramActivity != null)
    {
      if ((Util.H(paramActivity)) && (com.google.android.libraries.cast.companionlibrary.a.d.a)) {
        paramActivity.startActivity(new Intent("android.settings.CAPTIONING_SETTINGS"));
      }
    }
    else {
      return;
    }
    paramActivity.startActivity(new Intent(paramActivity, CBSCaptionsPreferenceActivity.class));
  }
  
  public static void a(Context paramContext)
  {
    com.google.android.libraries.cast.companionlibrary.cast.c localc = MainApplication.getVideoCastManager();
    Object localObject = localc.F();
    String str;
    if (localObject != null)
    {
      localObject = ((i)localObject).d();
      if ((localObject != null) && (((com.google.android.gms.cast.d)localObject).b() == 1)) {
        str = ((com.google.android.gms.cast.d)localObject).a();
      }
    }
    try
    {
      long l1 = localc.O();
      long l2 = ((com.google.android.gms.cast.d)localObject).e();
      new StringBuilder("duration: ").append(l2).append(" currentPos: ").append(l1);
      if (l1 < l2 - 30000L)
      {
        new StringBuilder("local resume saving time: ").append(str).append(" pos: ").append(l1);
        new MyCBSDBServiceImpl().a(paramContext, str, l1);
      }
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("VideoUtil", "Failed to get current media position", paramContext);
    }
  }
  
  private static void a(Context paramContext, Bundle paramBundle, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, CBSVideoCastControllerActivity.class);
    localIntent.putExtra("media", paramBundle);
    localIntent.putExtra("startPoint", paramInt);
    localIntent.putExtra("shouldStart", true);
    com.google.android.libraries.cast.companionlibrary.cast.c.B().y().a("ccl-start-cast-activity", Boolean.valueOf(true));
    paramContext.startActivity(localIntent);
  }
  
  public static void a(Context paramContext, ThumbNailView paramThumbNailView, VideoData paramVideoData)
  {
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      if (localObject == null) {}
    }
    for (int i = ((UserStatus)localObject).getType();; i = 0)
    {
      if ((!Util.G(paramContext)) && ((i == 0) || (i == 1) || (i == 3) || (i == 4)) && (paramVideoData.getFullEpisode()))
      {
        if (c(paramVideoData))
        {
          paramThumbNailView.setFlagVisibility(2);
          return;
        }
        paramThumbNailView.setFlagVisibility(1);
        return;
      }
      paramThumbNailView.setFlagVisibility(0);
      return;
    }
  }
  
  public static void a(Context paramContext, VideoData paramVideoData)
  {
    CBSPlayer.c(paramContext);
    if (Util.H(paramContext)) {}
    for (boolean bool = MainApplication.getVideoCastManager().j();; bool = false)
    {
      if (bool)
      {
        a(paramContext, paramVideoData, -1L, false);
        return;
      }
      Intent localIntent = new Intent(paramContext, PlayerActivityV2.class);
      localIntent.putExtra("videoData", paramVideoData);
      localIntent.putExtra("EXTRA_DISABLE_FULLSCREEN_BUTTON", true);
      com.cbs.app.GlobalConstants.c = true;
      paramContext.startActivity(localIntent);
      return;
    }
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, long paramLong, boolean paramBoolean)
  {
    if (paramVideoData.getCbsShowId() == 61456231L)
    {
      if (((paramContext instanceof Activity)) && (!((Activity)paramContext).isFinishing()))
      {
        paramContext = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131427561));
        paramContext.setMessage("This show is not available for casting.").setTitle("CBS").setNegativeButton("Ok", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if ((a == null) || (!a.contains("captions"))) {
              paramAnonymousDialogInterface.cancel();
            }
          }
        });
        paramContext = paramContext.create();
        paramContext.setCancelable(false);
        paramContext.show();
      }
      return;
    }
    a(paramContext);
    new MyCBSDBServiceImpl().a(paramContext, paramVideoData.getCbsShowId(), paramVideoData.getCid(), new Date());
    a = paramVideoData.getCid();
    e locale = new e(1);
    locale.a("com.google.android.gms.cast.metadata.TITLE", paramVideoData.getSeriesTitle());
    locale.a("com.google.android.gms.cast.metadata.STUDIO", paramVideoData.getDescription());
    locale.a("com.google.android.gms.cast.metadata.SUBTITLE", b(paramVideoData));
    Object localObject4 = d(paramVideoData);
    Object localObject3 = ImageHelper.a(d(paramVideoData), 420);
    Object localObject1 = new WebImage(Uri.parse(ImageHelper.a("videos", (String)localObject4)));
    localObject4 = new WebImage(Uri.parse((String)localObject4));
    localObject3 = new WebImage(Uri.parse((String)localObject3));
    locale.a((WebImage)localObject1);
    locale.a((WebImage)localObject4);
    locale.a((WebImage)localObject3);
    localObject3 = paramVideoData.getCid();
    boolean bool = Preferences.a(paramContext, "use_cc_vod_override", false);
    paramVideoData = Preferences.b(paramContext, "cc_vod_override", "ktvq5uy60wOw7GO6OoOYk2Cdd2YpS_EH");
    if (bool) {
      localObject3 = paramVideoData;
    }
    for (;;)
    {
      paramVideoData = AnalyticsManager.c(paramContext);
      Object localObject5 = null;
      localObject4 = null;
      if (paramVideoData != null)
      {
        localObject5 = paramVideoData.getAgeGroup();
        localObject4 = paramVideoData.getGender();
      }
      Object localObject6 = Util.a(AuthStatusManager.getUserAuthStatus());
      paramVideoData = null;
      if (MVPDController.getInstance().i())
      {
        localObject1 = MVPDController.getInstance().getAuthZToken();
        if (localObject1 != null) {
          paramVideoData = JSONObject.quote(((com.adobe.adobepass.accessenabler.a.b)localObject1).d());
        }
        localObject1 = MVPDController.getInstance().getSelectedMvpdConfig();
        if (localObject1 != null) {
          localObject1 = ((MVPDConfig)localObject1).getAdobeId();
        }
      }
      for (;;)
      {
        String str = Util.y(paramContext);
        localObject6 = new StringBuilder("{\n   \"user_subscription_level\": ").append("\"" + (String)localObject6 + "\"").append(",\n   \"age_group\": ");
        if (localObject5 == null)
        {
          localObject5 = "null";
          localObject5 = ((StringBuilder)localObject6).append((String)localObject5).append(",\n   \"gender\": ");
          if (localObject4 != null) {
            break label727;
          }
          localObject4 = "null";
          label473:
          localObject5 = ((StringBuilder)localObject5).append((String)localObject4).append(",\n    \"cast_resume\": ").append(paramBoolean).append(",\n   \"cbs_com_cookie\": ");
          if (str != null) {
            break label756;
          }
          localObject4 = "null";
          label509:
          localObject4 = ((StringBuilder)localObject5).append((String)localObject4).append(",\n   \"mvpd\": ");
          if (localObject1 != null) {
            break label785;
          }
          localObject1 = "null";
          label534:
          localObject4 = ((StringBuilder)localObject4).append((String)localObject1).append(",\n   \"mvpd_token\": ");
          localObject1 = paramVideoData;
          if (paramVideoData == null) {
            localObject1 = "null";
          }
          localObject1 = ((StringBuilder)localObject4).append((String)localObject1).append(",\n   \"sender_component_id\": ");
          if (CBSPlayer.e != null) {
            break label814;
          }
          paramVideoData = "null";
          label586:
          localObject1 = ((StringBuilder)localObject1).append(paramVideoData).append(",\n   \"sender\": \"");
          if (!Util.h(paramContext)) {
            break label843;
          }
        }
        label727:
        label756:
        label785:
        label814:
        label843:
        for (paramVideoData = "android-tablet-app";; paramVideoData = "android-phone-app")
        {
          localObject1 = paramVideoData + "\"\n}";
          paramVideoData = new JSONObject();
          try
          {
            localObject1 = new JSONObject((String)localObject1);
            paramVideoData = (VideoData)localObject1;
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              localJSONException.printStackTrace();
            }
          }
          a(paramContext, com.google.android.libraries.cast.companionlibrary.a.d.b(new d.a((String)localObject3).a(1).a("application/x-mpegURL").a(paramVideoData).a(locale).a(b(paramContext)).a()), (int)paramLong);
          return;
          localObject5 = "\"" + (String)localObject5 + "\"";
          break;
          localObject4 = "\"" + (String)localObject4 + "\"";
          break label473;
          localObject4 = "\"" + str + "\"";
          break label509;
          localObject1 = "\"" + (String)localObject1 + "\"";
          break label534;
          paramVideoData = "\"" + CBSPlayer.e + "\"";
          break label586;
        }
        Object localObject2 = null;
        continue;
        paramVideoData = null;
        localObject2 = null;
      }
    }
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem)
  {
    a(paramContext, paramVideoData, paramShowItem, new PlayVideoListener()
    {
      public final void a(VideoData paramAnonymousVideoData, ShowItem paramAnonymousShowItem, int paramAnonymousInt, long paramAnonymousLong)
      {
        VideoUtil.a(a, paramAnonymousVideoData, paramAnonymousShowItem, paramAnonymousInt, paramAnonymousLong);
      }
    });
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, int paramInt, long paramLong)
  {
    if (Util.H(paramContext)) {}
    for (boolean bool = MainApplication.getVideoCastManager().j();; bool = false)
    {
      if (bool)
      {
        a(paramContext, paramVideoData, paramLong, false);
        paramShowItem = Action.bY;
        localObject = new HashMap();
        ((HashMap)localObject).put("events", "event91");
        ((HashMap)localObject).put("appState", paramShowItem.getAppState());
        ((HashMap)localObject).put("ChromecastVideoTitle", b(paramVideoData));
        AnalyticsManager.a(paramContext, paramShowItem, (HashMap)localObject);
      }
      do
      {
        return;
        if (Util.e(paramContext))
        {
          paramShowItem = new Intent(paramContext, PlayerActivityV2.class);
          paramShowItem.putExtra("videoData", paramVideoData);
          if ((paramInt != 0) && (paramLong > 0L))
          {
            paramShowItem.putExtra("resumeMode", paramInt);
            paramShowItem.putExtra("resumeTime", paramLong);
          }
          paramContext.startActivity(paramShowItem);
          return;
        }
        new StringBuilder("switchToShowFragment() called with: context = [").append(paramContext).append("], videoData = [").append(paramVideoData).append("], inShowItem = [").append(paramShowItem).append("], resumeMode = [").append(paramInt).append("], resumeTime = [").append(paramLong).append("]");
        localObject = (AppCompatActivity)paramContext;
      } while ((localObject == null) || (((AppCompatActivity)localObject).isFinishing()));
      if ((localObject instanceof NavigationActivity))
      {
        ((NavigationActivity)localObject).a(paramShowItem, paramVideoData, paramInt, paramLong);
        return;
      }
      Object localObject = ((AppCompatActivity)localObject).getSupportFragmentManager().beginTransaction();
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("selectedVideo", paramVideoData);
      if ((paramInt != 0) && (paramLong > 0L))
      {
        localBundle.putInt("resumeMode", paramInt);
        localBundle.putLong("resumeTime", paramLong);
      }
      paramContext = (ShowFragmentV2)Fragment.instantiate(paramContext, ShowFragmentV2.class.getName());
      paramContext.setShowItem(paramShowItem);
      paramContext.setArguments(localBundle);
      ((FragmentTransaction)localObject).replace(2131690172, paramContext, "fragment_show_home");
      ((FragmentTransaction)localObject).commitAllowingStateLoss();
      return;
    }
  }
  
  public static void a(Context paramContext, final VideoData paramVideoData, final ShowItem paramShowItem, final long paramLong, PlayVideoListener paramPlayVideoListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing())) {
      return;
    }
    ResumeDialogFragment localResumeDialogFragment = new ResumeDialogFragment();
    localResumeDialogFragment.setVideoData(paramVideoData);
    localResumeDialogFragment.setListener(new ResumeDialogFragment.ResumeDialogListener()
    {
      public final void a()
      {
        a.a(paramVideoData, paramShowItem, d, paramLong);
      }
      
      public final void b()
      {
        a.a(paramVideoData, paramShowItem, 0, -1L);
      }
    });
    localResumeDialogFragment.show(((Activity)paramContext).getFragmentManager(), "VideoUtil");
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, PlayVideoListener paramPlayVideoListener)
  {
    boolean bool = false;
    int i = 0;
    if (Preferences.c(paramContext))
    {
      NielsenDialogHelper.setVideoWeWantedToSee(paramVideoData);
      NielsenDialogHelper.setShowWeWantToSee(paramShowItem);
      NielsenDialogHelper.a(paramContext, new a(paramContext));
    }
    do
    {
      return;
      String str = null;
      if (Util.H(paramContext)) {
        str = getCCContentId();
      }
      if ((str == null) || (!str.equals(paramVideoData.getCid())))
      {
        if (c(paramVideoData))
        {
          d(paramContext, paramVideoData, paramShowItem, paramPlayVideoListener);
          return;
        }
        if (getUserType() == 3) {
          i = 1;
        }
        if (i != 0)
        {
          SVODPopupHelper.a(paramContext, "Homescreen");
          return;
        }
        if (Util.G(paramContext))
        {
          SVODPopupHelper.a(paramContext);
          return;
        }
        SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
        SVODPopupHelper.a(paramContext, paramVideoData, paramShowItem);
        return;
      }
      if (Util.H(paramContext)) {
        bool = MainApplication.getVideoCastManager().j();
      }
    } while (!bool);
    try
    {
      paramVideoData = new Intent(paramContext, CBSVideoCastControllerActivity.class);
      paramVideoData.putExtra("media", com.google.android.libraries.cast.companionlibrary.a.d.b(MainApplication.getVideoCastManager().J()));
      paramContext.startActivity(paramVideoData);
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramContext)
    {
      for (;;) {}
    }
  }
  
  public static void a(Context paramContext, SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate)
  {
    a(paramContext, paramSyncbakChannel, paramAffiliate, null, null, false);
  }
  
  public static void a(Context paramContext, SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate, String paramString1, String paramString2, boolean paramBoolean)
  {
    Location localLocation;
    e locale;
    Object localObject1;
    String str;
    if (paramContext != null)
    {
      new StringBuilder("context name: ").append(paramContext.getPackageName()).append(" ").append(paramContext.getClass());
      localLocation = Util.N(paramContext);
      locale = new e(1);
      new StringBuilder("channel name: ").append(paramSyncbakChannel.getName());
      new StringBuilder("channel description: ").append(paramSyncbakChannel.getDescription());
      locale.a("com.google.android.gms.cast.metadata.TITLE", paramString1);
      locale.a("com.google.android.gms.cast.metadata.SUBTITLE", paramString2);
      if (paramAffiliate != null)
      {
        paramString1 = new StringBuilder();
        paramString1.append("http://wwwimage.cbsstatic.com/base/");
        paramString1.append(paramAffiliate.getLogo());
        paramString1 = paramString1.toString();
        paramString2 = new StringBuilder();
        paramString2.append("http://wwwimage.cbsstatic.com/base/");
        paramString2.append(paramAffiliate.getSmallLogo());
        paramString2.toString();
        paramString2 = ImageHelper.b(paramString1, 420);
        paramAffiliate = new WebImage(Uri.parse(ImageHelper.b(paramString1, 200)));
        paramString1 = new WebImage(Uri.parse(paramString1));
        paramString2 = new WebImage(Uri.parse(paramString2));
        locale.a(paramAffiliate);
        locale.a(paramString1);
        locale.a(paramString2);
      }
      paramAffiliate = AnalyticsManager.c(paramContext);
      localObject1 = null;
      paramString2 = null;
      if (paramAffiliate != null)
      {
        localObject1 = paramAffiliate.getAgeGroup();
        paramString2 = paramAffiliate.getGender();
      }
      paramAffiliate = null;
      paramString1 = null;
      if (MVPDController.getInstance().i())
      {
        paramAffiliate = MVPDController.getInstance().getAuthZToken().d();
        paramString1 = MVPDController.getInstance().getSelectedMvpdConfig().getAdobeId();
      }
      str = Util.y(paramContext);
      Object localObject2 = Util.a(AuthStatusManager.getUserAuthStatus());
      localObject2 = new StringBuilder("{\n   \"user_subscription_level\": ").append("\"" + (String)localObject2 + "\"").append(",\n   \"age_group\": ");
      if (localObject1 != null) {
        break label706;
      }
      localObject1 = "null";
      localObject1 = ((StringBuilder)localObject2).append((String)localObject1).append(",\n   \"gender\": ");
      if (paramString2 != null) {
        break label735;
      }
      paramString2 = "null";
      label400:
      localObject1 = ((StringBuilder)localObject1).append(paramString2).append(",\n   \"cbs_com_cookie\": ");
      if (str != null) {
        break label764;
      }
      paramString2 = "null";
      label425:
      paramString2 = ((StringBuilder)localObject1).append(paramString2).append(",\n   \"mvpd\": ");
      if (paramString1 != null) {
        break label793;
      }
      paramString1 = "null";
      label448:
      paramString1 = paramString2.append(paramString1).append(",\n   \"mvpd_token\": ");
      if (paramAffiliate != null) {
        break label820;
      }
      paramAffiliate = "null";
      label469:
      paramString1 = paramString1.append(paramAffiliate).append(",\n   \"sender_component_id\": ");
      if (CBSPlayer.e != null) {
        break label847;
      }
      paramAffiliate = "null";
      label491:
      paramString1 = paramString1.append(paramAffiliate).append(",\n   \"sender\": \"");
      if (!Util.h(paramContext)) {
        break label876;
      }
      paramAffiliate = "android-tablet-app";
      label514:
      paramAffiliate = paramString1.append(paramAffiliate).append("\",\n   \"stationId\": ").append(paramSyncbakChannel.getStationId()).append(",\n   \"mediaId\": ").append(paramSyncbakChannel.getMediaId()).append(",\n    \"cast_resume\": ").append(paramBoolean).append(",\n   \"stationName\": ");
      if (paramSyncbakChannel.getName() != null) {
        break label883;
      }
      paramSyncbakChannel = null;
      label572:
      paramAffiliate = paramAffiliate.append(paramSyncbakChannel).append(",\n   \"latitude\": ");
      if (localLocation == null) {
        break label913;
      }
      paramSyncbakChannel = Double.valueOf(localLocation.getLatitude());
      label598:
      paramAffiliate = paramAffiliate.append(paramSyncbakChannel).append(",\n   \"longitude\": ");
      if (localLocation == null) {
        break label920;
      }
    }
    label706:
    label735:
    label764:
    label793:
    label820:
    label847:
    label876:
    label883:
    label913:
    label920:
    for (paramSyncbakChannel = Double.valueOf(localLocation.getLongitude());; paramSyncbakChannel = "null")
    {
      paramAffiliate = paramSyncbakChannel + "\n}";
      paramSyncbakChannel = new JSONObject();
      try
      {
        paramAffiliate = new JSONObject(paramAffiliate);
        paramSyncbakChannel = paramAffiliate;
      }
      catch (JSONException paramAffiliate)
      {
        for (;;)
        {
          paramAffiliate.printStackTrace();
        }
      }
      a(paramContext, com.google.android.libraries.cast.companionlibrary.a.d.b(new d.a("70C7B4F3-E4B7-13C3-0A99-E1A1C2DE72CD").a(2).a("application/x-mpegURL").a(locale).a(b(paramContext)).a(paramSyncbakChannel).a()), 0);
      return;
      localObject1 = "\"" + (String)localObject1 + "\"";
      break;
      paramString2 = "\"" + paramString2 + "\"";
      break label400;
      paramString2 = "\"" + str + "\"";
      break label425;
      paramString1 = "\"" + paramString1 + "\"";
      break label448;
      paramAffiliate = "\"" + paramAffiliate + "\"";
      break label469;
      paramAffiliate = "\"" + CBSPlayer.e + "\"";
      break label491;
      paramAffiliate = "android-phone-app";
      break label514;
      paramSyncbakChannel = "\"" + paramSyncbakChannel.getName() + "\"";
      break label572;
      paramSyncbakChannel = "null";
      break label598;
    }
  }
  
  public static void a(Context paramContext, j paramj)
  {
    int j = 0;
    SharedPreferences.Editor localEditor;
    int i;
    float f;
    if ((paramContext != null) && (paramj != null))
    {
      localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      if (!new CBSTracksPreferenceManager(paramContext).a()) {
        break label547;
      }
      i = 1;
      localEditor.putInt("ccSettingTurnedOn", i);
      f = paramj.a();
      if (f < 2.0D) {
        break label552;
      }
      i = 250;
      label68:
      localEditor.putInt("ccFontSize", i);
      localEditor.putString("ccFontFace", paramj.e());
      i = paramj.b();
      new StringBuilder("settingsFontColor hex: ").append(Integer.toHexString(i));
      new StringBuilder("settings font color alpha: ").append(Color.alpha(i)).append(" r: ").append(Color.red(i)).append(" g: ").append(Color.green(i)).append(" b: ").append(Color.blue(i));
      localEditor.putInt("ccFontOpacity", (int)Math.round(Color.alpha(i) / 255.0D * 100.0D));
      paramContext = new Integer(i).toString();
      new StringBuilder("font color alpha: ").append(Color.alpha(i)).append(" r: ").append(Color.red(i)).append(" g: ").append(Color.green(i)).append(" b: ").append(Color.blue(i));
      localEditor.putString("ccFontColor", paramContext);
      paramj.d();
      i = j;
      switch (paramj.d())
      {
      default: 
        i = j;
      }
    }
    for (;;)
    {
      localEditor.putInt("ccFontEdgeType", i);
      i = paramj.c();
      new StringBuilder("settingsBackgroundColor hex: ").append(Integer.toHexString(i));
      new StringBuilder("background color alpha: ").append(Color.alpha(i)).append(" r: ").append(Color.red(i)).append(" g: ").append(Color.green(i)).append(" b: ").append(Color.blue(i));
      localEditor.putString("ccBackgroundColor", new Integer(i).toString());
      new StringBuilder("background color alpha: ").append(Color.alpha(i)).append(" r: ").append(Color.red(i)).append(" g: ").append(Color.green(i)).append(" b: ").append(Color.blue(i));
      localEditor.putInt("ccBackgroundOpacity", (int)Math.round(Color.alpha(i) / 255.0D * 100.0D));
      localEditor.commit();
      return;
      label547:
      i = 0;
      break;
      label552:
      if (f >= 1.5D)
      {
        i = 200;
        break label68;
      }
      if (f >= 1.0D)
      {
        i = 150;
        break label68;
      }
      i = 100;
      break label68;
      i = 2;
      continue;
      i = 5;
      continue;
      i = 3;
      continue;
      i = 1;
    }
  }
  
  public static boolean a()
  {
    boolean bool = false;
    if (getUserType() == 2) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(VideoData paramVideoData)
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    if (paramVideoData != null)
    {
      bool1 = bool2;
      if (paramVideoData.getSubscriptionLevel() != null)
      {
        bool1 = bool2;
        if (!paramVideoData.getSubscriptionLevel().equals("PAID")) {
          bool1 = false;
        }
      }
    }
    return bool1;
  }
  
  public static VideoData[] a(VideoData[] paramArrayOfVideoData)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayOfVideoData != null)
    {
      int j = paramArrayOfVideoData.length;
      int i = 0;
      while (i < j)
      {
        VideoData localVideoData = paramArrayOfVideoData[i];
        String str = localVideoData.getStatus();
        if ((str != null) && ((str.equals("AVAILABLE")) || (str.equals("PREMIUM")) || (str.equals("DELAYED")))) {
          localArrayList.add(localVideoData);
        }
        i += 1;
      }
    }
    return (VideoData[])localArrayList.toArray(new VideoData[localArrayList.size()]);
  }
  
  public static j b(Context paramContext)
  {
    j localj = null;
    if (paramContext != null) {
      localj = new CBSTracksPreferenceManager(paramContext).getTextTrackStyle();
    }
    return localj;
  }
  
  public static String b(VideoData paramVideoData)
  {
    Object localObject = null;
    if (paramVideoData != null)
    {
      String str = paramVideoData.getLabel();
      localObject = str;
      if (paramVideoData.getTopLevelCategory() != null)
      {
        localObject = str;
        if (paramVideoData.getTopLevelCategory().equals("News")) {
          localObject = paramVideoData.getTitle();
        }
      }
    }
    return (String)localObject;
  }
  
  public static void b(Context paramContext, VideoData paramVideoData)
  {
    if (paramVideoData != null) {
      if (a(paramVideoData)) {
        paramVideoData = "VOD premium";
      }
    }
    for (;;)
    {
      Object localObject = new HashMap();
      ((HashMap)localObject).put("Video Type", paramVideoData);
      AnalyticsManager.c(paramContext, Action.bT, (HashMap)localObject);
      if (paramContext != null)
      {
        paramVideoData = paramContext.getResources().getString(2131230957);
        localObject = new AlertDialog.Builder(paramContext, 2131427556);
        ((AlertDialog.Builder)localObject).setView(((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903119, null));
        ((AlertDialog.Builder)localObject).setPositiveButton(paramVideoData, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        });
        paramContext = ((AlertDialog.Builder)localObject).create();
        paramContext.setCancelable(true);
        paramContext.setOnShowListener(new DialogInterface.OnShowListener()
        {
          public final void onShow(DialogInterface paramAnonymousDialogInterface)
          {
            a.getButton(-1).setTypeface(null, 1);
            a.getButton(-1).setTextSize(2, 12.0F);
          }
        });
        paramContext.show();
      }
      return;
      paramVideoData = "VOD free";
      continue;
      paramVideoData = "Live TV";
    }
  }
  
  public static boolean b()
  {
    boolean bool = false;
    if (getUserType() == 4) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean c()
  {
    boolean bool = false;
    if (getUserTypeDescription().equalsIgnoreCase(UserDescription.REGISTERED.name())) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean c(VideoData paramVideoData)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramVideoData != null)
    {
      String str = paramVideoData.getStatus();
      bool1 = bool2;
      if (paramVideoData.getPid() != null)
      {
        bool1 = bool2;
        if (str.equals("AVAILABLE")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static String d(VideoData paramVideoData)
  {
    String str = paramVideoData.getThumbnail();
    List localList = paramVideoData.getThumbnailSet();
    paramVideoData = str;
    if (localList != null)
    {
      paramVideoData = str;
      if (localList.size() > 0)
      {
        Collections.sort(localList, new Comparator() {});
        paramVideoData = ((Thumbnail)localList.get(0)).getUrl();
      }
    }
    return paramVideoData;
  }
  
  /* Error */
  private static void d(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, PlayVideoListener paramPlayVideoListener)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 1087	com/cbs/app/view/utils/Util:u	(Landroid/content/Context;)Ljava/lang/String;
    //   7: ifnull +42 -> 49
    //   10: aload_1
    //   11: invokevirtual 379	com/cbs/app/view/model/VideoData:getCid	()Ljava/lang/String;
    //   14: putstatic 36	com/cbs/app/view/utils/VideoUtil:b	Ljava/lang/String;
    //   17: new 1089	com/cbs/app/service/ShowServiceImpl
    //   20: dup
    //   21: invokespecial 1090	com/cbs/app/service/ShowServiceImpl:<init>	()V
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 379	com/cbs/app/view/model/VideoData:getCid	()Ljava/lang/String;
    //   29: new 24	com/cbs/app/view/utils/VideoUtil$b
    //   32: dup
    //   33: aload_0
    //   34: aload_1
    //   35: aload_2
    //   36: aload_3
    //   37: invokespecial 1092	com/cbs/app/view/utils/VideoUtil$b:<init>	(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    //   40: invokeinterface 1097 4 0
    //   45: ldc 2
    //   47: monitorexit
    //   48: return
    //   49: aload_0
    //   50: aload_1
    //   51: aload_2
    //   52: aload_3
    //   53: invokestatic 1041	com/cbs/app/view/utils/VideoUtil:e	(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    //   56: goto -11 -> 45
    //   59: astore_0
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	paramContext	Context
    //   0	65	1	paramVideoData	VideoData
    //   0	65	2	paramShowItem	ShowItem
    //   0	65	3	paramPlayVideoListener	PlayVideoListener
    // Exception table:
    //   from	to	target	type
    //   3	45	59	finally
    //   49	56	59	finally
  }
  
  private static void e(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, PlayVideoListener paramPlayVideoListener)
  {
    MyRecentVideo localMyRecentVideo = new MyCBSDBServiceImpl().a(paramContext, paramVideoData.getCid());
    long l2 = -1L;
    long l1 = l2;
    if (localMyRecentVideo != null)
    {
      l1 = l2;
      if (localMyRecentVideo.getMedTime() > 5000L) {
        l1 = localMyRecentVideo.getMedTime();
      }
    }
    if (l1 > 5000L)
    {
      a(paramContext, paramVideoData, paramShowItem, l1, paramPlayVideoListener);
      return;
    }
    paramPlayVideoListener.a(paramVideoData, paramShowItem, 1, l1);
  }
  
  public static String getCCContentId()
  {
    Object localObject2 = null;
    Object localObject3 = MainApplication.getVideoCastManager().F();
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject3 = ((i)localObject3).d();
      localObject1 = localObject2;
      if (localObject3 != null) {
        localObject1 = ((com.google.android.gms.cast.d)localObject3).a();
      }
    }
    return (String)localObject1;
  }
  
  public static j getDefaultTextTrackStyle()
  {
    return new j();
  }
  
  public static int getUserType()
  {
    int j = 0;
    Object localObject = AuthStatusManager.getUserAuthStatus();
    int i = j;
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      i = j;
      if (localObject != null) {
        i = ((UserStatus)localObject).getType();
      }
    }
    return i;
  }
  
  public static String getUserTypeDescription()
  {
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      if (localObject != null) {
        return ((UserStatus)localObject).getDescription();
      }
      return UserDescription.ANONYMOUS.name();
    }
    return UserDescription.ANONYMOUS.name();
  }
  
  public static void setVOStyleInCCPreferences(Context paramContext)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT < 19)
    {
      localObject = PreferenceManager.getDefaultSharedPreferences(paramContext);
      String str3 = ((SharedPreferences)localObject).getString("ccFontColor", paramContext.getResources().getString(2131230885));
      int i = ((SharedPreferences)localObject).getInt("ccFontOpacity", 100);
      int j = ((SharedPreferences)localObject).getInt("ccFontEdgeType", 0);
      int k = ((SharedPreferences)localObject).getInt("ccFontSize", 100);
      String str1 = ((SharedPreferences)localObject).getString("ccBackgroundColor", paramContext.getResources().getString(2131230883));
      String str2 = ((SharedPreferences)localObject).getString("ccFontFace", paramContext.getResources().getString(2131230884));
      int m = ((SharedPreferences)localObject).getInt("ccBackgroundOpacity", 75);
      new StringBuilder("fontColor: ").append(str3).append(" fontOpacity: ").append(i).append(" fontEdgeTye: ").append(j).append("fontSize: ").append(k).append(" ccBackgroundColor: ").append(str1).append(" fontFace: ").append(str2).append(" ccBackgroundOpacity: ").append(m);
      localObject = new CBSTracksPreferenceManager(paramContext);
      ((CBSTracksPreferenceManager)localObject).setFontFamily(str2);
      ((CBSTracksPreferenceManager)localObject).a(paramContext, "#" + a(str1));
      ((CBSTracksPreferenceManager)localObject).setBackgroundOpacity(a(m));
      ((CBSTracksPreferenceManager)localObject).setTextColor("#" + a(str1));
      ((CBSTracksPreferenceManager)localObject).setTextOpacity(a(i));
      ((CBSTracksPreferenceManager)localObject).setFontFamily(str2);
      switch (j)
      {
      case 4: 
      default: 
        paramContext = "EDGE_TYPE_NONE";
      }
    }
    for (;;)
    {
      ((CBSTracksPreferenceManager)localObject).setEdgeType(paramContext);
      return;
      paramContext = "EDGE_TYPE_RAISED";
      continue;
      paramContext = "EDGE_TYPE_DEPRESSED";
      continue;
      paramContext = "EDGE_TYPE_OUTLINE";
      continue;
      paramContext = "EDGE_TYPE_DROP_SHADOW";
    }
  }
  
  public static abstract interface PlayVideoListener
  {
    public abstract void a(VideoData paramVideoData, ShowItem paramShowItem, int paramInt, long paramLong);
  }
  
  private static final class a
    implements NielsenDialogHelper.VideoClickListener
  {
    private Context a;
    
    public a(Context paramContext)
    {
      a = paramContext;
    }
    
    public final void a(VideoData paramVideoData, ShowItem paramShowItem)
    {
      VideoUtil.a(a, paramVideoData, paramShowItem);
    }
  }
  
  private static final class b
    implements ResponseModelListener
  {
    VideoUtil.PlayVideoListener a;
    private Context b;
    private VideoData c;
    private ShowItem d;
    
    public b(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, VideoUtil.PlayVideoListener paramPlayVideoListener)
    {
      b = paramContext;
      c = paramVideoData;
      d = paramShowItem;
      a = paramPlayVideoListener;
    }
    
    public final void a()
    {
      Activity localActivity = (Activity)b;
      if ((localActivity != null) && (!localActivity.isFinishing())) {
        UnableToConnectDialogHelper.a(b, "Refresh", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            VideoUtil.c(VideoUtil.b.a(VideoUtil.b.this), VideoUtil.b.b(VideoUtil.b.this), VideoUtil.b.c(VideoUtil.b.this), a);
          }
        }, "OK", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
        });
      }
    }
    
    public final void a(ResponseModel paramResponseModel)
    {
      if ((paramResponseModel instanceof VideoStreamsEndpoint))
      {
        paramResponseModel = (VideoStreamsEndpoint)paramResponseModel;
        String str = paramResponseModel.getContentId();
        new StringBuilder("comparing most recent ").append(VideoUtil.d()).append(" to endpoint ").append(str);
        if ((str != null) && (str.equals(VideoUtil.d())))
        {
          if (!paramResponseModel.isOverThreshold()) {
            break label79;
          }
          VideoUtil.b(b, c);
        }
      }
      return;
      label79:
      long l = paramResponseModel.getMediaTime() * 1000L;
      if (c.getFullEpisode())
      {
        if (l > 5000L)
        {
          VideoUtil.a(b, c, d, l, a);
          return;
        }
        VideoUtil.b(b, c, d, a);
        return;
      }
      a.a(c, d, -1, -1L);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.VideoUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */