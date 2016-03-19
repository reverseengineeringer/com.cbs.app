package com.cbs.app.livetv.model;

public enum UserStatusEnum
{
  private final String f;
  
  private UserStatusEnum(String paramString)
  {
    f = paramString;
  }
  
  public final String getString()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.model.UserStatusEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */