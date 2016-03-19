package com.mdialog.android.stream;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;

class ClickThroughActivity$9
  implements View.OnFocusChangeListener
{
  ClickThroughActivity$9(ClickThroughActivity paramClickThroughActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      ClickThroughActivity.h(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_refresh_focus.png"));
    }
    for (;;)
    {
      ClickThroughActivity.a(a);
      return;
      ClickThroughActivity.h(a).setBackgroundDrawable(ClickThroughActivity.a(a, "md_and_btn_refresh.png"));
    }
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */