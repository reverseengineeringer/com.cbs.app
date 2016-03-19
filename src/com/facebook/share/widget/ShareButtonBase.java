package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.share.Sharer.Result;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;

public abstract class ShareButtonBase
  extends FacebookButtonBase
{
  private int requestCode = 0;
  private ShareContent shareContent;
  
  protected ShareButtonBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt, String paramString)
  {
    super(paramContext, paramAttributeSet, paramInt, 0, paramString);
    if (isInEditMode()) {}
    for (paramInt = i;; paramInt = getDefaultRequestCode())
    {
      requestCode = paramInt;
      return;
    }
  }
  
  protected void configureButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super.configureButton(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setInternalOnClickListener(getShareOnClickListener());
  }
  
  public int getRequestCode()
  {
    return requestCode;
  }
  
  public ShareContent getShareContent()
  {
    return shareContent;
  }
  
  protected abstract View.OnClickListener getShareOnClickListener();
  
  public void registerCallback(CallbackManager paramCallbackManager, FacebookCallback<Sharer.Result> paramFacebookCallback)
  {
    ShareInternalUtility.registerSharerCallback(getRequestCode(), paramCallbackManager, paramFacebookCallback);
  }
  
  public void registerCallback(CallbackManager paramCallbackManager, FacebookCallback<Sharer.Result> paramFacebookCallback, int paramInt)
  {
    setRequestCode(paramInt);
    registerCallback(paramCallbackManager, paramFacebookCallback);
  }
  
  protected void setRequestCode(int paramInt)
  {
    if (FacebookSdk.isFacebookRequestCode(paramInt)) {
      throw new IllegalArgumentException("Request code " + paramInt + " cannot be within the range reserved by the Facebook SDK.");
    }
    requestCode = paramInt;
  }
  
  public void setShareContent(ShareContent paramShareContent)
  {
    shareContent = paramShareContent;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareButtonBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */