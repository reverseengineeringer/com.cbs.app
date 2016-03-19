package com.cbs.app;

public final class EndPoints
{
  public static class Builder
  {
    public EndPoints.Versions a = EndPoints.Versions.a;
    public String b = "http://www.cbs.com";
    EndPoints.MidLink c = EndPoints.MidLink.a;
  }
  
  public static enum MidLink
  {
    public String f;
    
    private MidLink(String paramString)
    {
      f = paramString;
    }
  }
  
  public static enum Versions
  {
    public String f;
    
    private Versions(String paramString)
    {
      f = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.EndPoints
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */