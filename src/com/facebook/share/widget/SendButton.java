package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.R.style;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;

public final class SendButton
  extends ShareButtonBase
{
  public SendButton(Context paramContext)
  {
    super(paramContext, null, 0, "fb_send_button_create");
  }
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, "fb_send_button_create");
  }
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, "fb_send_button_create");
  }
  
  protected final int getDefaultRequestCode()
  {
    return CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
  }
  
  protected final int getDefaultStyleResource()
  {
    return R.style.com_facebook_button_send;
  }
  
  protected final View.OnClickListener getShareOnClickListener()
  {
    new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        callExternalOnClickListener(paramAnonymousView);
        if (getFragment() != null) {}
        for (paramAnonymousView = new MessageDialog(getFragment(), getRequestCode());; paramAnonymousView = new MessageDialog(getActivity(), getRequestCode()))
        {
          paramAnonymousView.show(getShareContent());
          return;
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.SendButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */