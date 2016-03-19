package com.cbs.app.androiddata.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown=true)
public class SectionItem
{
  private List<VideoData> a;
  private long b;
  private String c;
  private long d;
  private String e;
  
  public String getAction()
  {
    return c;
  }
  
  public String getErrors()
  {
    return e;
  }
  
  public long getItemCount()
  {
    return b;
  }
  
  public List<VideoData> getItemList()
  {
    return a;
  }
  
  public long getResultSize()
  {
    return d;
  }
  
  public void setAction(String paramString)
  {
    c = paramString;
  }
  
  public void setErrors(String paramString)
  {
    e = paramString;
  }
  
  public void setItemCount(long paramLong)
  {
    b = paramLong;
  }
  
  public void setItemList(List<VideoData> paramList)
  {
    a = paramList;
  }
  
  public void setResultSize(long paramLong)
  {
    d = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.model.SectionItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */