package com.cbs.app.view.fragments.settings;

import com.cbs.app.view.utils.Preferences;
import com.nielsen.app.sdk.l;
import com.nielsen.app.sdk.n;

final class NielsenFragment$4
  implements n
{
  NielsenFragment$4(NielsenFragment paramNielsenFragment) {}
  
  public final void onAppSdkEvent(long paramLong, int paramInt, String paramString)
  {
    String str = NielsenFragment.h;
    new StringBuilder("onAppSdkEvent timestamp: ").append(paramLong).append(" code: ").append(paramInt).append(" eventDescription: ").append(paramString);
    switch (paramInt)
    {
    default: 
      return;
    case 2001: 
      paramString = NielsenFragment.h;
      paramString = a;
      NielsenFragment.b(a);
      NielsenFragment.a(paramString, l.d());
      paramString = NielsenFragment.h;
      new StringBuilder("nielsen urlStr: ").append(NielsenFragment.c(a));
      Preferences.a(a.getActivity(), "nielsen_settings_url", NielsenFragment.c(a));
      return;
    }
    paramString = NielsenFragment.h;
    NielsenFragment.d(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.NielsenFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */