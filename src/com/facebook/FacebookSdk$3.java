package com.facebook;

import android.content.Context;

final class FacebookSdk$3
  implements Runnable
{
  FacebookSdk$3(Context paramContext, String paramString) {}
  
  public final void run()
  {
    FacebookSdk.publishInstallAndWaitForResponse(val$applicationContext, val$applicationId);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookSdk.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */