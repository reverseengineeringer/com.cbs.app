package com.fasterxml.jackson.databind.util;

final class PrimitiveArrayBuilder$Node<T>
{
  final T _data;
  final int _dataLength;
  Node<T> _next;
  
  public PrimitiveArrayBuilder$Node(T paramT, int paramInt)
  {
    _data = paramT;
    _dataLength = paramInt;
  }
  
  public final int copyData(T paramT, int paramInt)
  {
    System.arraycopy(_data, 0, paramT, paramInt, _dataLength);
    return _dataLength + paramInt;
  }
  
  public final T getData()
  {
    return (T)_data;
  }
  
  public final void linkNext(Node<T> paramNode)
  {
    if (_next != null) {
      throw new IllegalStateException();
    }
    _next = paramNode;
  }
  
  public final Node<T> next()
  {
    return _next;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.PrimitiveArrayBuilder.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */