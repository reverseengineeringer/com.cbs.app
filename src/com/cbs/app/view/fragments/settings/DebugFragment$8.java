package com.cbs.app.view.fragments.settings;

import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.DataManagerConfiguration;

final class DebugFragment$8
  implements AdapterView.OnItemSelectedListener
{
  DebugFragment$8(DebugFragment paramDebugFragment, SharedPreferences.Editor paramEditor, String[] paramArrayOfString) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.putString("syncbackurl", b[paramInt]);
    a.apply();
    DataManager.getInstance().getConfiguration().setSyncbakHost(b[paramInt]);
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */