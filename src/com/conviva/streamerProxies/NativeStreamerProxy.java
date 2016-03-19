package com.conviva.streamerProxies;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import com.conviva.ConvivaStreamerProxy;
import com.conviva.StreamerError;
import com.conviva.monitor.IMonitorNotifier;
import com.conviva.utils.PlatformUtils;
import java.util.HashMap;
import java.util.Map;

public abstract class NativeStreamerProxy
  implements MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, ConvivaStreamerProxy
{
  private static final String ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
  private static final String ERR_SERVERDIED = "MEDIA_ERROR_SERVER_DIED";
  private static final String ERR_UNKNOWN = "MEDIA_ERROR_UNKNOWN";
  private final int MEDIA_INFO_BUFFERING_END = 702;
  private final int MEDIA_INFO_BUFFERING_START = 701;
  private int _apiLevel = 0;
  protected int _duration = -1;
  protected boolean _inListener = false;
  protected MediaPlayer _mPlayer = null;
  protected IMonitorNotifier _notifier = null;
  protected MediaPlayer.OnErrorListener _onErrorListenerOrig = null;
  protected MediaPlayer.OnInfoListener _onInfoListenerOrig = null;
  private boolean _preparedState = false;
  protected PlatformUtils _utils = null;
  
  public void Cleanup()
  {
    Log("NativeStreamerProxy: clean up callbacks");
    if (_mPlayer != null)
    {
      _mPlayer.setOnErrorListener(_onErrorListenerOrig);
      _mPlayer.setOnInfoListener(_onInfoListenerOrig);
      _mPlayer = null;
    }
    _onErrorListenerOrig = null;
    _onInfoListenerOrig = null;
  }
  
  public int GetCapabilities()
  {
    return 3;
  }
  
  public int GetDroppedFrames()
  {
    return -1;
  }
  
  public int GetIsLive()
  {
    return 0;
  }
  
  public int GetMinBufferLengthMs()
  {
    return 1500;
  }
  
  public int GetPlayheadTimeMs()
  {
    try
    {
      if (_mPlayer != null)
      {
        if (!_preparedState)
        {
          _preparedState = true;
          return -1;
        }
        int i = _mPlayer.getCurrentPosition();
        if ((i > 0) && (_duration == -1))
        {
          _duration = _mPlayer.getDuration();
          HashMap localHashMap = new HashMap();
          localHashMap.put("duration", String.valueOf(_duration));
          _notifier.OnMetadata(localHashMap);
        }
        return i;
      }
    }
    catch (IllegalStateException localIllegalStateException) {}
    return -1;
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
    return 11000;
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
  
  public int getApiLevel()
  {
    return _apiLevel;
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (_inListener) {
      return true;
    }
    Log("Proxy: onError (" + paramInt1 + ", " + paramInt2 + ")");
    Object localObject;
    if (paramInt1 != 1) {
      if (paramInt1 == 100) {
        localObject = "MEDIA_ERROR_SERVER_DIED";
      }
    }
    for (;;)
    {
      localObject = StreamerError.makeUnscopedError((String)localObject, 1);
      _notifier.OnError((StreamerError)localObject);
      if (_onErrorListenerOrig == null) {
        break;
      }
      _inListener = true;
      try
      {
        boolean bool = _onErrorListenerOrig.onError(paramMediaPlayer, paramInt1, paramInt2);
        return bool;
      }
      finally
      {
        _inListener = false;
      }
      if (paramInt1 == 200) {
        localObject = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
      } else {
        localObject = "MEDIA_ERROR_UNKNOWN";
      }
    }
    return true;
  }
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (_inListener) {
      return true;
    }
    Log("Proxy: onInfo");
    int i;
    if (_apiLevel >= 9) {
      if (paramInt1 == 701)
      {
        Log("Buffering start event");
        i = 6;
        j = i;
        if (i != 100) {
          _notifier.SetPlayingState(i);
        }
      }
    }
    for (int j = i;; j = 100)
    {
      if (_onInfoListenerOrig != null) {}
      try
      {
        _inListener = true;
        boolean bool = _onInfoListenerOrig.onInfo(paramMediaPlayer, paramInt1, paramInt2);
        return bool;
      }
      finally
      {
        _inListener = false;
      }
      if (paramInt1 == 702)
      {
        Log("Buffering end event");
        i = 3;
        break;
      }
      Log("other events: " + paramInt1 + " : ignored");
      i = 100;
      break;
      return true;
      return false;
    }
  }
  
  public void setMonitoringNotifier(IMonitorNotifier paramIMonitorNotifier)
  {
    _notifier = paramIMonitorNotifier;
  }
  
  public void start() {}
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.NativeStreamerProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */