package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ContainerBuilder
{
  private static final int MAX_BUF = 1000;
  private Object[] b;
  private List<Object> list;
  private Map<String, Object> map;
  private int start;
  private int tail;
  
  public ContainerBuilder(int paramInt)
  {
    b = new Object[paramInt & 0xFFFFFFFE];
  }
  
  private List<Object> _buildList(boolean paramBoolean)
  {
    int i = 2;
    int j = tail - start;
    if (paramBoolean) {
      if (j >= 2) {
        break label113;
      }
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList(i);
      i = start;
      for (;;)
      {
        if (i < tail)
        {
          localArrayList.add(b[i]);
          i += 1;
          continue;
          if (j < 20)
          {
            i = 20;
            break;
          }
          if (j < 1000)
          {
            i = (j >> 1) + j;
            break;
          }
          i = (j >> 2) + j;
          break;
        }
      }
      tail = start;
      return localArrayList;
      label113:
      i = j;
    }
  }
  
  private Map<String, Object> _buildMap(boolean paramBoolean)
  {
    int i = tail - start >> 1;
    if (paramBoolean) {
      if (i <= 3) {
        i = 4;
      }
    }
    LinkedHashMap localLinkedHashMap;
    for (;;)
    {
      localLinkedHashMap = new LinkedHashMap(i, 0.8F);
      i = start;
      while (i < tail)
      {
        localLinkedHashMap.put((String)b[i], b[(i + 1)]);
        i += 2;
      }
      if (i <= 40)
      {
        i += (i >> 1);
      }
      else
      {
        i += (i >> 2) + (i >> 4);
        continue;
        if (i < 10) {
          i = 16;
        } else if (i < 1000) {
          i += (i >> 1);
        } else {
          i += i / 3;
        }
      }
    }
    tail = start;
    return localLinkedHashMap;
  }
  
  private void _expandList(Object paramObject)
  {
    if (b.length < 1000)
    {
      b = Arrays.copyOf(b, b.length << 1);
      Object[] arrayOfObject = b;
      int i = tail;
      tail = (i + 1);
      arrayOfObject[i] = paramObject;
      return;
    }
    list = _buildList(false);
    list.add(paramObject);
  }
  
  private void _expandMap(String paramString, Object paramObject)
  {
    if (b.length < 1000)
    {
      b = Arrays.copyOf(b, b.length << 1);
      Object[] arrayOfObject = b;
      int i = tail;
      tail = (i + 1);
      arrayOfObject[i] = paramString;
      paramString = b;
      i = tail;
      tail = (i + 1);
      paramString[i] = paramObject;
      return;
    }
    map = _buildMap(false);
    map.put(paramString, paramObject);
  }
  
  public final void add(Object paramObject)
  {
    if (list != null)
    {
      list.add(paramObject);
      return;
    }
    if (tail >= b.length)
    {
      _expandList(paramObject);
      return;
    }
    Object[] arrayOfObject = b;
    int i = tail;
    tail = (i + 1);
    arrayOfObject[i] = paramObject;
  }
  
  public final int bufferLength()
  {
    return b.length;
  }
  
  public final boolean canReuse()
  {
    return (list == null) && (map == null);
  }
  
  public final Object[] finishArray(int paramInt)
  {
    Object[] arrayOfObject;
    if (list == null) {
      arrayOfObject = Arrays.copyOfRange(b, start, tail);
    }
    for (;;)
    {
      start = paramInt;
      return arrayOfObject;
      arrayOfObject = list.toArray(new Object[tail - start]);
      list = null;
    }
  }
  
  public final <T> Object[] finishArray(int paramInt, Class<T> paramClass)
  {
    int i = tail - start;
    paramClass = (Object[])Array.newInstance(paramClass, i);
    if (list == null) {
      System.arraycopy(b, start, paramClass, 0, i);
    }
    for (;;)
    {
      start = paramInt;
      return paramClass;
      paramClass = list.toArray(paramClass);
      list = null;
    }
  }
  
  public final List<Object> finishList(int paramInt)
  {
    List localList = list;
    if (localList == null) {
      localList = _buildList(true);
    }
    for (;;)
    {
      start = paramInt;
      return localList;
      list = null;
    }
  }
  
  public final Map<String, Object> finishMap(int paramInt)
  {
    Map localMap = map;
    if (localMap == null) {
      localMap = _buildMap(true);
    }
    for (;;)
    {
      start = paramInt;
      return localMap;
      map = null;
    }
  }
  
  public final void put(String paramString, Object paramObject)
  {
    if (map != null)
    {
      map.put(paramString, paramObject);
      return;
    }
    if (tail + 2 > b.length)
    {
      _expandMap(paramString, paramObject);
      return;
    }
    Object[] arrayOfObject = b;
    int i = tail;
    tail = (i + 1);
    arrayOfObject[i] = paramString;
    paramString = b;
    i = tail;
    tail = (i + 1);
    paramString[i] = paramObject;
  }
  
  public final int start()
  {
    if ((list != null) || (map != null)) {
      throw new IllegalStateException();
    }
    int i = start;
    start = tail;
    return i;
  }
  
  public final int startList(Object paramObject)
  {
    if ((list != null) || (map != null)) {
      throw new IllegalStateException();
    }
    int i = start;
    start = tail;
    add(paramObject);
    return i;
  }
  
  public final int startMap(String paramString, Object paramObject)
  {
    if ((list != null) || (map != null)) {
      throw new IllegalStateException();
    }
    int i = start;
    start = tail;
    put(paramString, paramObject);
    return i;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.ContainerBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */