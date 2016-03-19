package com.conviva.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public class Eventer
{
  private List<Callable<Void>> _handlers = new ArrayList();
  
  public void AddHandler(Callable<Void> paramCallable)
  {
    _handlers.add(paramCallable);
  }
  
  public void Cleanup()
  {
    _handlers.clear();
  }
  
  public void DeleteHandler(Callable<Void> paramCallable)
  {
    _handlers.remove(paramCallable);
  }
  
  public void DispatchEvent()
  {
    try
    {
      Iterator localIterator = _handlers.iterator();
      while (localIterator.hasNext()) {
        ((Callable)localIterator.next()).call();
      }
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.Eventer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */