package com.conviva.streamerProxies;

import com.conviva.ConvivaStreamerProxy;
import com.conviva.StreamerError;
import com.conviva.monitor.IMonitorNotifier;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.TLog;
import com.nexstreaming.nexplayerengine.NexClosedCaption;
import com.nexstreaming.nexplayerengine.NexContentInformation;
import com.nexstreaming.nexplayerengine.NexID3TagInformation;
import com.nexstreaming.nexplayerengine.NexPictureTimingInfo;
import com.nexstreaming.nexplayerengine.NexPlayer;
import com.nexstreaming.nexplayerengine.NexPlayer.IListener;
import com.nexstreaming.nexplayerengine.NexPlayer.NexErrorCode;
import com.nexstreaming.nexplayerengine.NexPlayer.NexProperty;
import com.nexstreaming.nexplayerengine.NexStreamInformation;
import com.nexstreaming.nexplayerengine.NexTrackInformation;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class NexStreamingProxy
  implements ConvivaStreamerProxy, NexPlayer.IListener
{
  private static final String TAG = "CONVIVA";
  private int _bitrate = -1;
  private NexPlayer.IListener _iListenerOrig = null;
  private IMonitorNotifier _notifier = null;
  private int _playheadSec = 0;
  private NexPlayer _streamer = null;
  private PlatformUtils _utils = null;
  
  public NexStreamingProxy(Object paramObject)
  {
    _streamer = ((NexPlayer)paramObject);
    if (_streamer != null) {
      try
      {
        paramObject = NexPlayer.class.getDeclaredFields();
        int j = paramObject.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramObject[i];
          if (NexPlayer.IListener.class.equals(((Field)localObject).getType()))
          {
            ((Field)localObject).setAccessible(true);
            _iListenerOrig = ((NexPlayer.IListener)((Field)localObject).get(_streamer));
          }
          i += 1;
        }
        _utils = PlatformUtils.getInstance();
      }
      catch (Exception paramObject)
      {
        TLog.i("CONVIVA", "Cannot create NexPlayerProxy: " + ((Exception)paramObject).toString());
        _streamer.setListener(this);
      }
    }
  }
  
  private void updateBitrate()
  {
    Object localObject1 = _streamer.getContentInfo();
    if ((localObject1 == null) || (mArrStreamInformation == null)) {}
    int i;
    do
    {
      return;
      localObject1 = mArrStreamInformation;
      int n = localObject1.length;
      int j = 0;
      int m;
      for (i = 0; j < n; i = m)
      {
        Object localObject2 = localObject1[j];
        m = i;
        if (mCurrTrackID != -1)
        {
          NexTrackInformation[] arrayOfNexTrackInformation = mArrTrackInformation;
          int i1 = arrayOfNexTrackInformation.length;
          int k = 0;
          for (;;)
          {
            m = i;
            if (k >= i1) {
              break;
            }
            NexTrackInformation localNexTrackInformation = arrayOfNexTrackInformation[k];
            m = i;
            if (mCurrTrackID == mTrackID) {
              m = i + mBandWidth;
            }
            k += 1;
            i = m;
          }
        }
        j += 1;
      }
      i /= 1000;
    } while (i == _bitrate);
    _notifier.SetStream(i, null, null);
  }
  
  private void updatePlayerState()
  {
    if ((_streamer != null) && (_notifier != null))
    {
      if (_streamer.getState() != 3) {
        break label36;
      }
      _notifier.SetPlayingState(3);
    }
    label36:
    do
    {
      return;
      if (_streamer.getState() == 4)
      {
        _notifier.SetPlayingState(12);
        return;
      }
    } while (_streamer.getState() != 2);
    _notifier.SetPlayingState(1);
  }
  
  public void Cleanup()
  {
    _streamer.setListener(_iListenerOrig);
    _iListenerOrig = null;
    _streamer = null;
    _notifier = null;
    _utils = null;
  }
  
  public int GetBufferLengthMs()
  {
    return _streamer.getContentInfoInt(7);
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
    return 0;
  }
  
  public int GetMinBufferLengthMs()
  {
    return _streamer.getProperty(NexPlayer.NexProperty.RE_BUFFERING_DURATION);
  }
  
  public int GetPlayheadTimeMs()
  {
    return _playheadSec;
  }
  
  public double GetRenderedFrameRate()
  {
    return _streamer.getContentInfoInt(5);
  }
  
  public String GetServerAddress()
  {
    return null;
  }
  
  public int GetStartingBufferLengthMs()
  {
    return _streamer.getProperty(NexPlayer.NexProperty.INITIAL_BUFFERING_DURATION);
  }
  
  public String GetStreamerType()
  {
    return "NexPlayer";
  }
  
  public String GetStreamerVersion()
  {
    return _streamer.getVersion(0) + "." + _streamer.getVersion(1);
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
  
  public void onAsyncCmdComplete(NexPlayer paramNexPlayer, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      if (_iListenerOrig != null) {
        _iListenerOrig.onAsyncCmdComplete(paramNexPlayer, paramInt1, paramInt2, paramInt3, paramInt4);
      }
      return;
      if (paramInt2 != 0)
      {
        onError(paramNexPlayer, NexPlayer.NexErrorCode.fromIntegerValue(paramInt2));
      }
      else
      {
        int i = paramNexPlayer.getContentInfoInt(1);
        int j = paramNexPlayer.getContentInfoInt(5);
        Log("onAsyncCmdComplete(): OPEN duration (ms) = " + i + ", frameRate = " + j);
        HashMap localHashMap = new HashMap();
        if (i > 0) {
          localHashMap.put("duration", Integer.toString(i));
        }
        if (j > 0) {
          localHashMap.put("framerate", Integer.toString(j));
        }
        _notifier.OnMetadata(localHashMap);
        continue;
        _notifier.SetPlayingState(1);
        Log("onAsyncCmdComplete(): STOPPED");
        continue;
        _notifier.SetPlayingState(12);
        Log("onAsyncCmdComplete(): PAUSED");
        continue;
        _notifier.SetPlayingState(3);
        Log("onAsyncCmdComplete(): PLAYING");
      }
    }
  }
  
  public void onAudioRenderCreate(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onAudioRenderCreate(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onAudioRenderDelete(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onAudioRenderDelete(paramNexPlayer);
    }
  }
  
  public void onAudioRenderPrepared(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onAudioRenderPrepared(paramNexPlayer);
    }
  }
  
  public void onBuffering(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onBuffering(paramNexPlayer, paramInt);
    }
  }
  
  public void onBufferingBegin(NexPlayer paramNexPlayer)
  {
    _notifier.SetPlayingState(6);
    if (_iListenerOrig != null) {
      _iListenerOrig.onBufferingBegin(paramNexPlayer);
    }
  }
  
  public void onBufferingEnd(NexPlayer paramNexPlayer)
  {
    updatePlayerState();
    if (_iListenerOrig != null) {
      _iListenerOrig.onBufferingEnd(paramNexPlayer);
    }
  }
  
  public void onDataInactivityTimeOut(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDataInactivityTimeOut(paramNexPlayer);
    }
  }
  
  public void onDownloaderAsyncCmdComplete(NexPlayer paramNexPlayer, int paramInt1, int paramInt2, int paramInt3)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderAsyncCmdComplete(paramNexPlayer, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onDownloaderError(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderError(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onDownloaderEventBegin(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderEventBegin(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onDownloaderEventComplete(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderEventComplete(paramNexPlayer, paramInt);
    }
  }
  
  public void onDownloaderEventProgress(NexPlayer paramNexPlayer, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderEventProgress(paramNexPlayer, paramInt1, paramInt2, paramLong1, paramLong2);
    }
  }
  
  public void onDownloaderEventState(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onDownloaderEventState(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onEndOfContent(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onEndOfContent(paramNexPlayer);
    }
  }
  
  public void onError(NexPlayer paramNexPlayer, NexPlayer.NexErrorCode paramNexErrorCode)
  {
    Log("Proxy: onError (errorCode: " + paramNexErrorCode + ")");
    StreamerError localStreamerError = StreamerError.makeUnscopedError(paramNexErrorCode.name(), 1);
    _notifier.OnError(localStreamerError);
    if (_iListenerOrig != null) {
      _iListenerOrig.onError(paramNexPlayer, paramNexErrorCode);
    }
  }
  
  public void onHTTPRequest(NexPlayer paramNexPlayer, String paramString)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onHTTPRequest(paramNexPlayer, paramString);
    }
  }
  
  public void onHTTPResponse(NexPlayer paramNexPlayer, String paramString)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onHTTPResponse(paramNexPlayer, paramString);
    }
  }
  
  public String onModifyHttpRequest(NexPlayer paramNexPlayer, int paramInt, Object paramObject)
  {
    if (_iListenerOrig != null) {
      return _iListenerOrig.onModifyHttpRequest(paramNexPlayer, paramInt, paramObject);
    }
    return null;
  }
  
  public void onPauseSupervisionTimeOut(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onPauseSupervisionTimeOut(paramNexPlayer);
    }
  }
  
  public void onPictureTimingInfo(NexPlayer paramNexPlayer, NexPictureTimingInfo[] paramArrayOfNexPictureTimingInfo)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onPictureTimingInfo(paramNexPlayer, paramArrayOfNexPictureTimingInfo);
    }
  }
  
  public void onProgramTime(NexPlayer paramNexPlayer, String paramString, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onProgramTime(paramNexPlayer, paramString, paramInt);
    }
  }
  
  public void onRTSPCommandTimeOut(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onRTSPCommandTimeOut(paramNexPlayer);
    }
  }
  
  public void onRecording(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onRecording(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onRecordingEnd(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onRecordingEnd(paramNexPlayer, paramInt);
    }
  }
  
  public void onRecordingErr(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onRecordingErr(paramNexPlayer, paramInt);
    }
  }
  
  public void onSignalStatusChanged(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onSignalStatusChanged(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onStartAudioTask(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onStartAudioTask(paramNexPlayer);
    }
  }
  
  public void onStartVideoTask(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onStartVideoTask(paramNexPlayer);
    }
  }
  
  public void onStateChanged(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onStateChanged(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onStatusReport(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    updateBitrate();
    if (_iListenerOrig != null) {
      _iListenerOrig.onStatusReport(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onTextRenderInit(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onTextRenderInit(paramNexPlayer, paramInt);
    }
  }
  
  public void onTextRenderRender(NexPlayer paramNexPlayer, int paramInt, NexClosedCaption paramNexClosedCaption)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onTextRenderRender(paramNexPlayer, paramInt, paramNexClosedCaption);
    }
  }
  
  public void onTime(NexPlayer paramNexPlayer, int paramInt)
  {
    _playheadSec = paramInt;
    updatePlayerState();
    if (_iListenerOrig != null) {
      _iListenerOrig.onTime(paramNexPlayer, paramInt);
    }
  }
  
  public void onTimedMetaRenderRender(NexPlayer paramNexPlayer, NexID3TagInformation paramNexID3TagInformation)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onTimedMetaRenderRender(paramNexPlayer, paramNexID3TagInformation);
    }
  }
  
  public void onTimeshift(NexPlayer paramNexPlayer, int paramInt1, int paramInt2)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onTimeshift(paramNexPlayer, paramInt1, paramInt2);
    }
  }
  
  public void onTimeshiftErr(NexPlayer paramNexPlayer, int paramInt)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onTimeshiftErr(paramNexPlayer, paramInt);
    }
  }
  
  public void onVideoRenderCapture(NexPlayer paramNexPlayer, int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onVideoRenderCapture(paramNexPlayer, paramInt1, paramInt2, paramInt3, paramObject);
    }
  }
  
  public void onVideoRenderCreate(NexPlayer paramNexPlayer, int paramInt1, int paramInt2, Object paramObject)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onVideoRenderCreate(paramNexPlayer, paramInt1, paramInt2, paramObject);
    }
  }
  
  public void onVideoRenderDelete(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onVideoRenderDelete(paramNexPlayer);
    }
  }
  
  public void onVideoRenderPrepared(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onVideoRenderPrepared(paramNexPlayer);
    }
  }
  
  public void onVideoRenderRender(NexPlayer paramNexPlayer)
  {
    if (_iListenerOrig != null) {
      _iListenerOrig.onVideoRenderRender(paramNexPlayer);
    }
  }
  
  public void setMonitoringNotifier(IMonitorNotifier paramIMonitorNotifier)
  {
    _notifier = paramIMonitorNotifier;
  }
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.NexStreamingProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */