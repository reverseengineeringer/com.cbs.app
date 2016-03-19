package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

public final class ByteArrayBuilder
  extends OutputStream
{
  static final int DEFAULT_BLOCK_ARRAY_SIZE = 40;
  private static final int INITIAL_BLOCK_SIZE = 500;
  private static final int MAX_BLOCK_SIZE = 262144;
  public static final byte[] NO_BYTES = new byte[0];
  private final BufferRecycler _bufferRecycler;
  private byte[] _currBlock;
  private int _currBlockPtr;
  private final LinkedList<byte[]> _pastBlocks = new LinkedList();
  private int _pastLen;
  
  public ByteArrayBuilder()
  {
    this(null);
  }
  
  public ByteArrayBuilder(int paramInt)
  {
    this(null, paramInt);
  }
  
  public ByteArrayBuilder(BufferRecycler paramBufferRecycler)
  {
    this(paramBufferRecycler, 500);
  }
  
  public ByteArrayBuilder(BufferRecycler paramBufferRecycler, int paramInt)
  {
    _bufferRecycler = paramBufferRecycler;
    if (paramBufferRecycler == null) {}
    for (paramBufferRecycler = new byte[paramInt];; paramBufferRecycler = paramBufferRecycler.allocByteBuffer(2))
    {
      _currBlock = paramBufferRecycler;
      return;
    }
  }
  
  private void _allocMore()
  {
    int i = 262144;
    _pastLen += _currBlock.length;
    int j = Math.max(_pastLen >> 1, 1000);
    if (j > 262144) {}
    for (;;)
    {
      _pastBlocks.add(_currBlock);
      _currBlock = new byte[i];
      _currBlockPtr = 0;
      return;
      i = j;
    }
  }
  
  public final void append(int paramInt)
  {
    if (_currBlockPtr >= _currBlock.length) {
      _allocMore();
    }
    byte[] arrayOfByte = _currBlock;
    int i = _currBlockPtr;
    _currBlockPtr = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
  }
  
  public final void appendThreeBytes(int paramInt)
  {
    if (_currBlockPtr + 2 < _currBlock.length)
    {
      byte[] arrayOfByte = _currBlock;
      int i = _currBlockPtr;
      _currBlockPtr = (i + 1);
      arrayOfByte[i] = ((byte)(paramInt >> 16));
      arrayOfByte = _currBlock;
      i = _currBlockPtr;
      _currBlockPtr = (i + 1);
      arrayOfByte[i] = ((byte)(paramInt >> 8));
      arrayOfByte = _currBlock;
      i = _currBlockPtr;
      _currBlockPtr = (i + 1);
      arrayOfByte[i] = ((byte)paramInt);
      return;
    }
    append(paramInt >> 16);
    append(paramInt >> 8);
    append(paramInt);
  }
  
  public final void appendTwoBytes(int paramInt)
  {
    if (_currBlockPtr + 1 < _currBlock.length)
    {
      byte[] arrayOfByte = _currBlock;
      int i = _currBlockPtr;
      _currBlockPtr = (i + 1);
      arrayOfByte[i] = ((byte)(paramInt >> 8));
      arrayOfByte = _currBlock;
      i = _currBlockPtr;
      _currBlockPtr = (i + 1);
      arrayOfByte[i] = ((byte)paramInt);
      return;
    }
    append(paramInt >> 8);
    append(paramInt);
  }
  
  public final void close() {}
  
  public final byte[] completeAndCoalesce(int paramInt)
  {
    _currBlockPtr = paramInt;
    return toByteArray();
  }
  
  public final byte[] finishCurrentSegment()
  {
    _allocMore();
    return _currBlock;
  }
  
  public final void flush() {}
  
  public final byte[] getCurrentSegment()
  {
    return _currBlock;
  }
  
  public final int getCurrentSegmentLength()
  {
    return _currBlockPtr;
  }
  
  public final void release()
  {
    reset();
    if ((_bufferRecycler != null) && (_currBlock != null))
    {
      _bufferRecycler.releaseByteBuffer(2, _currBlock);
      _currBlock = null;
    }
  }
  
  public final void reset()
  {
    _pastLen = 0;
    _currBlockPtr = 0;
    if (!_pastBlocks.isEmpty()) {
      _pastBlocks.clear();
    }
  }
  
  public final byte[] resetAndGetFirstSegment()
  {
    reset();
    return _currBlock;
  }
  
  public final void setCurrentSegmentLength(int paramInt)
  {
    _currBlockPtr = paramInt;
  }
  
  public final byte[] toByteArray()
  {
    int j = _pastLen + _currBlockPtr;
    if (j == 0) {
      return NO_BYTES;
    }
    byte[] arrayOfByte1 = new byte[j];
    Iterator localIterator = _pastBlocks.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      byte[] arrayOfByte2 = (byte[])localIterator.next();
      int k = arrayOfByte2.length;
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i, k);
      i += k;
    }
    System.arraycopy(_currBlock, 0, arrayOfByte1, i, _currBlockPtr);
    i = _currBlockPtr + i;
    if (i != j) {
      throw new RuntimeException("Internal error: total len assumed to be " + j + ", copied " + i + " bytes");
    }
    if (!_pastBlocks.isEmpty()) {
      reset();
    }
    return arrayOfByte1;
  }
  
  public final void write(int paramInt)
  {
    append(paramInt);
  }
  
  public final void write(byte[] paramArrayOfByte)
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    for (;;)
    {
      int k = Math.min(_currBlock.length - _currBlockPtr, paramInt2);
      int j = i;
      paramInt1 = paramInt2;
      if (k > 0)
      {
        System.arraycopy(paramArrayOfByte, i, _currBlock, _currBlockPtr, k);
        j = i + k;
        _currBlockPtr += k;
        paramInt1 = paramInt2 - k;
      }
      if (paramInt1 <= 0) {
        break;
      }
      _allocMore();
      i = j;
      paramInt2 = paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.util.ByteArrayBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */