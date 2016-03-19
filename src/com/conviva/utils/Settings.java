package com.conviva.utils;

import com.conviva.platforms.PlatformApi;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Settings
{
  public static final int POLL_STREAMER_INTERVAL_MS = 200;
  public static final int POLL_STREAMER_WINDOW_SIZE_MS = 1000;
  public int clientInstanceId = 0;
  public String customerKey = null;
  public boolean enableLogging = false;
  public String gatewayPath = "/0/wsg";
  public String gatewayUrl = "https://cws.conviva.com";
  public int heartbeatIntervalMs = 20000;
  public int loadDataTimeoutMs = 10000;
  public int maxEventsPerHeartbeat = 10;
  public String pingComponentName = "javacws";
  public String pingUrl = "https://pings.conviva.com/ping.ping";
  public PlatformApi platformApi = null;
  public String platformApiName = "com.conviva.platforms.AndroidApi";
  public String protocolVersion = "1.7";
  public boolean sendLogs = false;
  
  public void changeSettings(Map<String, Object> paramMap)
  {
    if (paramMap == null) {}
    String str;
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        str = (String)((Map.Entry)localObject).getKey();
        localObject = ((Map.Entry)localObject).getValue();
        if (str.equals("platformApiName"))
        {
          platformApiName = ((String)localObject);
        }
        else if (str.equals("platformApi"))
        {
          platformApi = ((PlatformApi)localObject);
        }
        else if (str.equals("gatewayUrl"))
        {
          gatewayUrl = ((String)localObject);
        }
        else if (str.equals("pingUrl"))
        {
          pingUrl = ((String)localObject);
        }
        else if (str.equals("heartbeatIntervalMs"))
        {
          heartbeatIntervalMs = ((Integer)localObject).intValue();
        }
        else
        {
          if (!str.equals("enableLogging")) {
            break label179;
          }
          enableLogging = ((Boolean)localObject).booleanValue();
        }
      }
    }
    label179:
    throw new Exception("Unsupported settings: " + str);
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.Settings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */