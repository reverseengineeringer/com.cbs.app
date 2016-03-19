package com.adobe.adobepass.accessenabler.api;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class a
{
  public static final String a = URLEncoder.encode("adobepass://android.app");
  private Context b;
  private String c;
  private String d;
  private f e;
  private b f;
  private final Handler g = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      paramAnonymousMessage = paramAnonymousMessage.getData();
      String str1 = paramAnonymousMessage.getString("url");
      Object localObject = paramAnonymousMessage.getStringArrayList("domains");
      HashMap localHashMap = new HashMap();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str2 = (String)((Iterator)localObject).next();
        localHashMap.put(str2, paramAnonymousMessage.getStringArrayList(str2));
      }
      a.a(a.this, str1, localHashMap);
    }
  };
  
  private a(Context paramContext)
  {
    b = paramContext;
    try
    {
      f = new b(paramContext);
      c = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      return;
    }
    catch (Exception paramContext)
    {
      throw new c(paramContext);
    }
  }
  
  protected static a a()
  {
    try
    {
      a locala = a.a();
      return locala;
    }
    finally {}
  }
  
  public static void k()
  {
    AccessEnablerService.a = true;
  }
  
  public final void a(d paramd)
  {
    f.j = paramd;
  }
  
  public final void a(String paramString)
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 6);
    localBundle.putString("resource_id", paramString);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public final void a(String paramString1, String paramString2, ArrayList<String> paramArrayList)
  {
    d = paramString2;
    e = f.a(b, f);
    paramString2 = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 1);
    localBundle.putString("requestor_id", paramString1);
    localBundle.putStringArrayList("sp_urls", paramArrayList);
    paramString2.putExtras(localBundle);
    b.startService(paramString2);
  }
  
  public final Handler b()
  {
    return g;
  }
  
  public final void b(String paramString)
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 7);
    localBundle.putString("mvpd_id", paramString);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public final d c()
  {
    return f.j;
  }
  
  public final b d()
  {
    return f;
  }
  
  protected final String e()
  {
    return c;
  }
  
  protected final String f()
  {
    return d;
  }
  
  public final void g()
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 2);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public final void h()
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 3);
    localBundle.putBoolean("force_authn", false);
    localBundle.putString("generic_data", null);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public final void i()
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 4);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public final void j()
  {
    Intent localIntent = new Intent(b, AccessEnablerService.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("op_code", 10);
    localIntent.putExtras(localBundle);
    b.startService(localIntent);
  }
  
  public static final class a
  {
    private static a a;
    
    public static a a(Context paramContext)
    {
      try
      {
        if (a == null) {
          a = new a(paramContext, (byte)0);
        }
        paramContext = a;
        return paramContext;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */