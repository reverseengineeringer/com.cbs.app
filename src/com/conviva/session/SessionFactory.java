package com.conviva.session;

import com.conviva.ConvivaContentInfo;
import com.conviva.utils.PlatformUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SessionFactory
{
  private int _nextSessionId = 0;
  private Map<Integer, Session> _sessionsById = null;
  private PlatformUtils _utils = null;
  
  public void cleanup()
  {
    if (_sessionsById != null)
    {
      Iterator localIterator = _sessionsById.entrySet().iterator();
      while (localIterator.hasNext()) {
        cleanupSession(((Integer)((Map.Entry)localIterator.next()).getKey()).intValue());
      }
    }
    _sessionsById = null;
    _nextSessionId = 0;
  }
  
  public void cleanupSession(int paramInt)
  {
    Session localSession = (Session)_sessionsById.get(Integer.valueOf(paramInt));
    if (localSession != null)
    {
      _sessionsById.remove(Integer.valueOf(paramInt));
      _utils.log("session id(" + paramInt + ") is cleaned up and removed from sessionFactory");
      localSession.cleanup();
    }
  }
  
  public Session getSession(int paramInt)
  {
    return (Session)_sessionsById.get(Integer.valueOf(paramInt));
  }
  
  public Session makeSession(Object paramObject, ConvivaContentInfo paramConvivaContentInfo, Map<String, Object> paramMap, int paramInt, boolean paramBoolean)
  {
    paramObject = new Session(paramObject, paramConvivaContentInfo, paramMap, paramBoolean);
    _sessionsById.put(Integer.valueOf(paramInt), paramObject);
    _utils.log("Session is created; session is about to start");
    ((Session)paramObject).start();
    return (Session)paramObject;
  }
  
  public int newSessionId()
  {
    int i = _nextSessionId;
    _nextSessionId += 1;
    return i;
  }
}

/* Location:
 * Qualified Name:     com.conviva.session.SessionFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */