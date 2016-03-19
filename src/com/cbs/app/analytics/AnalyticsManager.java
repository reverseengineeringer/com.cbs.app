package com.cbs.app.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.widget.Toast;
import com.cbs.app.analytics.impl.ComScoreService;
import com.cbs.app.analytics.impl.FlurryService;
import com.cbs.app.analytics.impl.KochavaService;
import com.cbs.app.analytics.impl.NewHockeyAppService;
import com.cbs.app.analytics.impl.OmnitureService;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;
import org.json.JSONObject;

public final class AnalyticsManager
{
  private static String a(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).getString("network");
      localObject = ((JSONObject)localObject).getString("campaign");
      paramString = paramString + "|" + (String)localObject;
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.getMessage();
    }
    return "na";
  }
  
  public static HashMap<String, Object> a(Context paramContext, HashMap<String, Object> paramHashMap)
  {
    Object localObject1 = null;
    if ((UriHandler.getTrackThroughCampaign() != null) && (!paramHashMap.containsKey("events"))) {
      paramHashMap.put("campaign", UriHandler.getTrackThroughCampaign());
    }
    if (UriHandler.a(paramContext) != null) {
      paramHashMap.put("thirdPartyCampaign", UriHandler.a(paramContext));
    }
    Object localObject2 = KochavaService.getAttributionData();
    String str;
    int i;
    if ((localObject2 != null) && (!((String)localObject2).isEmpty()))
    {
      str = b((String)localObject2);
      localObject2 = a((String)localObject2);
      paramHashMap.put("eVar73", localObject2);
      paramHashMap.put("eVar74", str);
      paramHashMap.put("evar_73", localObject2);
      paramHashMap.put("evar_74", str);
      str = MVPDController.getInstance().getMvpdIdForTracking();
      if (str != null)
      {
        str = str + "|mvpd";
        paramHashMap.put("evar_45", str);
        paramHashMap.put("eVar45", str);
      }
      i = Preferences.b(paramContext, "mycbs_show_count", -1);
      if (i != 0) {
        break label629;
      }
      paramHashMap.put("evar_61", "No Shows Added");
      paramHashMap.put("prop_61", "No Shows Added");
      paramHashMap.put("eVar61", "No Shows Added");
      paramHashMap.put("eProp61", "No Shows Added");
      label215:
      if (Util.y(paramContext) == null) {
        break label672;
      }
      str = Util.u(paramContext);
      paramHashMap.put("evar_69", str);
      paramHashMap.put("prop_69", str);
      paramHashMap.put("eVar69", str);
      paramHashMap.put("eProp69", str);
      paramHashMap.put("UserId", str);
      str = AuthStatusManager.getTrackingAuthString();
      paramHashMap.put("'evar_15", str);
      paramHashMap.put("prop_15", str);
      paramHashMap.put("eVar15", str);
      paramHashMap.put("eProp15", str);
      paramHashMap.put("LoginStatus", str);
      str = Util.a(paramContext, Util.B(paramContext), "CBS_U");
      if (str == null) {
        break label786;
      }
      localObject2 = str.split("\\|");
      if (localObject2.length <= 1) {
        break label786;
      }
      str = localObject2[0];
      localObject1 = str.split(":");
      if (localObject1.length > 1) {
        str = localObject1[1].replace(" ", "");
      }
      localObject1 = localObject2[1];
      if (((String)localObject1).split(":").length <= 1) {
        break label783;
      }
      localObject1 = str.replace(" ", "");
    }
    for (;;)
    {
      if (str != null) {}
      for (;;)
      {
        localObject2 = str;
        if (localObject1 != null)
        {
          localObject2 = str;
          if (str.length() > 0) {
            localObject2 = str + "|";
          }
          localObject2 = (String)localObject2 + (String)localObject1;
        }
        if (((String)localObject2).length() > 0)
        {
          paramHashMap.put("eVar16", localObject2);
          paramHashMap.put("eProp16", localObject2);
          paramHashMap.put("evar_16", localObject2);
          paramHashMap.put("prop_16", localObject2);
        }
        label534:
        if (Util.H(paramContext)) {}
        for (boolean bool = MainApplication.getVideoCastManager().j();; bool = false)
        {
          if (bool)
          {
            paramHashMap.put("evar_75", "chromecast:on");
            paramHashMap.put("prop_75", "chromecast:on");
            paramHashMap.put("eVar75", "chromecast:on");
            paramHashMap.put("eProp75", "chromecast:on");
          }
          return paramHashMap;
          paramHashMap.put("eVar73", "na");
          paramHashMap.put("eVar74", "na");
          paramHashMap.put("evar_73", "na");
          paramHashMap.put("evar_74", "na");
          break;
          label629:
          if (i <= 0) {
            break label215;
          }
          paramHashMap.put("evar_61", "Shows Added");
          paramHashMap.put("prop_61", "Shows Added");
          paramHashMap.put("eVar61", "Shows Added");
          paramHashMap.put("eProp61", "Shows Added");
          break label215;
          label672:
          paramHashMap.put("'evar_15", "anon" + ";");
          paramHashMap.put("prop_15", "anon" + ";");
          paramHashMap.put("eVar15", "anon" + ";");
          paramHashMap.put("eProp15", "anon" + ";");
          break label534;
        }
        str = "";
      }
      label783:
      continue;
      label786:
      str = null;
    }
  }
  
  public static void a(Application paramApplication)
  {
    if (paramApplication != null)
    {
      OmnitureService.a();
      ComScoreService.a(paramApplication);
      KochavaService.a(paramApplication);
      FlurryService.a(paramApplication);
      NewHockeyAppService.a(paramApplication);
    }
  }
  
  public static void a(Context paramContext)
  {
    if (paramContext != null)
    {
      OmnitureService.a(paramContext);
      ComScoreService.a();
      KochavaService.a(paramContext);
      FlurryService.a(paramContext);
      com.urbanairship.analytics.c.a((Activity)paramContext);
      NewHockeyAppService.a(paramContext);
    }
  }
  
  private static void a(Context paramContext, Action paramAction)
  {
    if (Preferences.a(paramContext, "show_events", false)) {
      Toast.makeText(paramContext, paramAction.getName(), 0).show();
    }
  }
  
  public static void a(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    HashMap localHashMap = a(paramContext, paramHashMap);
    OmnitureService.a(paramContext, paramAction, localHashMap);
    ComScoreService.b();
    FlurryService.a(paramAction, localHashMap);
    if ((!paramAction.equals(Action.S)) && (!paramAction.equals(Action.T))) {
      KochavaService.a(paramContext, paramAction, localHashMap);
    }
    if ((UriHandler.getTrackThroughCampaign() != null) && (!paramHashMap.containsKey("events"))) {
      UriHandler.setTrackThroughCampaign(null);
    }
    a(paramContext, paramAction);
  }
  
  private static String b(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString).getJSONObject("install").getJSONObject("meta");
      paramString = ((JSONObject)localObject).getString("device_id");
      localObject = ((JSONObject)localObject).getString("device_id_type");
      paramString = (String)localObject + "|" + paramString;
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.getMessage();
    }
    return "na";
  }
  
  public static void b(Context paramContext)
  {
    if (paramContext != null)
    {
      OmnitureService.b(paramContext);
      ComScoreService.c();
      KochavaService.a();
      FlurryService.b(paramContext);
      NewHockeyAppService.b(paramContext);
      com.urbanairship.analytics.c.b((Activity)paramContext);
    }
  }
  
  public static void b(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    paramHashMap = a(paramContext, paramHashMap);
    KochavaService.a(paramContext, paramAction, paramHashMap);
    FlurryService.a(paramAction, paramHashMap);
    a(paramContext, paramAction);
  }
  
  public static AgeGroupAndGender c(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = Util.a(paramContext, Util.B(paramContext), "CBS_U");
      if (paramContext != null)
      {
        Object localObject = paramContext.split("\\|");
        if (localObject.length > 1)
        {
          paramContext = localObject[0];
          String[] arrayOfString = paramContext.split(":");
          if (arrayOfString.length > 1) {
            paramContext = arrayOfString[1].replace(" ", "").replace("\"", "");
          }
          localObject = localObject[1];
          arrayOfString = ((String)localObject).split(":");
          if (arrayOfString.length > 1) {
            localObject = arrayOfString[1].replace(" ", "").replace("\"", "");
          }
          if ((localObject != null) && (paramContext != null)) {
            return new AgeGroupAndGender((String)localObject, paramContext);
          }
        }
      }
    }
    return null;
  }
  
  public static void c(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    FlurryService.a(paramAction, a(paramContext, paramHashMap));
    a(paramContext, paramAction);
  }
  
  public static void d(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    KochavaService.a(paramContext, paramAction, paramHashMap);
    a(paramContext, paramAction);
  }
  
  public static class AgeGroupAndGender
  {
    private String a = null;
    private String b = null;
    
    public AgeGroupAndGender(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
    
    public String getAgeGroup()
    {
      return a;
    }
    
    public String getGender()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.AnalyticsManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */