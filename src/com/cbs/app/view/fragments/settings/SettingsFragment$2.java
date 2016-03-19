package com.cbs.app.view.fragments.settings;

import android.os.Bundle;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.utils.Util;

final class SettingsFragment$2
  implements BackButtonListener
{
  SettingsFragment$2(SettingsFragment paramSettingsFragment) {}
  
  public final boolean c()
  {
    SettingsFragment.f();
    boolean bool2 = false;
    boolean bool1 = bool2;
    Bundle localBundle;
    if (SettingsFragment.a(a) != null)
    {
      bool1 = bool2;
      if (SettingsFragment.b(a))
      {
        if ((!Util.i(SettingsFragment.c(a))) && (!Util.j(SettingsFragment.d(a)))) {
          break label177;
        }
        if (SettingsFragment.e(a) != 1) {
          break label135;
        }
        SettingsFragment.f(a);
        localBundle = new Bundle();
        if (!Util.m(SettingsFragment.g(a))) {
          break label116;
        }
        a.a(2131690211, "settingsaccount_fragment", localBundle, AccountFragment.class, "");
        bool1 = true;
      }
    }
    label116:
    label135:
    label177:
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            a.a(2131690211, "settingsappversion_fragment", localBundle, AppVersionFragment.class, "");
            break;
            bool1 = bool2;
          } while (SettingsFragment.h(a) == null);
          bool1 = bool2;
        } while (!(SettingsFragment.i(a) instanceof NavigationActivity));
        ((NavigationActivity)SettingsFragment.j(a)).k();
        return true;
        if (SettingsFragment.e(a) == 1)
        {
          SettingsFragment.f(a);
          a.a(2131690211, "settingsmenu_fragment", null, MenuFragment.class, "");
          return true;
        }
        bool1 = bool2;
      } while (SettingsFragment.k(a) == null);
      bool1 = bool2;
    } while (!(SettingsFragment.l(a) instanceof NavigationActivity));
    ((NavigationActivity)SettingsFragment.m(a)).k();
    return true;
  }
  
  public final String getTag()
  {
    return SettingsFragment.f();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */