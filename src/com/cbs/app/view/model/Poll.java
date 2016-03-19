package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class Poll
{
  private String endDate;
  private int id;
  private List<PollQuestion> pollQuestions;
  private String startDate;
  private String title;
  
  public String getEndDate()
  {
    return endDate;
  }
  
  public int getId()
  {
    return id;
  }
  
  public List<PollQuestion> getPollQuestions()
  {
    return pollQuestions;
  }
  
  public String getStartDate()
  {
    return startDate;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public void setEndDate(String paramString)
  {
    endDate = paramString;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setPollQuestions(List<PollQuestion> paramList)
  {
    pollQuestions = paramList;
  }
  
  public void setStartDate(String paramString)
  {
    startDate = paramString;
  }
  
  public void setTitle(String paramString)
  {
    title = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.Poll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */