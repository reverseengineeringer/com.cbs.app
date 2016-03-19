package com.fasterxml.jackson.core;

public class JsonGenerationException
  extends JsonProcessingException
{
  private static final long serialVersionUID = 123L;
  
  public JsonGenerationException(String paramString)
  {
    super(paramString, null);
  }
  
  public JsonGenerationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, null, paramThrowable);
  }
  
  public JsonGenerationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.JsonGenerationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */