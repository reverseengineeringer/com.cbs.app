package com.cbs.app.service.social;

import android.content.Context;
import android.content.Intent;
import com.cbs.app.service.social.model.FacebookOperation;
import com.cbs.app.view.FacebookIntermediateActivityV2;
import com.cbs.app.view.model.AlbumPhoto;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.login.LoginManager;

public class FacebookServiceImplV2
  implements FacebookService
{
  private Context a;
  
  public FacebookServiceImplV2(Context paramContext)
  {
    a = paramContext;
  }
  
  private void a(FacebookOperation paramFacebookOperation)
  {
    Intent localIntent = new Intent(a, FacebookIntermediateActivityV2.class);
    localIntent.putExtra("pendingOperation", paramFacebookOperation);
    a.startActivity(localIntent);
  }
  
  public final void a(Context paramContext)
  {
    FacebookSdk.sdkInitialize(paramContext.getApplicationContext());
    LoginManager.getInstance().logOut();
  }
  
  public final void a(AlbumPhoto paramAlbumPhoto)
  {
    FacebookOperation localFacebookOperation = new FacebookOperation();
    localFacebookOperation.setName(paramAlbumPhoto.getTitle());
    localFacebookOperation.setDescription(paramAlbumPhoto.getPhotoCaption());
    localFacebookOperation.setCaption("From CBS Android APP.");
    localFacebookOperation.setPictureLink(paramAlbumPhoto.getFilepathThumb());
    localFacebookOperation.setFacebookLink(paramAlbumPhoto.getFilepath());
    a(localFacebookOperation);
  }
  
  public final void a(Show paramShow)
  {
    FacebookOperation localFacebookOperation = new FacebookOperation();
    localFacebookOperation.setName(paramShow.getTitle());
    localFacebookOperation.setDescription(paramShow.getAbout());
    localFacebookOperation.setCaption("From CBS Android APP.");
    localFacebookOperation.setPictureLink(paramShow.getFilepathShowThumbnail());
    new StringBuilder("show link ").append(paramShow.getLink());
    localFacebookOperation.setFacebookLink(paramShow.getLink());
    a(localFacebookOperation);
  }
  
  public final void a(VideoData paramVideoData)
  {
    FacebookOperation localFacebookOperation = new FacebookOperation();
    localFacebookOperation.setName(paramVideoData.getLabel());
    localFacebookOperation.setDescription(paramVideoData.getDescription());
    localFacebookOperation.setCaption("From CBS Android APP.");
    localFacebookOperation.setPictureLink(paramVideoData.getThumbnail());
    localFacebookOperation.setFacebookLink(Util.B(a) + "/" + paramVideoData.getUrl());
    a(localFacebookOperation);
  }
  
  public final boolean a()
  {
    return AccessToken.getCurrentAccessToken() != null;
  }
  
  public final void b()
  {
    a(null);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.FacebookServiceImplV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */