package com.conviva.session;

import com.conviva.ConvivaContentInfo;
import com.conviva.StreamerError;
import com.conviva.monitor.Monitor;
import com.conviva.platforms.PlatformApi;
import com.conviva.utils.CallableWithParameters.With1;
import com.conviva.utils.LivePassVersion;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.Settings;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;

public class Session
{
  private PlatformApi _api = null;
  private String _clv = LivePassVersion.getVersionStr();
  private ConvivaContentInfo _contentInfo = null;
  private EventQueue _eventQueue = null;
  private int _heartbeatSequenceNumber = 0;
  private Monitor _monitor = null;
  private Map<String, String> _nativeReprTags = null;
  private int _sessionId = 0;
  private Settings _settings = null;
  private double _startTimeMs = 0.0D;
  private PlatformUtils _utils = null;
  
  public Session(Object paramObject, ConvivaContentInfo paramConvivaContentInfo, Map<String, Object> paramMap, boolean paramBoolean)
  {
    _contentInfo = paramConvivaContentInfo;
    _sessionId = _utils.randInt();
    if (_contentInfo.tags == null)
    {
      _utils.err("tags should not be null");
      _contentInfo.tags = new HashMap();
    }
    paramConvivaContentInfo = _contentInfo.tags.keySet().iterator();
    while (paramConvivaContentInfo.hasNext())
    {
      String str = (String)paramConvivaContentInfo.next();
      if (_contentInfo.tags.get(str) == null) {
        _contentInfo.tags.put(str, "null");
      }
    }
    paramConvivaContentInfo = _utils.getSettings().platformApiName;
    if ((paramConvivaContentInfo != null) && (!paramConvivaContentInfo.isEmpty())) {}
    try
    {
      paramConvivaContentInfo = Class.forName(paramConvivaContentInfo);
      if (paramConvivaContentInfo != null) {
        _api = ((PlatformApi)paramConvivaContentInfo.getConstructor(new Class[] { Object.class }).newInstance(new Object[] { paramObject }));
      }
    }
    catch (Exception paramConvivaContentInfo)
    {
      for (;;)
      {
        paramConvivaContentInfo.printStackTrace();
      }
    }
    if (_api == null) {
      _api = _utils.getSettings().platformApi;
    }
    _nativeReprTags = _contentInfo.tags;
    _settings = _utils.getSettings();
    _eventQueue = new EventQueue();
    if (!paramBoolean) {
      _monitor = new Monitor(paramObject, _eventQueue, _contentInfo, paramMap, _sessionId, _api);
    }
  }
  
  private void createHBTimer(boolean paramBoolean)
  {
    int i = 0;
    if (!paramBoolean) {
      i = _settings.heartbeatIntervalMs;
    }
    _api.createTimer(new TimerTask()
    {
      public void run()
      {
        Session.this.sendHeartbeat();
      }
    }, i, _settings.heartbeatIntervalMs, "sendHeartbeat");
  }
  
  private void encodeAndPostHeartbeat(Map<String, Object> paramMap)
  {
    try
    {
      _utils.jsonEncode(paramMap, new CallableWithParameters.With1()
      {
        public void exec(String paramAnonymousString)
        {
          try
          {
            Session.this.postHeartbeat(paramAnonymousString);
            return;
          }
          catch (Exception paramAnonymousString)
          {
            _utils.log("JSON post error: " + paramAnonymousString.toString());
          }
        }
      });
      return;
    }
    catch (Exception paramMap)
    {
      _utils.log("JSON encoding error: " + paramMap.toString());
    }
  }
  
  private Map<String, Object> makeHeartbeat()
  {
    Object localObject = _eventQueue.flushEvents();
    HashMap localHashMap = new HashMap();
    localHashMap.put("t", "CwsSessionHb");
    localHashMap.put("evs", localObject);
    localHashMap.put("cid", _settings.customerKey);
    localHashMap.put("clid", _utils.clientId);
    localHashMap.put("sid", Integer.valueOf(_sessionId));
    localHashMap.put("seq", Integer.valueOf(_heartbeatSequenceNumber));
    localHashMap.put("pver", _settings.protocolVersion);
    localHashMap.put("clv", _clv);
    localHashMap.put("iid", Integer.valueOf(_settings.clientInstanceId));
    localObject = _utils.getPlatformMetadata();
    if (localObject != null) {
      localHashMap.put("pm", localObject);
    }
    localHashMap.put("tags", _nativeReprTags);
    _utils.getClass();
    _utils.getClass();
    localHashMap.put("pt", "Android");
    if (_utils._PLATFORM_VER != null) {
      localHashMap.put("ptv", _utils._PLATFORM_VER);
    }
    if (_contentInfo.viewerId != null) {
      localHashMap.put("vid", _contentInfo.viewerId);
    }
    if (_monitor != null)
    {
      localHashMap.put("an", _contentInfo.assetName);
      localHashMap.put("lv", _contentInfo.isLive);
      _monitor.updateHeartbeat(localHashMap);
    }
    for (;;)
    {
      if (_contentInfo.playerName != null) {
        localHashMap.put("pn", _contentInfo.playerName);
      }
      if (_settings.sendLogs) {
        localHashMap.put("lg", _utils.getLogs(_sessionId));
      }
      localHashMap.put("st", Integer.valueOf((int)(_utils.epochTimeMs() - _startTimeMs)));
      localHashMap.put("cts", Double.valueOf(_utils.epochTimeMs() / 1000.0D));
      _heartbeatSequenceNumber += 1;
      return localHashMap;
      localHashMap.put("sf", Integer.valueOf(0));
    }
  }
  
  private void onHeartbeatResponse(String paramString)
  {
    if (paramString == null)
    {
      _utils.log("JSON: Received null response to POST request");
      return;
    }
    _utils.logConsole("onHeartbeatResponse: data = " + paramString);
    Map localMap = _utils.jsonDecode(paramString);
    if (localMap == null)
    {
      _utils.log("JSON: Received null decoded response");
      return;
    }
    if (localMap.containsKey("clid")) {
      _utils.setClientIdFromServer(localMap.get("clid").toString());
    }
    boolean bool;
    label130:
    PlatformUtils localPlatformUtils;
    StringBuilder localStringBuilder;
    if ((localMap.containsKey("slg")) && (((Boolean)localMap.get("slg")).booleanValue()))
    {
      bool = true;
      if (bool != _settings.sendLogs)
      {
        localPlatformUtils = _utils;
        localStringBuilder = new StringBuilder("Turning ");
        if (!bool) {
          break label359;
        }
      }
    }
    label359:
    for (paramString = "on";; paramString = "off")
    {
      localPlatformUtils.log(paramString + " sending of logs");
      _settings.sendLogs = bool;
      if (localMap.containsKey("hbi"))
      {
        long l = ((Long)localMap.get("hbi")).longValue() * 1000L;
        if (_settings.heartbeatIntervalMs != l)
        {
          _utils.log("Received hbIntervalMs from server " + l);
          _settings.heartbeatIntervalMs = ((int)l);
          createHBTimer(false);
        }
      }
      if (!localMap.containsKey("gw")) {
        break;
      }
      paramString = (String)localMap.get("gw");
      if (_settings.gatewayUrl.equals(paramString)) {
        break;
      }
      _utils.log("Received gatewayUrl from server " + paramString);
      _settings.gatewayUrl = paramString;
      return;
      bool = false;
      break label130;
    }
  }
  
  private void postHeartbeat(String paramString)
  {
    String str = _settings.gatewayUrl + _settings.gatewayPath;
    _utils.logSession("Send HB[" + (_heartbeatSequenceNumber - 1) + "]", _sessionId);
    _utils.logConsole("heartbeat to be sent: " + paramString);
    _utils.httpRequest(Boolean.valueOf(true), str, paramString, "application/json", new CallableWithParameters.With1()
    {
      public void exec(String paramAnonymousString)
      {
        Session.this.onHeartbeatResponse(paramAnonymousString);
      }
    });
  }
  
  private void sendHeartbeat()
  {
    int i = 0;
    if (_eventQueue.size() > 0) {}
    Map localMap;
    do
    {
      i = 1;
      while ((i == 0) && ((_utils.inSleepingMode().booleanValue()) || (!_utils.isVisible().booleanValue())))
      {
        _utils.log("Do not send out heartbeat: player is sleeping or not visible");
        return;
        if (_monitor == null) {
          return;
        }
      }
      localMap = makeHeartbeat();
    } while (localMap == null);
    encodeAndPostHeartbeat(localMap);
  }
  
  public void adEnd()
  {
    if (_monitor != null) {
      _monitor.adEnd();
    }
  }
  
  public void adStart()
  {
    if (_monitor != null) {
      _monitor.adStart();
    }
  }
  
  public void attachStreamer(Object paramObject)
  {
    _monitor.attachStreamer(paramObject);
  }
  
  public void cleanup()
  {
    _utils.log("Schedule the last hb before session cleanup");
    if (_monitor != null) {
      sendSessionEndEvent();
    }
    sendHeartbeat();
    _api.cleanup();
    _api = null;
    if (_monitor != null)
    {
      _monitor.cleanup();
      _monitor = null;
    }
  }
  
  public void pauseMonitor()
  {
    _monitor.pauseMonitor();
  }
  
  public void playerPaused(boolean paramBoolean)
  {
    _monitor.playerPaused(paramBoolean);
  }
  
  public void reportError(StreamerError paramStreamerError)
  {
    if (_monitor != null) {
      _monitor.OnError(paramStreamerError);
    }
  }
  
  public void sendCustomEvent(String paramString, Map<String, Object> paramMap)
  {
    _utils.log("cws.sendEvent " + paramString);
    HashMap localHashMap = new HashMap();
    localHashMap.put("name", paramString);
    localHashMap.put("attr", paramMap);
    _eventQueue.enqueueEvent("CwsCustomEvent", localHashMap, (int)(_utils.epochTimeMs() - _startTimeMs));
  }
  
  public void sendSessionEndEvent()
  {
    _utils.log("cws.sendSessionEndEvent()");
    HashMap localHashMap = new HashMap();
    _eventQueue.enqueueEvent("CwsSessionEndEvent", localHashMap, (int)(_utils.epochTimeMs() - _startTimeMs));
  }
  
  public void setBitrate(int paramInt)
  {
    _monitor.setBitrate(paramInt);
  }
  
  public void setCdnNameOrResource(String paramString)
  {
    if (_monitor != null) {
      _monitor.SetStream(-1, paramString, paramString);
    }
  }
  
  public void setMetadata(Map<String, String> paramMap)
  {
    _utils.log("cws.setMetadata");
    if (_monitor != null) {
      _monitor.OnMetadata(paramMap);
    }
  }
  
  public void start()
  {
    _utils.log("Session.start assetName=" + _contentInfo.assetName);
    _startTimeMs = _utils.epochTimeMs();
    try
    {
      if (_monitor != null) {
        _monitor.start(_startTimeMs);
      }
      _heartbeatSequenceNumber = 0;
      createHBTimer(true);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.session.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */