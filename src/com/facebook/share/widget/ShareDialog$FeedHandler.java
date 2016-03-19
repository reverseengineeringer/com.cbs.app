package com.facebook.share.widget;

import com.facebook.internal.AppCall;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FacebookDialogBase.ModeHandler;
import com.facebook.share.Sharer.Result;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;

class ShareDialog$FeedHandler
  extends FacebookDialogBase<ShareContent, Sharer.Result>.ModeHandler
{
  private ShareDialog$FeedHandler(ShareDialog paramShareDialog)
  {
    super(paramShareDialog);
  }
  
  public boolean canShow(ShareContent paramShareContent)
  {
    return paramShareContent instanceof ShareLinkContent;
  }
  
  public AppCall createAppCall(ShareContent paramShareContent)
  {
    ShareDialog.access$500(this$0, ShareDialog.access$900(this$0), paramShareContent, ShareDialog.Mode.FEED);
    paramShareContent = (ShareLinkContent)paramShareContent;
    AppCall localAppCall = this$0.createBaseAppCall();
    ShareContentValidation.validateForWebShare(paramShareContent);
    DialogPresenter.setupAppCallForWebDialog(localAppCall, "feed", WebDialogParameters.createForFeed(paramShareContent));
    return localAppCall;
  }
  
  public Object getMode()
  {
    return ShareDialog.Mode.FEED;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareDialog.FeedHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */