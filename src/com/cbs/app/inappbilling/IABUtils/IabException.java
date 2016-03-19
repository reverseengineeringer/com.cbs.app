package com.cbs.app.inappbilling.IABUtils;

public class IabException
  extends Exception
{
  IabResult a;
  
  public IabException(int paramInt, String paramString)
  {
    this(new IabResult(paramInt, paramString));
  }
  
  public IabException(int paramInt, String paramString, Exception paramException)
  {
    this(new IabResult(paramInt, paramString), paramException);
  }
  
  private IabException(IabResult paramIabResult)
  {
    this(paramIabResult, null);
  }
  
  private IabException(IabResult paramIabResult, Exception paramException)
  {
    super(paramIabResult.getMessage(), paramException);
    a = paramIabResult;
  }
  
  public IabResult getResult()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.IabException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */