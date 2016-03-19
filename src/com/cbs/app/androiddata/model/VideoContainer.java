package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoContainer
{
  private long a;
  private VideoData b;
  
  public long getMedTime()
  {
    return a;
  }
  
  public VideoData getVideo()
  {
    return b;
  }
  
  public void setMedTime(long paramLong)
  {
    a = paramLong;
  }
  
  public void setVideo(VideoData paramVideoData)
  {
    b = paramVideoData;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.VideoContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */