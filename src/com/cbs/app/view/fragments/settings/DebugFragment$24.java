package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;

final class DebugFragment$24
  implements View.OnClickListener
{
  DebugFragment$24(DebugFragment paramDebugFragment, CheckBox paramCheckBox, EditText paramEditText1, EditText paramEditText2) {}
  
  public final void onClick(View paramView)
  {
    paramView = PreferenceManager.getDefaultSharedPreferences(d.a).edit();
    paramView.putBoolean("webcheckbox", a.isChecked());
    paramView.putString("weburltext", b.getText().toString());
    paramView.putString("webtablabel", c.getText().toString());
    paramView.putInt("webtabspinnerposition", DebugFragment.f(d));
    paramView.putLong("showidselected", DebugFragment.g(d));
    paramView.commit();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */