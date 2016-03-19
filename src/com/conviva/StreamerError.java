package com.conviva;

public class StreamerError
{
  public static final int ERROR_SCOPE_RESOURCE = 3;
  public static final int ERROR_SCOPE_STREAM = 2;
  public static final int ERROR_SCOPE_STREAM_SEGMENT = 1;
  public static final int SEVERITY_FATAL = 1;
  public static final int SEVERITY_WARNING = 0;
  public static final int eErrorScope_Unknown = 0;
  private String _errorCode;
  private int _index;
  private int _scope;
  private int _severity;
  private StreamInfo _stream;
  
  public StreamerError(String paramString, StreamInfo paramStreamInfo, int paramInt1, int paramInt2, int paramInt3)
  {
    _errorCode = paramString;
    _stream = paramStreamInfo;
    _index = paramInt1;
    _severity = paramInt2;
    _scope = paramInt3;
  }
  
  public static StreamerError makeStreamError(String paramString, int paramInt, StreamInfo paramStreamInfo)
  {
    return new StreamerError(paramString, paramStreamInfo, -1, paramInt, 2);
  }
  
  public static StreamerError makeStreamSegmentError(String paramString, int paramInt1, StreamInfo paramStreamInfo, int paramInt2)
  {
    return new StreamerError(paramString, paramStreamInfo, paramInt2, paramInt1, 1);
  }
  
  public static StreamerError makeUnscopedError(String paramString, int paramInt)
  {
    return new StreamerError(paramString, null, -1, paramInt, 0);
  }
  
  public String getErrorCode()
  {
    return _errorCode;
  }
  
  public int getIndex()
  {
    return _index;
  }
  
  public int getScope()
  {
    return _scope;
  }
  
  public int getSeverity()
  {
    return _severity;
  }
  
  public StreamInfo getStream()
  {
    return _stream;
  }
}

/* Location:
 * Qualified Name:     com.conviva.StreamerError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */