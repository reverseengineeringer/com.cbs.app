package com.cbs.app.androiddata;

import android.content.Context;

public abstract interface ServerRequest
{
  public abstract Context getContext();
  
  public abstract String getHttpMethod();
  
  public abstract ResponseModelListener getListener();
  
  public abstract Class<? extends ResponseModel> getMappingClass();
  
  public abstract String getPostBody();
  
  public abstract String getPostBodyMimeType();
  
  public abstract long getTimeToLive();
  
  public abstract String getUrl();
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.ServerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */