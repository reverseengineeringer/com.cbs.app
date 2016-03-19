package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.R.style;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;

public final class ShareButton
  extends ShareButtonBase
{
  public ShareButton(Context paramContext)
  {
    super(paramContext, null, 0, "fb_share_button_create");
  }
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, "fb_share_button_create");
  }
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, "fb_share_button_create");
  }
  
  protected final int getDefaultRequestCode()
  {
    return CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
  }
  
  protected final int getDefaultStyleResource()
  {
    return R.style.com_facebook_button_share;
  }
  
  protected final View.OnClickListener getShareOnClickListener()
  {
    new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        callExternalOnClickListener(paramAnonymousView);
        if (getFragment() != null) {}
        for (paramAnonymousView = new ShareDialog(getFragment(), getRequestCode());; paramAnonymousView = new ShareDialog(getActivity(), getRequestCode()))
        {
          paramAnonymousView.show(getShareContent());
          return;
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */