package com.conviva.session;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class EventQueue
{
  private List<Map<String, Object>> _events = null;
  private int _nextSeqNumber = 0;
  
  public void enqueueEvent(String paramString, Map<String, Object> paramMap, int paramInt)
  {
    paramMap.put("t", paramString);
    paramMap.put("st", Integer.valueOf(paramInt));
    paramMap.put("seq", Integer.valueOf(_nextSeqNumber));
    _nextSeqNumber += 1;
    _events.add(paramMap);
  }
  
  public List<Map<String, Object>> flushEvents()
  {
    List localList = _events;
    _events = new ArrayList();
    return localList;
  }
  
  public int size()
  {
    return _events.size();
  }
}

/* Location:
 * Qualified Name:     com.conviva.session.EventQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */