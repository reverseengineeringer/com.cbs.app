package com.conviva.streamerProxies;

import com.conviva.ConvivaStreamerProxy;
import com.conviva.StreamerError;
import com.conviva.monitor.IMonitorNotifier;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.TLog;
import com.visualon.OSMPPlayer.VOCommonPlayerListener;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_MODULE_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_RETURN_CODE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_STATUS;
import com.visualon.OSMPPlayerImpl.VOCommonPlayerImpl;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class VisualOnImplProxy
  implements ConvivaStreamerProxy, VOCommonPlayerListener
{
  private static final String TAG = "CONVIVA";
  private int _durationMs = -1;
  private VOCommonPlayerListener _iListenerOrig = null;
  private boolean _inListener = false;
  private IMonitorNotifier _notifier = null;
  private VOCommonPlayerImpl _streamer = null;
  protected PlatformUtils _utils = null;
  
  public VisualOnImplProxy(Object paramObject)
  {
    _streamer = ((VOCommonPlayerImpl)paramObject);
    if (_streamer != null) {}
    for (;;)
    {
      try
      {
        paramObject = VOCommonPlayerImpl.class.getDeclaredFields();
        int j = paramObject.length;
        if (i < j)
        {
          Object localObject = paramObject[i];
          if (!VOCommonPlayerListener.class.equals(((Field)localObject).getType())) {
            continue;
          }
          ((Field)localObject).setAccessible(true);
          _iListenerOrig = ((VOCommonPlayerListener)((Field)localObject).get(_streamer));
        }
      }
      catch (Exception paramObject)
      {
        TLog.i("CONVIVA", ((Exception)paramObject).toString());
        continue;
      }
      _streamer.setOnEventListener(this);
      return;
      i += 1;
    }
  }
  
  public void Cleanup()
  {
    _streamer.setOnEventListener(_iListenerOrig);
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
    return -1;
  }
  
  public int GetIsLive()
  {
    if (_streamer.isLiveStreaming()) {
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
        int j = (int)_streamer.getPosition();
        VOOSMPType.VO_OSMP_STATUS localVO_OSMP_STATUS = _streamer.getPlayerStatus();
        if (localVO_OSMP_STATUS == VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PAUSED)
        {
          _notifier.SetPlayingState(12);
          return j;
        }
        i = j;
        if (localVO_OSMP_STATUS != VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PLAYING) {
          return i;
        }
        _notifier.SetPlayingState(3);
        return j;
      }
    }
    catch (Exception localException)
    {
      return -1;
    }
    int i = -1;
    return i;
  }
  
  public double GetRenderedFrameRate()
  {
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
    return _streamer.getVersion(VOOSMPType.VO_OSMP_MODULE_TYPE.VO_OSMP_MODULE_TYPE_SDK);
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
  
  public VOOSMPType.VO_OSMP_RETURN_CODE onVOEvent(VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID paramVO_OSMP_CB_EVENT_ID, int paramInt1, int paramInt2, Object paramObject)
  {
    if ((_inListener) || (_streamer == null)) {}
    for (;;)
    {
      return null;
      switch (paramVO_OSMP_CB_EVENT_ID)
      {
      }
      while (_iListenerOrig != null)
      {
        _inListener = true;
        try
        {
          paramVO_OSMP_CB_EVENT_ID = _iListenerOrig.onVOEvent(paramVO_OSMP_CB_EVENT_ID, paramInt1, paramInt2, paramObject);
          return paramVO_OSMP_CB_EVENT_ID;
        }
        finally
        {
          Object localObject;
          int i;
          _inListener = false;
        }
        localObject = StreamerError.makeUnscopedError(paramVO_OSMP_CB_EVENT_ID.toString(), 1);
        _notifier.OnError((StreamerError)localObject);
        continue;
        i = (int)_streamer.getDuration();
        if (i != _durationMs)
        {
          _durationMs = i;
          localObject = new HashMap();
          ((HashMap)localObject).put("duration", String.valueOf(i));
          _notifier.OnMetadata((Map)localObject);
        }
        if (paramInt1 == VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE.getValue())
        {
          _notifier.SetStream(paramInt2 / 1000, null, null);
          continue;
          _notifier.SetPlayingState(1);
          continue;
          _notifier.SetPlayingState(6);
          continue;
          localObject = _streamer.getPlayerStatus();
          if (localObject == VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PAUSED) {
            _notifier.SetPlayingState(12);
          } else if (localObject == VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PLAYING) {
            _notifier.SetPlayingState(3);
          } else {
            _notifier.SetPlayingState(100);
          }
        }
      }
    }
  }
  
  public VOOSMPType.VO_OSMP_RETURN_CODE onVOSyncEvent(VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID paramVO_OSMP_CB_SYNC_EVENT_ID, int paramInt1, int paramInt2, Object paramObject)
  {
    if (_inListener) {}
    while (_iListenerOrig == null) {
      return null;
    }
    _inListener = true;
    try
    {
      paramVO_OSMP_CB_SYNC_EVENT_ID = _iListenerOrig.onVOSyncEvent(paramVO_OSMP_CB_SYNC_EVENT_ID, paramInt1, paramInt2, paramObject);
      return paramVO_OSMP_CB_SYNC_EVENT_ID;
    }
    finally
    {
      _inListener = false;
    }
  }
  
  public void setMonitoringNotifier(IMonitorNotifier paramIMonitorNotifier)
  {
    _notifier = paramIMonitorNotifier;
  }
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.VisualOnImplProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */