package com.cbs.app.livetv.model;

public class AsyncResult<D>
{
  private D a;
  private Error b;
  
  public D getData()
  {
    return (D)a;
  }
  
  public Error getError()
  {
    return b;
  }
  
  public void setData(D paramD)
  {
    a = paramD;
  }
  
  public void setErrorCode(int paramInt)
  {
    if (b == null) {
      b = new Error();
    }
    b.setCode(paramInt);
  }
  
  public void setErrorMessage(String paramString)
  {
    if (b == null) {
      b = new Error();
    }
    b.setMessage(paramString);
  }
  
  public static class Error
  {
    private int a;
    private String b;
    
    public int getCode()
    {
      return a;
    }
    
    public String getMessage()
    {
      return b;
    }
    
    public void setCode(int paramInt)
    {
      a = paramInt;
    }
    
    public void setMessage(String paramString)
    {
      b = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.model.AsyncResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */