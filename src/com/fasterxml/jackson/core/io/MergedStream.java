package com.fasterxml.jackson.core.io;

import java.io.InputStream;

public final class MergedStream
  extends InputStream
{
  private byte[] _b;
  private final IOContext _ctxt;
  private final int _end;
  private final InputStream _in;
  private int _ptr;
  
  public MergedStream(IOContext paramIOContext, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _ctxt = paramIOContext;
    _in = paramInputStream;
    _b = paramArrayOfByte;
    _ptr = paramInt1;
    _end = paramInt2;
  }
  
  private void _free()
  {
    byte[] arrayOfByte = _b;
    if (arrayOfByte != null)
    {
      _b = null;
      if (_ctxt != null) {
        _ctxt.releaseReadIOBuffer(arrayOfByte);
      }
    }
  }
  
  public final int available()
  {
    if (_b != null) {
      return _end - _ptr;
    }
    return _in.available();
  }
  
  public final void close()
  {
    _free();
    _in.close();
  }
  
  public final void mark(int paramInt)
  {
    if (_b == null) {
      _in.mark(paramInt);
    }
  }
  
  public final boolean markSupported()
  {
    return (_b == null) && (_in.markSupported());
  }
  
  public final int read()
  {
    if (_b != null)
    {
      byte[] arrayOfByte = _b;
      int i = _ptr;
      _ptr = (i + 1);
      i = arrayOfByte[i];
      if (_ptr >= _end) {
        _free();
      }
      return i & 0xFF;
    }
    return _in.read();
  }
  
  public final int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (_b != null)
    {
      int j = _end - _ptr;
      int i = paramInt2;
      if (paramInt2 > j) {
        i = j;
      }
      System.arraycopy(_b, _ptr, paramArrayOfByte, paramInt1, i);
      _ptr += i;
      if (_ptr >= _end) {
        _free();
      }
      return i;
    }
    return _in.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public final void reset()
  {
    if (_b == null) {
      _in.reset();
    }
  }
  
  public final long skip(long paramLong)
  {
    long l1;
    if (_b != null)
    {
      int i = _end - _ptr;
      if (i > paramLong)
      {
        _ptr += (int)paramLong;
        return paramLong;
      }
      _free();
      l1 = i + 0L;
      paramLong -= i;
    }
    for (;;)
    {
      long l2 = l1;
      if (paramLong > 0L) {
        l2 = l1 + _in.skip(paramLong);
      }
      return l2;
      l1 = 0L;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.io.MergedStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */