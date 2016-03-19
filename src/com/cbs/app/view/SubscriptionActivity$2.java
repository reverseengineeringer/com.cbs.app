package com.cbs.app.view;

import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class SubscriptionActivity$2
  implements TextView.OnEditorActionListener
{
  SubscriptionActivity$2(SubscriptionActivity paramSubscriptionActivity, Button paramButton) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a.performClick();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */