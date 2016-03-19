package com.cbs.app.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;

final class IwantToSeeDialogFrag$1
  implements AdapterView.OnItemClickListener
{
  IwantToSeeDialogFrag$1(IwantToSeeDialogFrag paramIwantToSeeDialogFrag) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (IwantToSeeDialogFrag.a(a) != null) {
      IwantToSeeDialogFrag.a(a).b(paramInt);
    }
    for (;;)
    {
      a.dismiss();
      return;
      Toast.makeText(IwantToSeeDialogFrag.b(a), "lost focus please try again", 1).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.IwantToSeeDialogFrag.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */