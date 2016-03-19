package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;

final class DebugFragment$10
  implements AdapterView.OnItemSelectedListener
{
  DebugFragment$10(DebugFragment paramDebugFragment, ArrayAdapter paramArrayAdapter, EditText paramEditText) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ((CharSequence)a.getItem(paramInt)).toString();
    if ((paramAdapterView != null) && (!paramAdapterView.equals(""))) {
      b.setText(paramAdapterView);
    }
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */