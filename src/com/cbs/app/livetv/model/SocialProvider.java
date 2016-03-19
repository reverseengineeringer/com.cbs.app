package com.cbs.app.livetv.model;

import android.os.Bundle;

public class SocialProvider
{
  public SocialNames a;
  public String b;
  public String c;
  
  public SocialProvider() {}
  
  public SocialProvider(SocialNames paramSocialNames, String paramString1, String paramString2)
  {
    a = paramSocialNames;
    b = paramString1;
    c = paramString2;
  }
  
  public Bundle getBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("provider_name", a.ordinal());
    localBundle.putString("provider_token", b);
    localBundle.putString("provider_secret", c);
    return localBundle;
  }
  
  public String getNameString()
  {
    if (a == null) {
      return null;
    }
    return a.getNameString();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.model.SocialProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */