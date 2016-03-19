package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences.Editor;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class DebugFragment$27
  implements CompoundButton.OnCheckedChangeListener
{
  DebugFragment$27(DebugFragment paramDebugFragment, SharedPreferences.Editor paramEditor, CheckBox paramCheckBox) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.putBoolean("kochavaCheckBox", b.isChecked());
      return;
    }
    a.putBoolean("kochavaCheckBox", false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */