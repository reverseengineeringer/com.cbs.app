package com.conviva.monitor;

import java.util.HashMap;
import java.util.Map;

public class PlayerStates
{
  public static final String BUFFERING = "BUFFERING";
  public static final String NOTMONITORED = "NOTMONITORED";
  public static final String PAUSED = "PAUSED";
  public static final String PLAYING = "PLAYING";
  public static final String STOPPED = "STOPPED";
  public static final String UNKNOWN = "UNKNOWN";
  public static final int eBuffering = 6;
  public static final int eNotMonitored = 98;
  public static final int ePaused = 12;
  public static final int ePlaying = 3;
  public static final int eStopped = 1;
  public static final int eUnknown = 100;
  public static Map<String, Integer> stateToInt = null;
  
  public static void cleanup()
  {
    stateToInt = null;
  }
  
  public static void init()
  {
    HashMap localHashMap = new HashMap();
    stateToInt = localHashMap;
    localHashMap.put("PLAYING", Integer.valueOf(3));
    stateToInt.put("STOPPED", Integer.valueOf(1));
    stateToInt.put("PAUSED", Integer.valueOf(12));
    stateToInt.put("BUFFERING", Integer.valueOf(6));
    stateToInt.put("NOTMONITORED", Integer.valueOf(98));
    stateToInt.put("UNKNOWN", Integer.valueOf(100));
  }
}

/* Location:
 * Qualified Name:     com.conviva.monitor.PlayerStates
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */