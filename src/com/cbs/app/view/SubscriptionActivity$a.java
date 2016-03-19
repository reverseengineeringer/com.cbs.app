package com.cbs.app.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.WebChromeClient;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

final class SubscriptionActivity$a
  extends WebChromeClient
{
  private Context b = null;
  
  public SubscriptionActivity$a(SubscriptionActivity paramSubscriptionActivity, Context paramContext)
  {
    b = paramContext;
  }
  
  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    SubscriptionActivity.a();
    new StringBuilder("onConsoleMessage: ").append(paramConsoleMessage.message());
    String str = paramConsoleMessage.message();
    if ((b instanceof Activity))
    {
      Object localObject = ((Activity)b).findViewById(2131689837);
      if ((localObject instanceof LinearLayout))
      {
        localObject = (LinearLayout)localObject;
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
        TextView localTextView = new TextView(b);
        if (paramConsoleMessage.messageLevel().equals(ConsoleMessage.MessageLevel.ERROR)) {
          localTextView.setTextColor(a.getResources().getColor(17170455));
        }
        localTextView.setText(paramConsoleMessage.sourceId() + " > " + paramConsoleMessage.lineNumber() + ":" + str);
        ((LinearLayout)localObject).addView(localTextView, 0, localLayoutParams);
      }
    }
    return super.onConsoleMessage(paramConsoleMessage);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */