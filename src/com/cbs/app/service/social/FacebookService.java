package com.cbs.app.service.social;

import android.content.Context;
import com.cbs.app.view.model.AlbumPhoto;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;

public abstract interface FacebookService
{
  public abstract void a(Context paramContext);
  
  public abstract void a(AlbumPhoto paramAlbumPhoto);
  
  public abstract void a(Show paramShow);
  
  public abstract void a(VideoData paramVideoData);
  
  public abstract boolean a();
  
  public abstract void b();
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.FacebookService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */