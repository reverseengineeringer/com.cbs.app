package com.cbs.app.view.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.view.model.RecentTweet;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class RecentTweetEndpointResponse
  extends ResponseModel
  implements Serializable
{
  private static final long serialVersionUID = -4960942952167814577L;
  @JsonProperty("tweets")
  private List<RecentTweet> recentTweetList;
  @JsonProperty("success")
  private Boolean success;
  @JsonProperty("twitter_screen_name")
  private String twitterScreenName;
  
  public List<RecentTweet> getRecentTweetList()
  {
    return recentTweetList;
  }
  
  public Boolean getSuccess()
  {
    return success;
  }
  
  public String getTwitterScreenName()
  {
    return twitterScreenName;
  }
  
  public void setRecentTweetList(List<RecentTweet> paramList)
  {
    recentTweetList = paramList;
  }
  
  public void setSuccess(Boolean paramBoolean)
  {
    success = paramBoolean;
  }
  
  public void setTwitterScreenName(String paramString)
  {
    twitterScreenName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.rest.RecentTweetEndpointResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */