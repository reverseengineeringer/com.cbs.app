package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;

final class NielsenDialogActivity$1
  implements View.OnClickListener
{
  NielsenDialogActivity$1(NielsenDialogActivity paramNielsenDialogActivity) {}
  
  public final void onClick(View paramView)
  {
    NielsenDialogActivity.a();
    if (!a.isFinishing())
    {
      a.setResult(-1);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NielsenDialogActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */