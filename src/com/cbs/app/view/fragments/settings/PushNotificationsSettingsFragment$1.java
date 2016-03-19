package com.cbs.app.view.fragments.settings;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.urbanairship.p;
import com.urbanairship.push.j;

final class PushNotificationsSettingsFragment$1
  implements CompoundButton.OnCheckedChangeListener
{
  PushNotificationsSettingsFragment$1(PushNotificationsSettingsFragment paramPushNotificationsSettingsFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if ((paramBoolean) && (!p.a().m().c())) {
      p.a().m().b();
    }
    p.a().m().a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.PushNotificationsSettingsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */