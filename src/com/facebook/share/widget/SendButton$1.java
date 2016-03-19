package com.facebook.share.widget;

import android.view.View;
import android.view.View.OnClickListener;

class SendButton$1
  implements View.OnClickListener
{
  SendButton$1(SendButton paramSendButton) {}
  
  public void onClick(View paramView)
  {
    SendButton.access$000(this$0, paramView);
    if (this$0.getFragment() != null) {}
    for (paramView = new MessageDialog(this$0.getFragment(), this$0.getRequestCode());; paramView = new MessageDialog(SendButton.access$100(this$0), this$0.getRequestCode()))
    {
      paramView.show(this$0.getShareContent());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.SendButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */