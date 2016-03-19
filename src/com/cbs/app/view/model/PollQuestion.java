package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PollQuestion
{
  private int id;
  private String imageUrl;
  private List<PollQuestionAnswer> pollQuestionAnswers;
  private String question;
  
  public int getId()
  {
    return id;
  }
  
  public String getImageUrl()
  {
    return imageUrl;
  }
  
  public List<PollQuestionAnswer> getPollQuestionAnswers()
  {
    return pollQuestionAnswers;
  }
  
  public String getQuestion()
  {
    return question;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setImageUrl(String paramString)
  {
    imageUrl = paramString;
  }
  
  public void setPollQuestionAnswers(List<PollQuestionAnswer> paramList)
  {
    pollQuestionAnswers = paramList;
  }
  
  public void setQuestion(String paramString)
  {
    question = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.PollQuestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */