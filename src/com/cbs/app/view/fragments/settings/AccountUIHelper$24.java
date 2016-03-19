package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ScrollView;

final class AccountUIHelper$24
  implements AdapterView.OnItemSelectedListener
{
  public final void onItemSelected(final AdapterView<?> paramAdapterView, final View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = AccountUIHelper.l().findViewById(2131689804);
    paramView = (ScrollView)AccountUIHelper.l().findViewById(2131689791);
    paramView.post(new Runnable()
    {
      public final void run()
      {
        paramView.smoothScrollTo(0, paramAdapterView.getTop());
        paramAdapterView.requestFocus();
      }
    });
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */