package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.VideoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoEndpointResponse
  extends ResponseModel
{
  @JsonProperty("action")
  private String a;
  @JsonProperty("itemCount")
  private int b;
  @JsonProperty("resultSize")
  private int c;
  @JsonProperty("itemList")
  private List<VideoData> d = new ArrayList();
  
  public String getAction()
  {
    return a;
  }
  
  public int getItemCount()
  {
    return b;
  }
  
  public List<VideoData> getItemList()
  {
    return d;
  }
  
  public int getResultSize()
  {
    return c;
  }
  
  public void setAction(String paramString)
  {
    a = paramString;
  }
  
  public void setItemCount(int paramInt)
  {
    b = paramInt;
  }
  
  public void setItemList(List<VideoData> paramList)
  {
    d = paramList;
  }
  
  public void setResultSize(int paramInt)
  {
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.VideoEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */