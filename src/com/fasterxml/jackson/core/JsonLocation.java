package com.fasterxml.jackson.core;

import java.io.Serializable;

public class JsonLocation
  implements Serializable
{
  public static final JsonLocation NA = new JsonLocation("N/A", -1L, -1L, -1, -1);
  private static final long serialVersionUID = 1L;
  final int _columnNr;
  final int _lineNr;
  final transient Object _sourceRef;
  final long _totalBytes;
  final long _totalChars;
  
  public JsonLocation(Object paramObject, long paramLong, int paramInt1, int paramInt2)
  {
    this(paramObject, -1L, paramLong, paramInt1, paramInt2);
  }
  
  public JsonLocation(Object paramObject, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    _sourceRef = paramObject;
    _totalBytes = paramLong1;
    _totalChars = paramLong2;
    _lineNr = paramInt1;
    _columnNr = paramInt2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof JsonLocation)) {
        return false;
      }
      paramObject = (JsonLocation)paramObject;
      if (_sourceRef == null)
      {
        if (_sourceRef != null) {
          return false;
        }
      }
      else if (!_sourceRef.equals(_sourceRef)) {
        return false;
      }
    } while ((_lineNr == _lineNr) && (_columnNr == _columnNr) && (_totalChars == _totalChars) && (getByteOffset() == ((JsonLocation)paramObject).getByteOffset()));
    return false;
  }
  
  public long getByteOffset()
  {
    return _totalBytes;
  }
  
  public long getCharOffset()
  {
    return _totalChars;
  }
  
  public int getColumnNr()
  {
    return _columnNr;
  }
  
  public int getLineNr()
  {
    return _lineNr;
  }
  
  public Object getSourceRef()
  {
    return _sourceRef;
  }
  
  public int hashCode()
  {
    if (_sourceRef == null) {}
    for (int i = 1;; i = _sourceRef.hashCode()) {
      return ((i ^ _lineNr) + _columnNr ^ (int)_totalChars) + (int)_totalBytes;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    localStringBuilder.append("[Source: ");
    if (_sourceRef == null) {
      localStringBuilder.append("UNKNOWN");
    }
    for (;;)
    {
      localStringBuilder.append("; line: ");
      localStringBuilder.append(_lineNr);
      localStringBuilder.append(", column: ");
      localStringBuilder.append(_columnNr);
      localStringBuilder.append(']');
      return localStringBuilder.toString();
      localStringBuilder.append(_sourceRef.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.JsonLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */