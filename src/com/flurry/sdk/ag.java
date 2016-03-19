package com.flurry.sdk;

import android.text.TextUtils;

public abstract class ag
{
  protected String c = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
  
  public ag(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Event must have a name!");
    }
    c = paramString;
  }
  
  public final String a()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */