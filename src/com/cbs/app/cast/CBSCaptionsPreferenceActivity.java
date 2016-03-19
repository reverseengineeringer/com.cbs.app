package com.cbs.app.cast;

import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.Window;
import com.cbs.app.view.utils.Util;
import com.google.android.libraries.cast.companionlibrary.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;

public class CBSCaptionsPreferenceActivity
  extends PreferenceActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Util.G(this))
    {
      setTheme(2131427717);
      getWindow().setBackgroundDrawableResource(2130837706);
    }
    if (Util.H(this))
    {
      if (!c.B().e(16))
      {
        finish();
        return;
      }
      if (d.a)
      {
        startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        finish();
        return;
      }
    }
    addPreferencesFromResource(2131099649);
    new CBSTracksPreferenceManager(this).setUpPreferences(getPreferenceScreen());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSCaptionsPreferenceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */