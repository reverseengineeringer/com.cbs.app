package com.cbs.app.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.model.FacebookOperation;
import com.facebook.CallbackManager;
import com.facebook.CallbackManager.Factory;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.share.Sharer.Result;
import com.facebook.share.model.ShareLinkContent.Builder;
import com.facebook.share.widget.ShareDialog;
import java.util.Arrays;

public class FacebookIntermediateActivityV2
  extends FragmentActivity
{
  private boolean a = false;
  private FacebookOperation b;
  private CallbackManager c;
  private ShareDialog d;
  
  private void a(FacebookOperation paramFacebookOperation)
  {
    if (b != null)
    {
      switch (b.getChoice())
      {
      default: 
        finish();
        return;
      case 1: 
        d = new ShareDialog(this);
        d.registerCallback(c, new FacebookCallback()
        {
          public final void onCancel()
          {
            Toast.makeText(FacebookIntermediateActivityV2.this, "Share Cancel", 1).show();
            finish();
          }
          
          public final void onError(FacebookException paramAnonymousFacebookException)
          {
            Toast.makeText(FacebookIntermediateActivityV2.this, paramAnonymousFacebookException.getMessage(), 1).show();
            finish();
          }
        });
        ShareDialog.show(this, ((ShareLinkContent.Builder)new ShareLinkContent.Builder().setContentUrl(Uri.parse(paramFacebookOperation.getFacebookLink()))).setContentDescription(paramFacebookOperation.getDescription()).setImageUrl(Uri.parse(paramFacebookOperation.getPictureLink())).setContentTitle(paramFacebookOperation.getName()).build());
        return;
      case 2: 
        finish();
        return;
      case 3: 
        finish();
        return;
      }
      finish();
      return;
    }
    finish();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    c.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new FacebookServiceImplV2(this);
    FacebookSdk.sdkInitialize(getApplicationContext());
    c = CallbackManager.Factory.create();
    LoginManager.getInstance().registerCallback(c, new FacebookCallback()
    {
      public final void onCancel()
      {
        Toast.makeText(FacebookIntermediateActivityV2.this, "Login Cancel", 1).show();
        finish();
      }
      
      public final void onError(FacebookException paramAnonymousFacebookException)
      {
        Toast.makeText(FacebookIntermediateActivityV2.this, paramAnonymousFacebookException.getMessage(), 1).show();
        finish();
      }
    });
    Object localObject = getIntent().getExtras();
    if (localObject != null)
    {
      localObject = ((Bundle)localObject).getParcelable("pendingOperation");
      if (localObject != null) {
        b = ((FacebookOperation)localObject);
      }
    }
    if (!paramBundle.a())
    {
      LoginManager.getInstance().logInWithReadPermissions(this, Arrays.asList(new String[] { "public_profile", "email", "user_birthday" }));
      return;
    }
    a(b);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    a = false;
  }
  
  public void onResume()
  {
    super.onResume();
    a = true;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.FacebookIntermediateActivityV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */