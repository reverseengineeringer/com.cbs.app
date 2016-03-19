package com.facebook;

import java.util.concurrent.Callable;

final class FacebookSdk$2
  implements Callable<Void>
{
  public final Void call()
  {
    AccessTokenManager.getInstance().loadCurrentAccessToken();
    ProfileManager.getInstance().loadCurrentProfile();
    if ((AccessToken.getCurrentAccessToken() != null) && (Profile.getCurrentProfile() == null)) {
      Profile.fetchProfileForCurrentAccessToken();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookSdk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */