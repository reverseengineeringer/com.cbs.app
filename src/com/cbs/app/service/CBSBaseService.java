package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class CBSBaseService
{
  protected static final String a = CBSBaseService.class.getSimpleName();
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    String str2 = null;
    String str1 = str2;
    MainApplication localMainApplication;
    if (paramString2 != null)
    {
      str1 = str2;
      if (paramString2.length() > 0)
      {
        str2 = "";
        str1 = str2;
        if (paramContext == null) {
          break label212;
        }
        localMainApplication = (MainApplication)paramContext.getApplicationContext();
        str1 = str2;
        if (localMainApplication == null) {
          break label212;
        }
        str2 = Preferences.b(paramContext, "cbs_base_uri", "");
        str1 = str2;
        if (paramString2.contains("/ext/")) {
          break label212;
        }
        str1 = str2;
        if (paramString2.contains("/apps-api/")) {
          break label212;
        }
        str1 = str2;
        if (paramString2.contains("/account/do_register/")) {
          break label212;
        }
        str2 = str2 + "/apps-api";
        str1 = str2;
        if (paramString1 != null)
        {
          str1 = str2;
          if (!Util.G(paramContext)) {
            str1 = str2 + "/" + paramString1;
          }
        }
      }
    }
    label212:
    for (paramContext = str1 + "/" + localMainApplication.getDeviceType();; paramContext = str1)
    {
      str1 = paramContext + paramString2 + "";
      return str1;
    }
  }
  
  private void c(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    Util.a(paramContext, true, "GET", a(paramContext, paramString1, paramString2), null, null, paramResponseModelListener, paramClass, false, 3600L, false);
  }
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    a(paramContext, null, paramString, paramResponseModelListener, paramClass, 3600L, true);
  }
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass, boolean paramBoolean)
  {
    c(paramContext, null, paramString, paramResponseModelListener, paramClass);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    a(paramContext, paramString1, paramString2, paramResponseModelListener, paramClass, 3600L, true);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass, long paramLong, boolean paramBoolean)
  {
    Util.a(paramContext, true, "GET", a(paramContext, paramString1, paramString2), null, null, paramResponseModelListener, paramClass, true, paramLong, paramBoolean);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass, boolean paramBoolean)
  {
    c(paramContext, paramString1, paramString2, paramResponseModelListener, paramClass);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, Map<String, Object> paramMap, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i;
    Object localObject1;
    String str;
    if (paramString3.equals("application/json"))
    {
      localStringBuilder.append("{\n");
      paramMap = paramMap.entrySet().iterator();
      for (i = 1; paramMap.hasNext(); i = 0)
      {
        localObject1 = (Map.Entry)paramMap.next();
        if (i == 0) {
          localStringBuilder.append("\",\n");
        }
        str = (String)((Map.Entry)localObject1).getKey();
        localObject1 = ((Map.Entry)localObject1).getValue();
        localStringBuilder.append("  \"").append(str).append("\": \"").append(localObject1.toString());
      }
      localStringBuilder.append("\"\n");
      localStringBuilder.append("}\n");
    }
    for (;;)
    {
      paramMap = localStringBuilder.toString();
      Util.a(paramContext, true, "POST", a(paramContext, paramString1, paramString2), paramString3, paramMap, paramResponseModelListener, paramClass, false, 3600L, false);
      return;
      paramMap = paramMap.entrySet().iterator();
      for (i = 1; paramMap.hasNext(); i = 0)
      {
        localObject1 = (Map.Entry)paramMap.next();
        if (i == 0) {
          localStringBuilder.append("&");
        }
        str = (String)((Map.Entry)localObject1).getKey();
        localObject1 = ((Map.Entry)localObject1).getValue();
        if ((localObject1 instanceof Long[]))
        {
          localObject1 = (Long[])localObject1;
          int j = 1;
          int k = localObject1.length;
          i = 0;
          while (i < k)
          {
            Object localObject2 = localObject1[i];
            if (j == 0) {
              localStringBuilder.append("&");
            }
            localStringBuilder.append(str);
            localStringBuilder.append("=");
            localStringBuilder.append(localObject2);
            new StringBuilder("appending: ").append(localObject2);
            j = 0;
            i += 1;
          }
        }
        localStringBuilder.append(str);
        localStringBuilder.append("=");
        localStringBuilder.append(localObject1.toString());
      }
    }
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, Map<String, Object> paramMap, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    a(paramContext, null, paramString1, paramString2, paramMap, paramResponseModelListener, paramClass);
  }
  
  public final void b(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener, Class<? extends ResponseModel> paramClass)
  {
    a(paramContext, paramString1, paramString2, paramResponseModelListener, paramClass, 3600L, true);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.CBSBaseService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */