package com.mdialog.android.stream;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;

class ClickThroughActivity$6
  implements View.OnFocusChangeListener
{
  ClickThroughActivity$6(ClickThroughActivity paramClickThroughActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      ClickThroughActivity.e(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_close_focus.png"));
    }
    for (;;)
    {
      ClickThroughActivity.a(a);
      return;
      ClickThroughActivity.e(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_close.png"));
    }
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */