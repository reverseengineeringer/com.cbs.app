package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.MemoryCache;
import com.cbs.app.androiddata.PersistentCookieStore;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.rest.AuthEndpointResponse;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.CreateEndpointResponse;
import com.cbs.app.view.model.rest.ReconcileEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class AuthServiceImpl
  extends CBSBaseService
  implements AuthService
{
  private static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      paramString = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return paramString.replace("+", "%2B");
  }
  
  public static void c(Context paramContext)
  {
    if (Util.a(paramContext, Util.B(paramContext), "CBS_COM") == null)
    {
      Util.d(paramContext, null);
      Util.f(paramContext, null);
      Util.c(paramContext, null);
    }
  }
  
  public final void a(Context paramContext)
  {
    if (paramContext != null) {
      ((MainApplication)paramContext.getApplicationContext()).getCookieStore().removeAll();
    }
    b(paramContext);
  }
  
  public final void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    String str = Util.Q(paramContext);
    a(paramContext, "/apps-api/v3.0/" + str + "/login/status.json", paramResponseModelListener, AuthStatusEndpointResponse.class, true);
  }
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("email", paramString);
    a(paramContext, "/auth/useraccount/password/reset/request.json", "application/x-www-form-urlencoded", localHashMap, paramResponseModelListener, CreateEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener)
  {
    String str = Util.Q(paramContext);
    str = "/apps-api/v2.0/" + str + "/auth/login.json";
    HashMap localHashMap = new HashMap();
    localHashMap.put("j_username", a(paramString1));
    localHashMap.put("j_password", a(paramString2));
    localHashMap.put("_remember_me", "YES");
    a(paramContext, "v2.0", str, "application/x-www-form-urlencoded", localHashMap, paramResponseModelListener, AuthEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, ResponseModelListener paramResponseModelListener)
  {
    paramString1 = "/apps-api/v3.0/" + paramString1 + "/login.json";
    HashMap localHashMap = new HashMap();
    localHashMap.put("accessToken", paramString2);
    if (paramString3 != null) {
      localHashMap.put("secret", paramString3);
    }
    a(paramContext, paramString1, "application/x-www-form-urlencoded", localHashMap, paramResponseModelListener, ReconcileEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString5, String paramString6, String paramString7, ResponseModelListener paramResponseModelListener)
  {
    String str = Util.Q(paramContext);
    str = "/apps-api/v3.0/" + str + "/useraccount/registration.json";
    HashMap localHashMap = new HashMap();
    localHashMap.put("firstName", a(paramString1));
    localHashMap.put("lastName", a(paramString2));
    localHashMap.put("email", a(paramString3));
    localHashMap.put("password", a(paramString4));
    localHashMap.put("confirmPassword", a(paramString4));
    paramString1 = String.format("%02d", new Object[] { Integer.valueOf(paramInt3) });
    paramString2 = String.format("%02d", new Object[] { Integer.valueOf(paramInt2) });
    localHashMap.put("birthday", paramString2 + "/" + paramString1 + "/" + Integer.toString(paramInt1));
    if (paramBoolean) {}
    for (paramString1 = "Female";; paramString1 = "Male")
    {
      localHashMap.put("gender", paramString1);
      localHashMap.put("country", paramString5);
      localHashMap.put("state", paramString6);
      localHashMap.put("mpid", "4812");
      localHashMap.put("zip", paramString7);
      localHashMap.put("optIn", "true");
      a(paramContext, str, "application/x-www-form-urlencoded", localHashMap, paramResponseModelListener, CreateEndpointResponse.class);
      return;
    }
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString7, String paramString8, String paramString9, ResponseModelListener paramResponseModelListener)
  {
    String str = Util.Q(paramContext);
    str = "/apps-api/v3.0/" + str + "/social/registration.json";
    HashMap localHashMap = new HashMap();
    localHashMap.put("firstName", a(paramString4));
    localHashMap.put("lastName", a(paramString5));
    localHashMap.put("email", a(paramString6));
    paramString4 = String.format(Locale.getDefault(), "%02d", new Object[] { Integer.valueOf(paramInt3) });
    paramString5 = String.format(Locale.getDefault(), "%02d", new Object[] { Integer.valueOf(paramInt2) });
    localHashMap.put("birthday", paramString5 + "/" + paramString4 + "/" + Integer.toString(paramInt1));
    if (paramBoolean) {}
    for (paramString4 = "Female";; paramString4 = "Male")
    {
      localHashMap.put("gender", paramString4);
      localHashMap.put("country", paramString7);
      localHashMap.put("state", paramString8);
      localHashMap.put("mpid", "4812");
      localHashMap.put("zip", paramString9);
      localHashMap.put("optIn", "true");
      localHashMap.put("provider", paramString1);
      localHashMap.put("accessToken", paramString2);
      if (paramString3 != null) {
        localHashMap.put("secret", paramString3);
      }
      a(paramContext, "v3.0", str, "application/x-www-form-urlencoded", localHashMap, paramResponseModelListener, CreateEndpointResponse.class);
      return;
    }
  }
  
  public final void b(Context paramContext)
  {
    MemoryCache.a();
    Util.f(paramContext, null);
    Util.d(paramContext, null);
    Util.g(paramContext, null);
    Util.h(paramContext, null);
    Util.c(paramContext, null);
    Util.i(paramContext, null);
    Util.C(paramContext);
    Util.j(paramContext, null);
    Preferences.a(paramContext, "mycbs_show_count", -1);
    AuthStatusManager.setUserAuthStatus(null);
    new FacebookServiceImplV2(paramContext).a(paramContext);
  }
  
  public final void b(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "v3.0", "/login/device/autologin/verify.json?token=" + paramString, paramResponseModelListener, AuthEndpointResponse.class, true);
  }
  
  public final void b(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "v2.0", "/apps-api/v2.0/zipcode/check.json?country=" + paramString1 + "&zip=" + paramString2, paramResponseModelListener, AuthStatusEndpointResponse.class, false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.AuthServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */