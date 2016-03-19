package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.VideoData;

public class NextEpisodeResponse
  extends ResponseModel
{
  private boolean a;
  private VideoData b;
  
  public VideoData getNextVideo()
  {
    return b;
  }
  
  public void setNextVideo(VideoData paramVideoData)
  {
    b = paramVideoData;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.NextEpisodeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */