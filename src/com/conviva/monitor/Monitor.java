package com.conviva.monitor;

import com.conviva.ConvivaContentInfo;
import com.conviva.ConvivaStreamerProxy;
import com.conviva.StreamerError;
import com.conviva.platforms.PlatformApi;
import com.conviva.session.EventQueue;
import com.conviva.streamerProxies.NativeStreamerProxy;
import com.conviva.utils.PlatformUtils;
import com.conviva.utils.SlidingWindow;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimerTask;

public class Monitor
  implements IMonitorNotifier
{
  private static PlatformUtils _utils = null;
  private final int _NUM_PHT_OBSERVATIONS = 5;
  private final int _PHT_MIN_SAMPLES = 3;
  private final int _PHT_PAUSED_EXPECTED_SPEED = 0;
  private final int _PHT_PLAY_EXPECTED_SPEED = 1;
  private final float _PHT_TOLERANCE = 0.5F;
  private double _adStartTimeMs = 0.0D;
  private int _adTimeMs = 0;
  private PlatformApi _api = null;
  private int _bitrateKbps = -1;
  private int _bufferingEventCount = 0;
  private String _cdn = null;
  private ConvivaContentInfo _contentInfo = null;
  private int _contentLenMs = -1;
  private Map<Integer, Integer> _cumulativeTimePerState = null;
  private int _encodedFps = -1;
  private EventQueue _eventQueue = null;
  private boolean _explicitPlayerPaused = false;
  private boolean _externalBitrateReporting = false;
  private boolean _isProxyCreatedOutside = false;
  private int _joinTimeMs = -1;
  private SlidingWindow<Number> _lastPHTSpeeds = null;
  private int _lastPlayHeadTimeMs = 0;
  private double _lastPollTimeMs = 0.0D;
  private double _lastStateUpdateTimeMs = 0.0D;
  private double _nominalPlayingBitsTotal = 0.0D;
  private int _playingFpsObservationCount = 0;
  private double _playingFpsTotal = 0.0D;
  private int _playingState = 100;
  private TimerTask _pollStreamerTask = new TimerTask()
  {
    public void run()
    {
      Monitor.this.pollStreamer();
    }
  };
  private boolean _preGingerBread = false;
  private String _resource = null;
  private int _sessionFlags = 1;
  private int _sessionId = 0;
  private double _startTimeMs = 0.0D;
  private ConvivaStreamerProxy _streamer = null;
  private Object _streamerObject = null;
  
  public Monitor(Object paramObject, EventQueue paramEventQueue, ConvivaContentInfo paramConvivaContentInfo, Map<String, Object> paramMap, int paramInt, PlatformApi paramPlatformApi)
  {
    _eventQueue = paramEventQueue;
    _utils = PlatformUtils.getInstance();
    _contentInfo = paramConvivaContentInfo;
    _sessionId = paramInt;
    _api = paramPlatformApi;
    _startTimeMs = 0.0D;
    _adStartTimeMs = 0.0D;
    _adTimeMs = 0;
    _lastStateUpdateTimeMs = 0.0D;
    _cumulativeTimePerState = new HashMap();
    paramEventQueue = PlayerStates.stateToInt.entrySet().iterator();
    while (paramEventQueue.hasNext())
    {
      paramConvivaContentInfo = (Map.Entry)paramEventQueue.next();
      _cumulativeTimePerState.put(paramConvivaContentInfo.getValue(), Integer.valueOf(0));
    }
    _joinTimeMs = -1;
    _bufferingEventCount = 0;
    _nominalPlayingBitsTotal = 0.0D;
    _encodedFps = -1;
    _contentLenMs = -1;
    _playingFpsObservationCount = 0;
    _playingFpsTotal = 0.0D;
    _streamerObject = paramObject;
    paramObject = (NativeStreamerProxy)_streamer;
    if ((paramObject != null) && (((NativeStreamerProxy)paramObject).getApiLevel() < 9)) {
      _preGingerBread = true;
    }
    if (paramMap != null)
    {
      if ((!paramMap.containsKey("explicitPlayerPaused")) || (!((Boolean)paramMap.get("explicitPlayerPaused")).booleanValue())) {
        break label462;
      }
      bool1 = true;
      _explicitPlayerPaused = bool1;
      if ((!paramMap.containsKey("externalBitrateReporting")) || (!((Boolean)paramMap.get("externalBitrateReporting")).booleanValue())) {
        break label468;
      }
    }
    label462:
    label468:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      _externalBitrateReporting = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  private void InferPlayingState(double paramDouble)
  {
    if (_streamer == null) {}
    for (;;)
    {
      return;
      if ((_joinTimeMs < 0) && (_streamer.GetRenderedFrameRate() > 0.0D))
      {
        _joinTimeMs = -3;
        Log("infer state to PLAYING, rendered frame rate is " + _streamer.GetRenderedFrameRate());
        SetPlayingState(3);
        return;
      }
      if ((NativeStreamerProxy.class.isInstance(_streamer)) && (_lastPHTSpeeds != null) && (_lastPHTSpeeds.size() >= 3))
      {
        Iterator localIterator = _lastPHTSpeeds.getSlots().iterator();
        for (float f = 0.0F; localIterator.hasNext(); f = ((Number)localIterator.next()).floatValue() + f) {}
        f /= _lastPHTSpeeds.size();
        if ((_playingState != 3) && (Math.abs(f - 1.0F) < 0.5F))
        {
          Log("infer state PLAYING, PHT is moving");
          SetPlayingState(3);
          return;
        }
        if ((_joinTimeMs >= 0) && (f == 0.0F))
        {
          if ((_playingState != 1) && ((_lastPlayHeadTimeMs == 0) || (_lastPlayHeadTimeMs == _contentLenMs)))
          {
            Log("infer STOPPED state, PHT is not moving and is 0");
            SetPlayingState(1);
            return;
          }
          int k = _streamer.GetBufferLengthMs();
          if ((_playingState == 3) || (_playingState == 100))
          {
            if (k < 0) {
              break label398;
            }
            int j = _streamer.GetMinBufferLengthMs();
            int i = j;
            if (j > _contentLenMs - _lastPlayHeadTimeMs) {
              i = _contentLenMs - _lastPlayHeadTimeMs;
            }
            if (k >= i) {
              break label382;
            }
            Log("infer BUFFERING state, PHT is not moving and buffer length is less than minBufferlen");
            SetPlayingState(6);
          }
          while ((_playingState == 6) && (_streamer.GetStartingBufferLengthMs() > 0) && (k > _streamer.GetStartingBufferLengthMs()))
          {
            Log("infer PAUSED state, buffer length grew longer than starting bufferLen.");
            SetPlayingState(12);
            return;
            label382:
            Log("infer PAUSED state, PHT is not moving");
            SetPlayingState(12);
            continue;
            label398:
            if ((_explicitPlayerPaused) || (_preGingerBread))
            {
              Log("infer BUFFERING state, PHT is not moving and buffer length is unavailable");
              SetPlayingState(6);
            }
            else
            {
              Log("infer PAUSED state, PHT is not moving and buffer events are available");
              SetPlayingState(12);
            }
          }
        }
      }
    }
  }
  
  private void clearPHTSamples()
  {
    if (_lastPHTSpeeds != null) {
      _lastPHTSpeeds.clear();
    }
  }
  
  private void enqueueBitrateChangeEvent(int paramInt)
  {
    if ((paramInt <= 0) || (_bitrateKbps == paramInt)) {
      return;
    }
    Log("enqueueBitrateChangeEvent, new bitrate: " + paramInt);
    Integer localInteger = null;
    if (_bitrateKbps > 0) {
      localInteger = Integer.valueOf(_bitrateKbps);
    }
    _bitrateKbps = paramInt;
    updateStateCumulativeTime();
    enqueueStateChange("br", localInteger, Integer.valueOf(paramInt));
  }
  
  private void enqueueEvent(String paramString, Map<String, Object> paramMap)
  {
    if (_eventQueue != null) {
      _eventQueue.enqueueEvent(paramString, paramMap, (int)(_utils.epochTimeMs() - _startTimeMs));
    }
  }
  
  private void enqueueStateChange(String paramString, Object paramObject1, Object paramObject2)
  {
    HashMap localHashMap1 = new HashMap();
    if (paramObject1 != null)
    {
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put(paramString, paramObject1);
      localHashMap1.put("old", localHashMap2);
    }
    paramObject1 = new HashMap();
    ((HashMap)paramObject1).put(paramString, paramObject2);
    localHashMap1.put("new", paramObject1);
    enqueueEvent("CwsStateChangeEvent", localHashMap1);
  }
  
  private void pollStreamer()
  {
    if (_streamer == null) {
      return;
    }
    int i = _streamer.GetPlayheadTimeMs();
    double d = _utils.epochTimeMs();
    if ((i >= 0) && (_lastPollTimeMs > 0.0D) && (d > _lastPollTimeMs)) {
      _lastPHTSpeeds.add(Float.valueOf((i - _lastPlayHeadTimeMs) / (float)(d - _lastPollTimeMs)));
    }
    _lastPollTimeMs = d;
    _lastPlayHeadTimeMs = i;
    InferPlayingState(d);
  }
  
  private void updateMetrics()
  {
    if (_streamer == null) {
      return;
    }
    if (_playingState == 3)
    {
      double d = _streamer.GetRenderedFrameRate();
      if (d >= 0.0D)
      {
        _playingFpsTotal = (d + _playingFpsTotal);
        _playingFpsObservationCount += 1;
      }
    }
    updateStateCumulativeTime();
  }
  
  private void updateStateCumulativeTime()
  {
    double d1 = _utils.epochTimeMs();
    if (_playingState != 100)
    {
      int i = (int)(d1 - _lastStateUpdateTimeMs);
      _cumulativeTimePerState.put(Integer.valueOf(_playingState), Integer.valueOf(((Integer)_cumulativeTimePerState.get(Integer.valueOf(_playingState))).intValue() + i));
      if ((_playingState == 3) && (_bitrateKbps != -1))
      {
        double d2 = _nominalPlayingBitsTotal;
        _nominalPlayingBitsTotal = (_bitrateKbps * i + d2);
      }
    }
    _lastStateUpdateTimeMs = d1;
  }
  
  private ConvivaStreamerProxy wrapInConvivaStreamerProxy(Object paramObject)
  {
    if (ConvivaStreamerProxy.class.isInstance(paramObject))
    {
      _isProxyCreatedOutside = true;
      Log("streamer is ConvivaStreamerProxy");
      return (ConvivaStreamerProxy)paramObject;
    }
    _isProxyCreatedOutside = false;
    Class localClass = paramObject.getClass();
    Object localObject5 = null;
    Object localObject1 = localObject5;
    try
    {
      if (Class.forName("android.media.MediaPlayer").isAssignableFrom(localClass)) {
        localObject1 = Class.forName("com.conviva.streamerProxies.MediaPlayerProxy");
      }
      localObject5 = localObject1;
      try
      {
        if (Class.forName("android.widget.VideoView").isAssignableFrom(localClass)) {
          localObject5 = Class.forName("com.conviva.streamerProxies.VideoViewProxy");
        }
        localObject1 = localObject5;
        try
        {
          if (Class.forName("com.nexstreaming.nexplayerengine.NexPlayer").isAssignableFrom(localClass)) {
            localObject1 = Class.forName("com.conviva.streamerProxies.NexStreamingProxy");
          }
          localObject5 = localObject1;
          try
          {
            if (Class.forName("com.visualon.OSMPBasePlayer.voOSBasePlayer").isAssignableFrom(localClass)) {
              localObject5 = Class.forName("com.conviva.streamerProxies.VisualOnProxy");
            }
            localObject1 = localObject5;
            try
            {
              if (Class.forName("com.visualon.OSMPPlayer.VOCommonPlayer").isAssignableFrom(localClass)) {
                localObject1 = Class.forName("com.conviva.streamerProxies.VisualOnImplProxy");
              }
              if (localObject1 != null) {
                return (ConvivaStreamerProxy)((Class)localObject1).getConstructor(new Class[] { Object.class }).newInstance(new Object[] { paramObject });
              }
              _utils.err("The streamer is not recognizable, class: " + paramObject.getClass().getName());
              throw new Exception("Monitoring unimplemented for streamer");
            }
            catch (Exception localException1)
            {
              for (;;)
              {
                localObject2 = localObject5;
              }
            }
          }
          catch (Exception localException4)
          {
            for (;;)
            {
              Object localObject2;
              localObject6 = localObject2;
            }
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            Object localObject6;
            localObject3 = localObject6;
          }
        }
      }
      catch (Exception localException5)
      {
        for (;;)
        {
          Object localObject3;
          localObject7 = localObject3;
        }
      }
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        Object localObject7;
        Object localObject4 = localObject7;
      }
    }
  }
  
  public void Log(String paramString)
  {
    _utils.logSession(paramString, _sessionId);
  }
  
  public void OnError(StreamerError paramStreamerError)
  {
    boolean bool = true;
    Log("Enqueue CwsErrorEvent");
    if (paramStreamerError.getSeverity() == 1) {}
    for (;;)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("ft", Boolean.valueOf(bool));
      localHashMap.put("err", paramStreamerError.getErrorCode().toString());
      enqueueEvent("CwsErrorEvent", localHashMap);
      if ((bool) && (_joinTimeMs < 0)) {
        _joinTimeMs = -2;
      }
      return;
      bool = false;
    }
  }
  
  public void OnMetadata(Map<String, String> paramMap)
  {
    try
    {
      if (paramMap.containsKey("framerate")) {
        _encodedFps = _utils.parseInt((String)paramMap.get("framerate"), -1);
      }
      if (paramMap.containsKey("duration")) {
        _contentLenMs = _utils.parseInt((String)paramMap.get("duration"), -1);
      }
      return;
    }
    catch (Exception paramMap)
    {
      Log("monitor.OnMetadata() error: " + paramMap.toString());
    }
  }
  
  public void SetPlayingState(int paramInt)
  {
    int j = 0;
    if (_playingState == paramInt) {
      return;
    }
    Log("Change state to " + paramInt);
    updateStateCumulativeTime();
    if (_joinTimeMs >= 0) {}
    for (int k = 1;; k = 0)
    {
      int i = j;
      if (k == 0)
      {
        i = j;
        if (paramInt == 3)
        {
          _cumulativeTimePerState.put(Integer.valueOf(6), Integer.valueOf(0));
          if (_adStartTimeMs > 0.0D) {
            adEnd();
          }
          _joinTimeMs = ((int)(_utils.epochTimeMs() - _startTimeMs - _adTimeMs));
          if (_joinTimeMs < 0) {
            _joinTimeMs = 0;
          }
          i = 1;
        }
      }
      j = i;
      if (k != 0)
      {
        j = i;
        if (paramInt == 6)
        {
          _bufferingEventCount += 1;
          j = 1;
        }
      }
      i = j;
      if (_playingState == 6)
      {
        i = j;
        if (paramInt == 3) {
          i = 1;
        }
      }
      if (i != 0) {
        clearPHTSamples();
      }
      enqueueStateChange("ps", Integer.valueOf(_playingState), Integer.valueOf(paramInt));
      _playingState = paramInt;
      return;
    }
  }
  
  public void SetStream(int paramInt, String paramString1, String paramString2)
  {
    if (!_externalBitrateReporting) {
      enqueueBitrateChangeEvent(paramInt);
    }
    if ((paramString1 != null) && (!_cdn.equals(paramString1)))
    {
      Log("monitor.SetStream(): cdn changed to: " + paramString1);
      enqueueStateChange("cdn", _cdn, paramString1);
      _cdn = paramString1;
    }
    if ((paramString2 != null) && (!_resource.equals(paramString2)))
    {
      Log("monitor.SetStream(): resource changed to: " + paramString2);
      enqueueStateChange("rs", _resource, paramString2);
      _resource = paramString2;
    }
  }
  
  public void adEnd()
  {
    Log("monitor.adEnd()");
    if (_adStartTimeMs > 0.0D) {}
    for (boolean bool = true;; bool = false)
    {
      Boolean localBoolean = Boolean.valueOf(bool);
      if (localBoolean.booleanValue()) {
        _adTimeMs = ((int)(_adTimeMs + (_utils.epochTimeMs() - _adStartTimeMs)));
      }
      _adStartTimeMs = 0.0D;
      enqueueStateChange("pj", localBoolean, new Boolean(false));
      return;
    }
  }
  
  public void adStart()
  {
    Log("monitor.adStart()");
    if (_adStartTimeMs > 0.0D) {}
    for (boolean bool = true;; bool = false)
    {
      _adStartTimeMs = _utils.epochTimeMs();
      enqueueStateChange("pj", Boolean.valueOf(bool), new Boolean(true));
      return;
    }
  }
  
  public void attachStreamer(Object paramObject)
  {
    if (paramObject == null)
    {
      Log("monitor.attachStreamer() received a null streamer");
      SetPlayingState(98);
      return;
    }
    SetPlayingState(100);
    Log("monitor.attachStreamer()");
    _streamer = wrapInConvivaStreamerProxy(paramObject);
    _sessionFlags = _streamer.GetCapabilities();
    if (_externalBitrateReporting) {
      _sessionFlags |= 0x10;
    }
    _streamer.setMonitoringNotifier(this);
    _lastPollTimeMs = 0.0D;
    _api.createPollTask(_pollStreamerTask, 200);
  }
  
  public void cleanup()
  {
    Log("monitor.cleanup()");
    pauseMonitor();
    _api = null;
    _eventQueue = null;
    _contentInfo = null;
  }
  
  public ConvivaStreamerProxy getStreamer()
  {
    return _streamer;
  }
  
  public void pauseMonitor()
  {
    Log("monitor.pauseMonitor()");
    updateMetrics();
    if (_streamer != null)
    {
      _streamer.setMonitoringNotifier(null);
      if (_isProxyCreatedOutside) {
        break label72;
      }
      ConvivaStreamerProxy localConvivaStreamerProxy = _streamer;
      _streamer = null;
      localConvivaStreamerProxy.Cleanup();
    }
    for (;;)
    {
      if (_lastPHTSpeeds != null) {
        _lastPHTSpeeds.clear();
      }
      SetPlayingState(98);
      return;
      label72:
      Log("Streamer Proxy is not created by Conviva and will not be cleaned up by Conviva Library");
      _streamer = null;
    }
  }
  
  public void playerPaused(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Log("Player state is paused via explicit call");
      SetPlayingState(12);
    }
    for (;;)
    {
      clearPHTSamples();
      return;
      Log("Player state is un-paused via explicit call");
      SetPlayingState(100);
    }
  }
  
  public void setBitrate(int paramInt)
  {
    if (_externalBitrateReporting)
    {
      enqueueBitrateChangeEvent(paramInt);
      return;
    }
    Log("setBitrate(): call ignored, enable external bitrate reporting first");
  }
  
  public void start(double paramDouble)
  {
    Log("monitor starts");
    _startTimeMs = paramDouble;
    _lastStateUpdateTimeMs = paramDouble;
    if (_contentInfo != null)
    {
      _cdn = _contentInfo.defaultReportingCdnName;
      if (_contentInfo.defaultReportingResource == null)
      {
        _resource = _cdn;
        _bitrateKbps = _contentInfo.defaultReportingBitrateKbps;
      }
    }
    for (;;)
    {
      attachStreamer(_streamerObject);
      _streamerObject = null;
      _lastPHTSpeeds = new SlidingWindow(5);
      _lastPlayHeadTimeMs = 0;
      return;
      _resource = _contentInfo.defaultReportingResource;
      break;
      _cdn = "OTHER";
      _resource = "OTHER";
    }
  }
  
  public void updateHeartbeat(Map<String, Object> paramMap)
  {
    boolean bool2 = false;
    updateMetrics();
    int k = ((Integer)_cumulativeTimePerState.get(Integer.valueOf(3))).intValue();
    boolean bool1;
    Boolean localBoolean;
    if (_joinTimeMs >= 0)
    {
      bool1 = true;
      localBoolean = Boolean.valueOf(bool1);
      if (!localBoolean.booleanValue()) {
        break label563;
      }
    }
    label330:
    label558:
    label563:
    for (int i = ((Integer)_cumulativeTimePerState.get(Integer.valueOf(6))).intValue();; i = 0)
    {
      paramMap.put("ps", Integer.valueOf(_playingState));
      bool1 = bool2;
      if (_adStartTimeMs > 0.0D) {
        bool1 = true;
      }
      paramMap.put("pj", Boolean.valueOf(bool1));
      paramMap.put("sf", Integer.valueOf(_sessionFlags));
      if (_streamer != null)
      {
        paramMap.put("fw", _streamer.GetStreamerType());
        String str = _streamer.GetStreamerVersion();
        if (str != null) {
          paramMap.put("fwv", str);
        }
      }
      if ((_contentInfo != null) && (_contentInfo.streamUrl != null)) {
        paramMap.put("url", _contentInfo.streamUrl);
      }
      paramMap.put("rs", _resource);
      paramMap.put("cdn", _cdn);
      if (_contentLenMs >= 0) {
        paramMap.put("cl", Integer.valueOf((int)(_contentLenMs / 1000.0D)));
      }
      if (_encodedFps >= 0) {
        paramMap.put("efps", Integer.valueOf(_encodedFps));
      }
      int j;
      if (_playingFpsObservationCount > 0)
      {
        j = (int)((_playingFpsTotal + 0.0D) / _playingFpsObservationCount);
        if (j >= 0) {
          paramMap.put("afps", Integer.valueOf(j));
        }
        paramMap.put("tpt", Integer.valueOf(k));
        paramMap.put("tbt", Integer.valueOf(i));
        paramMap.put("tpst", _cumulativeTimePerState.get(Integer.valueOf(12)));
        paramMap.put("tst", _cumulativeTimePerState.get(Integer.valueOf(1)));
        paramMap.put("jt", Integer.valueOf(_joinTimeMs));
        paramMap.put("tbe", Integer.valueOf(_bufferingEventCount));
        if (_bitrateKbps > 0)
        {
          paramMap.put("cbr", Integer.valueOf(_bitrateKbps));
          paramMap.put("br", Integer.valueOf(_bitrateKbps));
        }
        if ((!localBoolean.booleanValue()) || (_nominalPlayingBitsTotal < 0.0D)) {
          break label558;
        }
      }
      for (i = (int)((_nominalPlayingBitsTotal + 0.0D) / k);; i = -1)
      {
        if (i > 0) {
          paramMap.put("abr", Integer.valueOf(i));
        }
        return;
        bool1 = false;
        break;
        j = -1;
        break label330;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.monitor.Monitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */