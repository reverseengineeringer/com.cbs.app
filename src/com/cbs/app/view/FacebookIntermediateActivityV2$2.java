package com.cbs.app.view;

import android.widget.Toast;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.share.Sharer.Result;

final class FacebookIntermediateActivityV2$2
  implements FacebookCallback<Sharer.Result>
{
  FacebookIntermediateActivityV2$2(FacebookIntermediateActivityV2 paramFacebookIntermediateActivityV2) {}
  
  public final void onCancel()
  {
    Toast.makeText(a, "Share Cancel", 1).show();
    a.finish();
  }
  
  public final void onError(FacebookException paramFacebookException)
  {
    Toast.makeText(a, paramFacebookException.getMessage(), 1).show();
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.FacebookIntermediateActivityV2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */