package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.VideoContainer;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class MyVideoResponse
  extends ResponseModel
{
  private boolean a;
  private boolean b;
  private String c;
  private List<VideoContainer> d;
  
  public String getErrors()
  {
    return c;
  }
  
  public List<VideoContainer> getVideos()
  {
    return d;
  }
  
  public void setErrors(String paramString)
  {
    c = paramString;
  }
  
  public void setIsLoggedIn(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setVideos(List<VideoContainer> paramList)
  {
    d = paramList;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.MyVideoResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */