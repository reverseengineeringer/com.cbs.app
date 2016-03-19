package com.cbs.app.livetv.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ResponseErrorHelper
{
  public static String a(Context paramContext, Map<String, String> paramMap)
  {
    paramContext = paramContext.getResources();
    String str1 = paramContext.getString(2131231113);
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        String str2 = (String)((Map.Entry)localObject).getKey();
        localObject = (String)((Map.Entry)localObject).getValue();
        if ("TOOYOUNG".equals(localObject)) {
          return paramContext.getString(2131231114);
        }
        if ("CONNECTIONFAILURE".equals(localObject)) {
          return paramContext.getString(2131231119);
        }
        if ("REQUIRED".equals(localObject)) {
          return paramContext.getString(2131231118, new Object[] { a(str2) });
        }
        if ("EMAILALREADYEXISTS".equals(localObject)) {
          return paramContext.getString(2131231116);
        }
        if ("INVALID".equals(localObject)) {
          return paramContext.getString(2131231117, new Object[] { a(str2) });
        }
        if ("provider".equals(localObject)) {
          return paramContext.getString(2131231121);
        }
      }
    }
    return str1;
  }
  
  private static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    return paramString.substring(0, 1).toUpperCase() + paramString.substring(1);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.util.ResponseErrorHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */