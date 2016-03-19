package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.VideoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown=true)
public class VideoEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -2447165475103063511L;
  @JsonProperty("action")
  private String action;
  @JsonProperty("itemCount")
  private int itemCount;
  @JsonProperty("itemList")
  private ArrayList<VideoData> itemList = new ArrayList();
  @JsonProperty("resultSize")
  private int resultSize;
  
  public String getAction()
  {
    return action;
  }
  
  public int getItemCount()
  {
    return itemCount;
  }
  
  public ArrayList<VideoData> getItemList()
  {
    return itemList;
  }
  
  public int getResultSize()
  {
    return resultSize;
  }
  
  public void setAction(String paramString)
  {
    action = paramString;
  }
  
  public void setItemCount(int paramInt)
  {
    itemCount = paramInt;
  }
  
  public void setItemList(ArrayList<VideoData> paramArrayList)
  {
    itemList = paramArrayList;
  }
  
  public void setResultSize(int paramInt)
  {
    resultSize = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.VideoEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */