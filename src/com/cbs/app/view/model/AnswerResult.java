package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AnswerResult
{
  private String answer;
  private int answerId;
  private int resultCount;
  
  public String getAnswer()
  {
    return answer;
  }
  
  public int getAnswerId()
  {
    return answerId;
  }
  
  public int getResultCount()
  {
    return resultCount;
  }
  
  public void setAnswer(String paramString)
  {
    answer = paramString;
  }
  
  public void setAnswerId(int paramInt)
  {
    answerId = paramInt;
  }
  
  public void setResultCount(int paramInt)
  {
    resultCount = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.AnswerResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */