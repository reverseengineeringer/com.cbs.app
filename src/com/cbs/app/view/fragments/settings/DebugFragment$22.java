package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;

final class DebugFragment$22
  implements CompoundButton.OnCheckedChangeListener
{
  DebugFragment$22(DebugFragment paramDebugFragment, LinearLayout paramLinearLayout, EditText paramEditText1, SharedPreferences paramSharedPreferences, EditText paramEditText2, Spinner paramSpinner) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.setVisibility(0);
      b.setText(c.getString("weburltext", "http://www.cbs.com/shows/big_brother/live_feed/"));
      DebugFragment.a(f, c.getInt("webtabspinnerposition", 0));
      DebugFragment.a(f, c.getLong("showidselected", -1L));
      d.setText(c.getString("webtablabel", ""));
      e.setSelection(DebugFragment.f(f));
      return;
    }
    a.setVisibility(8);
    paramCompoundButton = PreferenceManager.getDefaultSharedPreferences(f.a).edit();
    paramCompoundButton.putBoolean("webcheckbox", false);
    paramCompoundButton.putString("weburltext", "http://www.cbs.com/shows/big_brother/live_feed/");
    paramCompoundButton.putString("webtablabel", "");
    paramCompoundButton.putInt("webtabspinnerposition", 0);
    paramCompoundButton.putLong("showidselected", -1L);
    paramCompoundButton.commit();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */