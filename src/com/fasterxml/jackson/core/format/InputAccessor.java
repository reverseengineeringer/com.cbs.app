package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import java.io.EOFException;
import java.io.InputStream;

public abstract interface InputAccessor
{
  public abstract boolean hasMoreBytes();
  
  public abstract byte nextByte();
  
  public abstract void reset();
  
  public static class Std
    implements InputAccessor
  {
    protected final byte[] _buffer;
    protected int _bufferedEnd;
    protected final int _bufferedStart;
    protected final InputStream _in;
    protected int _ptr;
    
    public Std(InputStream paramInputStream, byte[] paramArrayOfByte)
    {
      _in = paramInputStream;
      _buffer = paramArrayOfByte;
      _bufferedStart = 0;
      _ptr = 0;
      _bufferedEnd = 0;
    }
    
    public Std(byte[] paramArrayOfByte)
    {
      _in = null;
      _buffer = paramArrayOfByte;
      _bufferedStart = 0;
      _bufferedEnd = paramArrayOfByte.length;
    }
    
    public Std(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      _in = null;
      _buffer = paramArrayOfByte;
      _ptr = paramInt1;
      _bufferedStart = paramInt1;
      _bufferedEnd = (paramInt1 + paramInt2);
    }
    
    public DataFormatMatcher createMatcher(JsonFactory paramJsonFactory, MatchStrength paramMatchStrength)
    {
      return new DataFormatMatcher(_in, _buffer, _bufferedStart, _bufferedEnd - _bufferedStart, paramJsonFactory, paramMatchStrength);
    }
    
    public boolean hasMoreBytes()
    {
      if (_ptr < _bufferedEnd) {
        return true;
      }
      if (_in == null) {
        return false;
      }
      int i = _buffer.length - _ptr;
      if (i <= 0) {
        return false;
      }
      i = _in.read(_buffer, _ptr, i);
      if (i <= 0) {
        return false;
      }
      _bufferedEnd += i;
      return true;
    }
    
    public byte nextByte()
    {
      if ((_ptr >= _bufferedEnd) && (!hasMoreBytes())) {
        throw new EOFException("Failed auto-detect: could not read more than " + _ptr + " bytes (max buffer size: " + _buffer.length + ")");
      }
      byte[] arrayOfByte = _buffer;
      int i = _ptr;
      _ptr = (i + 1);
      return arrayOfByte[i];
    }
    
    public void reset()
    {
      _ptr = _bufferedStart;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.format.InputAccessor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */