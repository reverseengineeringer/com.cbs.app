package com.cbs.app.view;

import com.cbs.app.view.utils.Preferences;
import com.nielsen.app.sdk.l;
import com.nielsen.app.sdk.n;

final class MainApplication$1
  implements n
{
  MainApplication$1(MainApplication paramMainApplication) {}
  
  public final void onAppSdkEvent(long paramLong, int paramInt, String paramString)
  {
    MainApplication.f();
    new StringBuilder("onAppSdkEvent timestamp: ").append(paramLong).append(" code: ").append(paramInt).append(" eventDescription: ").append(paramString);
    switch (paramInt)
    {
    default: 
      return;
    }
    paramString = a;
    MainApplication.a(a);
    MainApplication.a(paramString, l.d());
    MainApplication.f();
    new StringBuilder("nielsen urlStr: ").append(MainApplication.b(a));
    Preferences.a(a, "nielsen_settings_url", MainApplication.b(a));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.MainApplication.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */