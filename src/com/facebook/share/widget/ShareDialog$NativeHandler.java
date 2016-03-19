package com.facebook.share.widget;

import android.os.Bundle;
import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.DialogPresenter.ParameterProvider;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FacebookDialogBase.ModeHandler;
import com.facebook.share.Sharer.Result;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.model.ShareContent;

class ShareDialog$NativeHandler
  extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler
{
  private ShareDialog$NativeHandler(ShareDialog paramShareDialog)
  {
    super(paramShareDialog);
  }
  
  public boolean canShow(ShareContent paramShareContent)
  {
    return (paramShareContent != null) && (ShareDialog.access$300(paramShareContent.getClass()));
  }
  
  public AppCall createAppCall(final ShareContent paramShareContent)
  {
    ShareDialog.access$500(this$0, ShareDialog.access$400(this$0), paramShareContent, ShareDialog.Mode.NATIVE);
    ShareContentValidation.validateForNativeShare(paramShareContent);
    final AppCall localAppCall = this$0.createBaseAppCall();
    DialogPresenter.setupAppCallForNativeDialog(localAppCall, new DialogPresenter.ParameterProvider()
    {
      public Bundle getLegacyParameters()
      {
        return LegacyNativeDialogParameters.create(localAppCall.getCallId(), paramShareContent, val$shouldFailOnDataError);
      }
      
      public Bundle getParameters()
      {
        return NativeDialogParameters.create(localAppCall.getCallId(), paramShareContent, val$shouldFailOnDataError);
      }
    }, ShareDialog.access$600(paramShareContent.getClass()));
    return localAppCall;
  }
  
  public Object getMode()
  {
    return ShareDialog.Mode.NATIVE;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareDialog.NativeHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */