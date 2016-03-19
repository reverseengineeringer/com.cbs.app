package com.conviva.utils;

import java.io.StringReader;
import java.net.URLEncoder;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.a.a.d;

public abstract class PlatformUtils
{
  protected static PlatformUtils _instance = null;
  private static List<String> logBuffer = new LinkedList();
  protected final String DEFAULT_CLIENT_ID = "0";
  private final int MAX_SIZE_LOGBUFFER = 32;
  public final String _PLATFORM = "Android";
  public String _PLATFORM_VER = null;
  protected final String _TAG = "CONVIVA";
  private Boolean _isSendingPing = Boolean.valueOf(false);
  private String _pingUrl = null;
  protected int _referenceCount = 0;
  protected Settings _settings = null;
  public String clientId = "0";
  
  protected PlatformUtils(Settings paramSettings)
  {
    _settings = paramSettings;
    _referenceCount = 1;
    _pingUrl = null;
    _isSendingPing = Boolean.valueOf(false);
    _instance = this;
  }
  
  public static PlatformUtils getInstance()
  {
    if (_instance == null) {
      throw new Exception("CreateUtils module has not been called");
    }
    return _instance;
  }
  
  private void initPing()
  {
    if (_pingUrl == null)
    {
      Object localObject2 = null;
      Object localObject1 = localObject2;
      if (clientId != null)
      {
        int i = clientId.indexOf('.');
        localObject1 = localObject2;
        if (i >= 0) {
          localObject1 = clientId.substring(0, i);
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new Integer(randInt()).toString();
      }
      _pingUrl = (_settings.pingUrl + "?uuid=" + ((String)localObject2).toString() + "&comp=" + _settings.pingComponentName);
    }
  }
  
  private void onUncaughtException(String paramString, Exception paramException)
  {
    try
    {
      ping("Uncaught exception: " + paramException.toString());
      return;
    }
    catch (Exception paramString)
    {
      err("Caught exception while sending ping: " + paramString.toString());
    }
  }
  
  private String urlEncodeString(String paramString)
  {
    return URLEncoder.encode(paramString, "UTF-8");
  }
  
  public void cleanup()
  {
    _referenceCount -= 1;
    if (_referenceCount > 0) {
      return;
    }
    _settings = null;
  }
  
  public abstract void deleteLocalData();
  
  public double epochTimeMs()
  {
    return new Date().getTime();
  }
  
  public void err(String paramString)
  {
    log("ERROR: " + paramString);
  }
  
  public List<String> getLogs(int paramInt)
  {
    List localList = logBuffer;
    logBuffer = new LinkedList();
    return localList;
  }
  
  public abstract Map<String, String> getPlatformMetadata();
  
  public Settings getSettings()
  {
    return _settings;
  }
  
  public abstract void httpRequest(Boolean paramBoolean, String paramString1, String paramString2, String paramString3, CallableWithParameters.With1<String> paramWith1);
  
  public abstract Boolean inSleepingMode();
  
  public abstract Boolean isVisible();
  
  public Map<String, Object> jsonDecode(String paramString)
  {
    try
    {
      paramString = (Map)d.a(new StringReader(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      err("Failed to decode json string: " + paramString.toString());
    }
    return null;
  }
  
  public void jsonEncode(Map<String, Object> paramMap, CallableWithParameters.With1<String> paramWith1)
  {
    try
    {
      paramWith1.exec(d.a(paramMap));
      return;
    }
    catch (Exception paramMap)
    {
      err("Failed to encode json object: " + paramMap.toString());
    }
  }
  
  public void log(String paramString)
  {
    logConsole(paramString);
    String str = String.format("%.3f", new Object[] { Double.valueOf(epochTimeMs() / 1000.0D) });
    paramString = "[" + str + "] " + paramString;
    if (logBuffer.size() >= 32) {
      logBuffer.remove(0);
    }
    logBuffer.add(paramString);
  }
  
  public abstract void logConsole(String paramString);
  
  public void logSession(String paramString, int paramInt)
  {
    log("sid=" + paramInt + " " + paramString);
  }
  
  public int parseInt(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (Exception paramString) {}
    return paramInt;
  }
  
  public void ping(String paramString)
  {
    try
    {
      if (_isSendingPing.booleanValue()) {
        return;
      }
      _isSendingPing = Boolean.valueOf(true);
      initPing();
      paramString = _pingUrl + "&d=" + urlEncodeString(paramString);
      err("Ping: " + paramString);
      httpRequest(Boolean.valueOf(false), paramString, null, null, null);
      _isSendingPing = Boolean.valueOf(false);
      return;
    }
    catch (Exception paramString)
    {
      _isSendingPing = Boolean.valueOf(false);
      err("Failed to send ping");
    }
  }
  
  public int randInt()
  {
    return (int)Math.floor(Math.random() * 64000.0D);
  }
  
  public <V> void runProtected(Callable<V> paramCallable, String paramString)
  {
    try
    {
      paramCallable.call();
      return;
    }
    catch (Exception paramCallable)
    {
      onUncaughtException(paramString, paramCallable);
    }
  }
  
  public abstract void setClientIdFromServer(String paramString);
  
  public abstract void startFetchClientId();
}

/* Location:
 * Qualified Name:     com.conviva.utils.PlatformUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */