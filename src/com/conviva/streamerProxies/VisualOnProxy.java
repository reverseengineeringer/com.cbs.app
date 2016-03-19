package com.conviva.streamerProxies;

import com.conviva.ConvivaStreamerProxy;
import com.conviva.StreamerError;
import com.conviva.monitor.IMonitorNotifier;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.TLog;
import com.visualon.OSMPBasePlayer.voOSBasePlayer;
import com.visualon.OSMPBasePlayer.voOSBasePlayer.onEventListener;
import com.visualon.OSMPUtils.voOSVideoPerformance;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class VisualOnProxy
  implements ConvivaStreamerProxy, voOSBasePlayer.onEventListener
{
  private static final String TAG = "CONVIVA";
  private int _durationMs = -1;
  private voOSBasePlayer.onEventListener _iListenerOrig = null;
  private IMonitorNotifier _notifier = null;
  private voOSBasePlayer _streamer = null;
  protected PlatformUtils _utils = null;
  
  public VisualOnProxy(Object paramObject)
  {
    _streamer = ((voOSBasePlayer)paramObject);
    if (_streamer != null) {}
    for (;;)
    {
      try
      {
        paramObject = voOSBasePlayer.class.getDeclaredFields();
        int j = paramObject.length;
        i = 0;
        if (i < j)
        {
          Object localObject = paramObject[i];
          if (!voOSBasePlayer.onEventListener.class.equals(((Field)localObject).getType())) {
            continue;
          }
          ((Field)localObject).setAccessible(true);
          _iListenerOrig = ((voOSBasePlayer.onEventListener)((Field)localObject).get(_streamer));
        }
      }
      catch (Exception paramObject)
      {
        int i;
        TLog.i("CONVIVA", ((Exception)paramObject).toString());
        continue;
      }
      _streamer.setEventListener(this);
      return;
      i += 1;
    }
  }
  
  public void Cleanup()
  {
    _streamer.setEventListener(_iListenerOrig);
    _iListenerOrig = null;
    _streamer = null;
    _notifier = null;
  }
  
  public int GetBufferLengthMs()
  {
    return -1;
  }
  
  public int GetCapabilities()
  {
    return 7;
  }
  
  public int GetDroppedFrames()
  {
    voOSVideoPerformance localvoOSVideoPerformance = (voOSVideoPerformance)_streamer.GetParam(53);
    if (localvoOSVideoPerformance != null) {
      return localvoOSVideoPerformance.RenderDropNum();
    }
    return -1;
  }
  
  public int GetIsLive()
  {
    if (_streamer.GetDuration() == 0) {
      return 1;
    }
    return -1;
  }
  
  public int GetMinBufferLengthMs()
  {
    return -1;
  }
  
  public int GetPlayheadTimeMs()
  {
    try
    {
      if (_streamer != null)
      {
        int i = _streamer.GetPos();
        if (((Integer)_streamer.GetParam(14)).intValue() == 3) {
          _notifier.SetPlayingState(12);
        }
        return i;
      }
    }
    catch (Exception localException)
    {
      return -1;
    }
    return -1;
  }
  
  public double GetRenderedFrameRate()
  {
    voOSVideoPerformance localvoOSVideoPerformance = (voOSVideoPerformance)_streamer.GetParam(53);
    if (localvoOSVideoPerformance != null) {
      return 1000.0D / localvoOSVideoPerformance.AverageRenderTime();
    }
    return -1.0D;
  }
  
  public String GetServerAddress()
  {
    return null;
  }
  
  public int GetStartingBufferLengthMs()
  {
    return -1;
  }
  
  public String GetStreamerType()
  {
    return "VisualOn";
  }
  
  public String GetStreamerVersion()
  {
    return null;
  }
  
  public void Log(String paramString)
  {
    if (_notifier != null)
    {
      _notifier.Log(paramString);
      return;
    }
    _utils.log(paramString);
  }
  
  public int onEvent(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    switch (paramInt1)
    {
    }
    while (_iListenerOrig != null)
    {
      return _iListenerOrig.onEvent(paramInt1, paramInt2, paramInt3, paramObject);
      Object localObject = StreamerError.makeUnscopedError(Integer.toString(paramInt1), 1);
      _notifier.OnError((StreamerError)localObject);
      continue;
      int i = _streamer.GetDuration();
      if (i != _durationMs)
      {
        _durationMs = i;
        localObject = new HashMap();
        ((HashMap)localObject).put("duration", String.valueOf(i));
        _notifier.OnMetadata((Map)localObject);
      }
      if (paramInt2 == 1)
      {
        _notifier.SetStream(paramInt3 / 1000, null, null);
        continue;
        _notifier.SetPlayingState(1);
        continue;
        _notifier.SetPlayingState(6);
        continue;
        if (((Integer)_streamer.GetParam(14)).intValue() == 3) {
          _notifier.SetPlayingState(12);
        } else {
          _notifier.SetPlayingState(3);
        }
      }
    }
    return 0;
  }
  
  public void setMonitoringNotifier(IMonitorNotifier paramIMonitorNotifier)
  {
    _notifier = paramIMonitorNotifier;
  }
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.VisualOnProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */