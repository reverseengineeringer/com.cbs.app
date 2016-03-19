package com.a.a.a;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;

public final class g
{
  private String a = "googleads.g.doubleclick.net";
  private String b = "/pagead/ads";
  private String c = "ad.doubleclick.net";
  private String[] d = { ".doubleclick.net", ".googleadservices.com", ".googlesyndication.com" };
  private c e;
  
  public g(c paramc)
  {
    e = paramc;
  }
  
  private Uri a(Uri paramUri, Context paramContext, String paramString, boolean paramBoolean)
  {
    boolean bool;
    try
    {
      bool = a(paramUri);
      if (bool)
      {
        if (!paramUri.toString().contains("dc_ms=")) {
          break label64;
        }
        throw new h("Parameter already exists: dc_ms");
      }
    }
    catch (UnsupportedOperationException paramUri)
    {
      throw new h("Provided Uri is not in a valid state");
    }
    if (paramUri.getQueryParameter("ms") != null) {
      throw new h("Query parameter already exists: ms");
    }
    label64:
    if (paramBoolean) {
      paramContext = e.a(paramContext, paramString);
    }
    while (bool)
    {
      paramString = paramUri.toString();
      i = paramString.indexOf(";adurl");
      if (i != -1)
      {
        return Uri.parse(paramString.substring(0, i + 1) + "dc_ms" + "=" + paramContext + ";" + paramString.substring(i + 1));
        paramContext = e.a(paramContext);
      }
      else
      {
        paramUri = paramUri.getEncodedPath();
        i = paramString.indexOf(paramUri);
        return Uri.parse(paramString.substring(0, paramUri.length() + i) + ";" + "dc_ms" + "=" + paramContext + ";" + paramString.substring(paramUri.length() + i));
      }
    }
    paramString = paramUri.toString();
    int j = paramString.indexOf("&adurl");
    int i = j;
    if (j == -1) {
      i = paramString.indexOf("?adurl");
    }
    if (i != -1) {
      return Uri.parse(paramString.substring(0, i + 1) + "ms" + "=" + paramContext + "&" + paramString.substring(i + 1));
    }
    paramUri = paramUri.buildUpon().appendQueryParameter("ms", paramContext).build();
    return paramUri;
  }
  
  private boolean a(Uri paramUri)
  {
    if (paramUri == null) {
      throw new NullPointerException();
    }
    try
    {
      boolean bool = paramUri.getHost().equals(c);
      return bool;
    }
    catch (NullPointerException paramUri) {}
    return false;
  }
  
  public final Uri a(Uri paramUri, Context paramContext)
  {
    return a(paramUri, paramContext, null, false);
  }
  
  public final Uri b(Uri paramUri, Context paramContext)
  {
    try
    {
      paramUri = a(paramUri, paramContext, paramUri.getQueryParameter("ai"), true);
      return paramUri;
    }
    catch (UnsupportedOperationException paramUri)
    {
      throw new h("Provided Uri is not in a valid state");
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */