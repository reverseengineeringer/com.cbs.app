package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import java.util.ArrayList;

final class DebugFragment$25
  implements AdapterView.OnItemSelectedListener
{
  DebugFragment$25(DebugFragment paramDebugFragment, ArrayList paramArrayList) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    DebugFragment.a(b, ((Long)a.get(paramInt)).longValue());
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */