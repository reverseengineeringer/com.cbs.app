package com.cbs.app.inappbilling.IABUtils;

public class IabResult
{
  int a;
  String b;
  
  public IabResult(int paramInt, String paramString)
  {
    a = paramInt;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      b = IabHelper.a(paramInt);
      return;
    }
    b = (paramString + " (response: " + IabHelper.a(paramInt) + ")");
  }
  
  public final boolean a()
  {
    if (a == 0) {}
    for (int i = 1; i == 0; i = 0) {
      return true;
    }
    return false;
  }
  
  public String getMessage()
  {
    return b;
  }
  
  public int getResponse()
  {
    return a;
  }
  
  public String toString()
  {
    return "IabResult: " + b;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.IabResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */