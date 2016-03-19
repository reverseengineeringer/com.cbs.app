package com.conviva;

import android.content.Context;
import com.conviva.monitor.PlayerStates;
import com.conviva.session.Session;
import com.conviva.session.SessionFactory;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.Settings;
import com.conviva.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

public class LivePass
{
  public static final String OPTION_EXPLICIT_PLAYER_PAUSED = "explicitPlayerPaused";
  public static final String OPTION_EXTERNAL_BITRATE_REPORTING = "externalBitrateReporting";
  private static int _globalSessionId = -1;
  private static SessionFactory _sessionFactory;
  private static Settings _settings;
  private static Boolean _toggleTracesSet;
  private static Boolean _toggleTracesSetValue;
  private static PlatformUtils _utils;
  private static Boolean readyState = Boolean.valueOf(false);
  public final int STREAM_SELECTION_FAILURE = 1;
  public final int STREAM_SELECTION_SUCC = 0;
  public final int STREAM_SELECTION_TIMEOUT = 2;
  
  static
  {
    _settings = null;
    _utils = null;
    _sessionFactory = null;
    _toggleTracesSet = Boolean.valueOf(false);
    _toggleTracesSetValue = Boolean.valueOf(false);
  }
  
  public static void adEnd(int paramInt)
  {
    if ((!readyState.booleanValue()) && (_utils != null)) {
      _utils.ping("adEnd before LivePass.init");
    }
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.adEnd(): session not found");
      return;
    }
    localSession.adEnd();
  }
  
  public static void adStart(int paramInt)
  {
    if ((!readyState.booleanValue()) && (_utils != null)) {
      _utils.ping("adStart before LivePass.init");
    }
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.adStart(): session not found");
      return;
    }
    localSession.adStart();
  }
  
  public static void attachStreamer(int paramInt, Object paramObject)
  {
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.attachStreamer(): session not found");
      return;
    }
    localSession.attachStreamer(paramObject);
  }
  
  public static void cleanup()
  {
    if (_utils != null) {
      _utils.runProtected(new Callable()
      {
        public final Void call()
        {
          if (LivePass._sessionFactory != null) {
            LivePass._sessionFactory.cleanup();
          }
          LivePass.access$402(null);
          LivePass.access$602(-1);
          if (LivePass._utils != null) {
            LivePass._utils.cleanup();
          }
          LivePass.access$302(null);
          LivePass.access$502(Boolean.valueOf(false));
          return null;
        }
      }, "LivePass.cleanup");
    }
  }
  
  public static void cleanupSession(int paramInt)
  {
    if (!readyState.booleanValue()) {
      return;
    }
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        LivePass._sessionFactory.cleanupSession(val$sessionId);
        return null;
      }
    }, "Livepass.cleanupSession");
  }
  
  public static int createSession(Object paramObject, ConvivaContentInfo paramConvivaContentInfo)
  {
    return createSessionWorker(paramObject, paramConvivaContentInfo, null, false);
  }
  
  public static int createSession(Object paramObject, ConvivaContentInfo paramConvivaContentInfo, Map<String, Object> paramMap)
  {
    return createSessionWorker(paramObject, paramConvivaContentInfo, paramMap, false);
  }
  
  private static int createSessionWorker(Object paramObject, final ConvivaContentInfo paramConvivaContentInfo, final Map<String, Object> paramMap, final boolean paramBoolean)
  {
    if (!readyState.booleanValue())
    {
      if (_utils != null) {
        _utils.ping("createSession before LivePass.init");
      }
      throw new Exception("createSession before LivePass.init");
    }
    if (_settingscustomerKey == null) {
      throw new Exception("Cannot create session: customerKey is null");
    }
    final int i = _sessionFactory.newSessionId();
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        LivePass._sessionFactory.makeSession(val$streamer, paramConvivaContentInfo, paramMap, i, paramBoolean);
        LivePass._utils.log("LivePass Session Created");
        return null;
      }
    }, "LivePass.createSession");
    return i;
  }
  
  public static void init(String paramString, Context paramContext)
  {
    initWithSettings(paramString, null, paramContext);
  }
  
  public static void initWithSettings(String paramString, Map<String, Object> paramMap, Context paramContext)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new Exception("invalid customerKey: " + paramString);
    }
    if (readyState.booleanValue()) {
      return;
    }
    paramMap = Utils.CreateUtils(paramMap, paramContext);
    _utils = paramMap;
    paramMap.startFetchClientId();
    paramMap = _utils.getSettings();
    _settings = paramMap;
    clientInstanceId = _utils.randInt();
    _settingscustomerKey = paramString;
    _settingssendLogs = false;
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        if (LivePass._toggleTracesSet.booleanValue()) {
          _settingsenableLogging = LivePass._toggleTracesSetValue.booleanValue();
        }
        LivePass._utils.log("LivePass.init url=" + _settingsgatewayUrl + ", customerKey=" + _settingscustomerKey);
        PlayerStates.init();
        LivePass.access$402(new SessionFactory());
        LivePass.access$502(Boolean.valueOf(true));
        return null;
      }
    }, "LivePass.init");
  }
  
  public static void pauseMonitor(int paramInt)
  {
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.pauseSession(): session not found");
      return;
    }
    localSession.pauseMonitor();
  }
  
  public static void playerPaused(int paramInt, boolean paramBoolean)
  {
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.playerPaused(): session not found");
      return;
    }
    localSession.playerPaused(paramBoolean);
  }
  
  public static void reportError(int paramInt1, String paramString, int paramInt2)
  {
    Session localSession = _sessionFactory.getSession(paramInt1);
    if (localSession == null)
    {
      _utils.log("LivePass.reportError(): session not found");
      return;
    }
    localSession.reportError(StreamerError.makeUnscopedError(paramString, paramInt2));
  }
  
  public static void resumeMonitor(int paramInt, Object paramObject)
  {
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.resumeSession(): session not found");
      return;
    }
    localSession.attachStreamer(paramObject);
  }
  
  public static void sendEvent(String paramString, final Map<String, Object> paramMap)
  {
    if (!readyState.booleanValue())
    {
      if (_utils != null) {
        _utils.ping("sendGlobalEvent before LivePass.init");
      }
      return;
    }
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        if (LivePass._globalSessionId < 0) {
          LivePass.access$602(LivePass.createSessionWorker(null, new ConvivaContentInfo("", new HashMap()), null, true));
        }
        LivePass.sendSessionEvent(LivePass._globalSessionId, val$name, paramMap);
        return null;
      }
    }, "LivePass.sendGlobalEvent");
  }
  
  public static void sendSessionEvent(int paramInt, final String paramString, final Map<String, Object> paramMap)
  {
    if (!readyState.booleanValue())
    {
      if (_utils != null) {
        _utils.ping("sendEvent before LivePass.init");
      }
      return;
    }
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        LivePass._sessionFactory.getSession(val$sessionId).sendCustomEvent(paramString, paramMap);
        return null;
      }
    }, "LivePass.sendSessionEvent");
  }
  
  public static void setBitrate(int paramInt1, final int paramInt2)
  {
    if (!readyState.booleanValue())
    {
      if (_utils != null) {
        _utils.ping("setBitrate before LivePass.init");
      }
      return;
    }
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        LivePass._sessionFactory.getSession(val$sessionId).setBitrate(paramInt2);
        return null;
      }
    }, "setBitrate");
  }
  
  public static void setCdnNameOrResource(int paramInt, String paramString)
  {
    Session localSession = _sessionFactory.getSession(paramInt);
    if (localSession == null)
    {
      _utils.log("LivePass.setResource(): session not found");
      return;
    }
    localSession.setCdnNameOrResource(paramString);
  }
  
  public static void setCurrentStreamMetadata(int paramInt, Map<String, String> paramMap)
  {
    if (!readyState.booleanValue())
    {
      if (_utils != null) {
        _utils.ping("setCurrentMetadata before LivePass.init");
      }
      return;
    }
    final HashMap localHashMap = new HashMap();
    localHashMap.putAll(paramMap);
    if (localHashMap.containsKey("duration")) {
      localHashMap.put("duration", Integer.toString(_utils.parseInt((String)localHashMap.get("duration"), -1) * 1000));
    }
    _utils.runProtected(new Callable()
    {
      public final Void call()
      {
        LivePass._sessionFactory.getSession(val$sessionId).setMetadata(localHashMap);
        return null;
      }
    }, "setMetadata");
  }
  
  public static void toggleTraces(Boolean paramBoolean)
  {
    _toggleTracesSet = Boolean.valueOf(true);
    if (_settings != null)
    {
      _settingsenableLogging = paramBoolean.booleanValue();
      return;
    }
    _toggleTracesSetValue = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.conviva.LivePass
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */