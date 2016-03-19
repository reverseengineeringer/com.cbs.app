package com.cbs.app.view.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class PollResults
{
  private List<AnswerResult> answerResults;
  private String pollTitle;
  private String question;
  private int questionId;
  private int totalAnswers;
  
  public List<AnswerResult> getAnswerResults()
  {
    return answerResults;
  }
  
  public String getPollTitle()
  {
    return pollTitle;
  }
  
  public String getQuestion()
  {
    return question;
  }
  
  public int getQuestionId()
  {
    return questionId;
  }
  
  public int getTotalAnswers()
  {
    return totalAnswers;
  }
  
  public void setAnswerResults(List<AnswerResult> paramList)
  {
    answerResults = paramList;
  }
  
  public void setPollTitle(String paramString)
  {
    pollTitle = paramString;
  }
  
  public void setQuestion(String paramString)
  {
    question = paramString;
  }
  
  public void setQuestionId(int paramInt)
  {
    questionId = paramInt;
  }
  
  public void setTotalAnswers(int paramInt)
  {
    totalAnswers = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.model.PollResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */