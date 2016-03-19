package com.mdialog.android.stream;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;

class ClickThroughActivity$8
  implements View.OnFocusChangeListener
{
  ClickThroughActivity$8(ClickThroughActivity paramClickThroughActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      ClickThroughActivity.g(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_forward_focus.png"));
    }
    for (;;)
    {
      ClickThroughActivity.a(a);
      return;
      ClickThroughActivity.g(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_forward.png"));
    }
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */