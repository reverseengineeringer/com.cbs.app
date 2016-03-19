package com.conviva.utils;

import java.util.LinkedList;
import java.util.List;

public class SlidingWindow<T>
{
  private int _capacity = 0;
  private List<T> _slots = null;
  
  public SlidingWindow(int paramInt)
  {
    if (paramInt > 0)
    {
      _capacity = paramInt;
      _slots = new LinkedList();
    }
  }
  
  public void add(T paramT)
  {
    _slots.add(0, paramT);
    if (_slots.size() > _capacity) {
      _slots.remove(_slots.size() - 1);
    }
  }
  
  public void clear()
  {
    _slots = new LinkedList();
  }
  
  public List<T> getSlots()
  {
    return _slots;
  }
  
  public int size()
  {
    return _slots.size();
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.SlidingWindow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */