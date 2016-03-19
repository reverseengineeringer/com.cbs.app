package com.cbs.app.visualon.player;

import com.visualon.OSMPUtils.voLog;

public class TimeCal
{
  private static boolean a = false;
  private static long b;
  private static boolean c = false;
  
  public static void a(String paramString)
  {
    if (!a) {
      return;
    }
    long l1 = System.currentTimeMillis();
    if (!c)
    {
      c = true;
      b = l1;
      voLog.i("TimeCal " + paramString, "Current Time: " + l1 + " ms", new Object[0]);
    }
    for (;;)
    {
      b = l1;
      return;
      long l2 = b;
      voLog.i("TimeCal " + paramString, "Current Time: " + l1 + " ms. Time delta: " + (l1 - l2) + " ms", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.TimeCal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */