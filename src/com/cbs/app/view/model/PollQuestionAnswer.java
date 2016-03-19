package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PollQuestionAnswer
{
  private String answer;
  private int id;
  private String imageUrl;
  
  public String getAnswer()
  {
    return answer;
  }
  
  public int getId()
  {
    return id;
  }
  
  public String getImageUrl()
  {
    return imageUrl;
  }
  
  public void setAnswer(String paramString)
  {
    answer = paramString;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setImageUrl(String paramString)
  {
    imageUrl = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.PollQuestionAnswer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */