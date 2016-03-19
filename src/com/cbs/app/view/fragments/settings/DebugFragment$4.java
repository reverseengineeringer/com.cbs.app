package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.EditText;

final class DebugFragment$4
  implements AdapterView.OnItemSelectedListener
{
  DebugFragment$4(DebugFragment paramDebugFragment, String[] paramArrayOfString1, String[] paramArrayOfString2, SharedPreferences paramSharedPreferences, Button paramButton) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool2 = true;
    paramView = a[paramInt];
    paramAdapterView = b[paramInt];
    if (paramInt == 1)
    {
      paramView = c.getString("PREFS_DEBUG_LOCATION_CUSTOM_LATITUDE", "");
      paramAdapterView = c.getString("PREFS_DEBUG_LOCATION_CUSTOM_LONGITUDE", "");
    }
    DebugFragment.a(e, paramInt, paramView, paramAdapterView, false);
    paramAdapterView = DebugFragment.a(e);
    if (paramInt == 1)
    {
      bool1 = true;
      paramAdapterView.setEnabled(bool1);
      paramAdapterView = DebugFragment.b(e);
      if (paramInt != 1) {
        break label132;
      }
      bool1 = true;
      label99:
      paramAdapterView.setEnabled(bool1);
      paramAdapterView = d;
      if (paramInt != 1) {
        break label138;
      }
    }
    label132:
    label138:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramAdapterView.setEnabled(bool1);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label99;
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */