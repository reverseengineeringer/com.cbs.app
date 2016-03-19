package com.mdialog.android.stream;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;

class ClickThroughActivity$7
  implements View.OnFocusChangeListener
{
  ClickThroughActivity$7(ClickThroughActivity paramClickThroughActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      ClickThroughActivity.f(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_back_focus.png"));
    }
    for (;;)
    {
      ClickThroughActivity.a(a);
      return;
      ClickThroughActivity.f(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_back.png"));
    }
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */