package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  static Map<String, a> a = new HashMap();
  static String f;
  private static e g;
  private static d h;
  Context b;
  KeyPair c;
  String d = "";
  long e;
  
  private a(Context paramContext, String paramString)
  {
    b = paramContext.getApplicationContext();
    d = paramString;
  }
  
  static int a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      new StringBuilder("Never happens: can't find own package ").append(paramContext);
    }
    return 0;
  }
  
  public static a a(Context paramContext, Bundle paramBundle)
  {
    if (paramBundle == null) {
      paramBundle = "";
    }
    for (;;)
    {
      try
      {
        Context localContext = paramContext.getApplicationContext();
        if (g == null)
        {
          g = new e(localContext);
          h = new d(localContext);
        }
        f = Integer.toString(a(localContext));
        a locala = (a)a.get(paramBundle);
        paramContext = locala;
        if (locala == null)
        {
          paramContext = new a(localContext, paramBundle);
          a.put(paramBundle, paramContext);
        }
        return paramContext;
      }
      finally {}
      paramBundle = paramBundle.getString("subtype");
      while (paramBundle != null) {
        break;
      }
      paramBundle = "";
    }
  }
  
  static String a(KeyPair paramKeyPair)
  {
    paramKeyPair = paramKeyPair.getPublic().getEncoded();
    try
    {
      paramKeyPair = MessageDigest.getInstance("SHA1").digest(paramKeyPair);
      paramKeyPair[0] = ((byte)((paramKeyPair[0] & 0xF) + 112 & 0xFF));
      paramKeyPair = Base64.encodeToString(paramKeyPair, 0, 8, 11);
      return paramKeyPair;
    }
    catch (NoSuchAlgorithmException paramKeyPair) {}
    return null;
  }
  
  static String a(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 11);
  }
  
  public static a b(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  static e c()
  {
    return g;
  }
  
  static d d()
  {
    return h;
  }
  
  private KeyPair e()
  {
    if (c == null) {
      c = g.d(d);
    }
    if (c == null)
    {
      e = System.currentTimeMillis();
      c = g.a(d, e);
    }
    return c;
  }
  
  public final String a(String paramString1, String paramString2, Bundle paramBundle)
  {
    int j = 0;
    int k = 1;
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    Object localObject = g.a("appVersion");
    if ((localObject == null) || (!((String)localObject).equals(f)))
    {
      i = 1;
      if (i == 0) {
        break label133;
      }
    }
    label133:
    for (localObject = null;; localObject = g.a(d, paramString1, paramString2))
    {
      if (localObject == null) {
        break label150;
      }
      return (String)localObject;
      localObject = g.a("lastToken");
      if (localObject == null)
      {
        i = 1;
        break;
      }
      long l = Long.parseLong((String)localObject);
      if (System.currentTimeMillis() / 1000L - Long.valueOf(l).longValue() > 604800L)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
    }
    label150:
    localObject = paramBundle;
    if (paramBundle == null) {
      localObject = new Bundle();
    }
    int i = k;
    if (((Bundle)localObject).getString("ttl") != null) {
      i = 0;
    }
    if ("jwt".equals(((Bundle)localObject).getString("type"))) {
      i = j;
    }
    for (;;)
    {
      paramBundle = b(paramString1, paramString2, (Bundle)localObject);
      localObject = paramBundle;
      if (paramBundle == null) {
        break;
      }
      localObject = paramBundle;
      if (i == 0) {
        break;
      }
      g.a(d, paramString1, paramString2, paramBundle, f);
      return paramBundle;
    }
  }
  
  public final void a()
  {
    String str2 = "*";
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    g.b(d, "*", "*");
    Bundle localBundle = new Bundle();
    localBundle.putString("sender", "*");
    localBundle.putString("scope", "*");
    localBundle.putString("subscription", "*");
    localBundle.putString("delete", "1");
    localBundle.putString("X-delete", "1");
    if ("".equals(d))
    {
      str1 = "*";
      localBundle.putString("subtype", str1);
      if (!"".equals(d)) {
        break label160;
      }
    }
    label160:
    for (String str1 = str2;; str1 = d)
    {
      localBundle.putString("X-subtype", str1);
      d.a(h.a(localBundle, e()));
      b();
      return;
      str1 = d;
      break;
    }
  }
  
  public final String b(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramString2 != null) {
      paramBundle.putString("scope", paramString2);
    }
    paramBundle.putString("sender", paramString1);
    if ("".equals(d)) {}
    for (paramString2 = paramString1;; paramString2 = d)
    {
      if (!paramBundle.containsKey("legacy.register"))
      {
        paramBundle.putString("subscription", paramString1);
        paramBundle.putString("subtype", paramString2);
        paramBundle.putString("X-subscription", paramString1);
        paramBundle.putString("X-subtype", paramString2);
      }
      return d.a(h.a(paramBundle, e()));
    }
  }
  
  final void b()
  {
    e = 0L;
    e locale = g;
    String str = d;
    locale.b(str + "|");
    c = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */