package com.cbs.app.androiddata.model.rest;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.model.HistoryItem;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class HistoryResponse
  extends ResponseModel
{
  private int a;
  private boolean b;
  private List<HistoryItem> c;
  
  public int getCount()
  {
    return a;
  }
  
  public List<HistoryItem> getHistory()
  {
    return c;
  }
  
  public void setCount(int paramInt)
  {
    a = paramInt;
  }
  
  public void setHistory(List<HistoryItem> paramList)
  {
    c = paramList;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.rest.HistoryResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */