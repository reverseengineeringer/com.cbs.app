package com.conviva.streamerProxies;

import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.VideoView;
import com.conviva.monitor.IMonitorNotifier;
import java.lang.reflect.Field;
import java.util.HashMap;

public class VideoViewProxy
  extends NativeStreamerProxy
  implements MediaPlayer.OnPreparedListener
{
  private VideoView _mVideoView = null;
  private MediaPlayer.OnPreparedListener _onPreparedListenerOrig = null;
  
  public VideoViewProxy(Object paramObject)
  {
    _mVideoView = ((VideoView)paramObject);
    if (_mVideoView == null) {
      return;
    }
    for (;;)
    {
      int i;
      try
      {
        paramObject = VideoView.class.getDeclaredFields();
        int j = paramObject.length;
        i = 0;
        if (i < j)
        {
          Object localObject = paramObject[i];
          Class localClass = ((Field)localObject).getType();
          String str = ((Field)localObject).getName();
          if ((MediaPlayer.OnErrorListener.class.equals(localClass)) && (str.startsWith("mOn")))
          {
            ((Field)localObject).setAccessible(true);
            _onErrorListenerOrig = ((MediaPlayer.OnErrorListener)((Field)localObject).get(_mVideoView));
          }
          else if ((MediaPlayer.OnPreparedListener.class.equals(localClass)) && (str.startsWith("mOn")))
          {
            ((Field)localObject).setAccessible(true);
            _onPreparedListenerOrig = ((MediaPlayer.OnPreparedListener)((Field)localObject).get(_mVideoView));
          }
        }
      }
      catch (SecurityException paramObject)
      {
        ((SecurityException)paramObject).printStackTrace();
        return;
        _mVideoView.setOnErrorListener(this);
        _mVideoView.setOnPreparedListener(this);
        return;
      }
      catch (IllegalArgumentException paramObject)
      {
        ((IllegalArgumentException)paramObject).printStackTrace();
        return;
      }
      catch (IllegalAccessException paramObject)
      {
        ((IllegalAccessException)paramObject).printStackTrace();
        return;
      }
      i += 1;
    }
  }
  
  public void Cleanup()
  {
    Log("VideoViewStreamerProxy.Cleanup()");
    if (_mVideoView != null)
    {
      _mVideoView.setOnErrorListener(_onErrorListenerOrig);
      _mVideoView.setOnPreparedListener(_onPreparedListenerOrig);
    }
    super.Cleanup();
  }
  
  public int GetBufferLengthMs()
  {
    try
    {
      if ((_mVideoView != null) && (_duration > 0))
      {
        double d1 = _mVideoView.getBufferPercentage() / 100.0D;
        double d2 = _duration;
        int i = _mVideoView.getCurrentPosition();
        return (int)(d1 * d2 - i);
      }
    }
    catch (IllegalStateException localIllegalStateException) {}
    return -1;
  }
  
  public int GetPlayheadTimeMs()
  {
    try
    {
      if (_mVideoView != null)
      {
        int i = _mVideoView.getCurrentPosition();
        if ((i > 0) && (_duration == -1))
        {
          _duration = _mVideoView.getDuration();
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
  
  public String GetStreamerType()
  {
    return "VideoView";
  }
  
  /* Error */
  public void onPrepared(android.media.MediaPlayer paramMediaPlayer)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 146	com/conviva/streamerProxies/VideoViewProxy:_inListener	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: ldc -108
    //   11: invokevirtual 92	com/conviva/streamerProxies/VideoViewProxy:Log	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 25	com/conviva/streamerProxies/VideoViewProxy:_onPreparedListenerOrig	Landroid/media/MediaPlayer$OnPreparedListener;
    //   18: ifnull +23 -> 41
    //   21: aload_0
    //   22: iconst_1
    //   23: putfield 146	com/conviva/streamerProxies/VideoViewProxy:_inListener	Z
    //   26: aload_0
    //   27: getfield 25	com/conviva/streamerProxies/VideoViewProxy:_onPreparedListenerOrig	Landroid/media/MediaPlayer$OnPreparedListener;
    //   30: aload_1
    //   31: invokeinterface 150 2 0
    //   36: aload_0
    //   37: iconst_0
    //   38: putfield 146	com/conviva/streamerProxies/VideoViewProxy:_inListener	Z
    //   41: aload_0
    //   42: aload_1
    //   43: putfield 154	com/conviva/streamerProxies/VideoViewProxy:_mPlayer	Landroid/media/MediaPlayer;
    //   46: ldc -100
    //   48: invokevirtual 33	java/lang/Class:getDeclaredFields	()[Ljava/lang/reflect/Field;
    //   51: astore_1
    //   52: aload_1
    //   53: arraylength
    //   54: istore_3
    //   55: iconst_0
    //   56: istore_2
    //   57: iload_2
    //   58: iload_3
    //   59: if_icmpge -52 -> 7
    //   62: aload_1
    //   63: iload_2
    //   64: aaload
    //   65: astore 4
    //   67: ldc -98
    //   69: aload 4
    //   71: invokevirtual 39	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   74: invokevirtual 51	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   77: ifeq +48 -> 125
    //   80: aload 4
    //   82: iconst_1
    //   83: invokevirtual 63	java/lang/reflect/Field:setAccessible	(Z)V
    //   86: aload_0
    //   87: aload 4
    //   89: aload_0
    //   90: getfield 154	com/conviva/streamerProxies/VideoViewProxy:_mPlayer	Landroid/media/MediaPlayer;
    //   93: invokevirtual 67	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   96: checkcast 158	android/media/MediaPlayer$OnInfoListener
    //   99: putfield 162	com/conviva/streamerProxies/VideoViewProxy:_onInfoListenerOrig	Landroid/media/MediaPlayer$OnInfoListener;
    //   102: aload_0
    //   103: getfield 154	com/conviva/streamerProxies/VideoViewProxy:_mPlayer	Landroid/media/MediaPlayer;
    //   106: aload_0
    //   107: invokevirtual 166	android/media/MediaPlayer:setOnInfoListener	(Landroid/media/MediaPlayer$OnInfoListener;)V
    //   110: return
    //   111: astore_1
    //   112: aload_1
    //   113: invokevirtual 74	java/lang/SecurityException:printStackTrace	()V
    //   116: return
    //   117: astore_1
    //   118: aload_0
    //   119: iconst_0
    //   120: putfield 146	com/conviva/streamerProxies/VideoViewProxy:_inListener	Z
    //   123: aload_1
    //   124: athrow
    //   125: iload_2
    //   126: iconst_1
    //   127: iadd
    //   128: istore_2
    //   129: goto -72 -> 57
    //   132: astore_1
    //   133: aload_1
    //   134: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   137: return
    //   138: astore_1
    //   139: aload_1
    //   140: invokevirtual 84	java/lang/IllegalAccessException:printStackTrace	()V
    //   143: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	VideoViewProxy
    //   0	144	1	paramMediaPlayer	android.media.MediaPlayer
    //   56	73	2	i	int
    //   54	6	3	j	int
    //   65	23	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   46	55	111	java/lang/SecurityException
    //   67	110	111	java/lang/SecurityException
    //   21	36	117	finally
    //   46	55	132	java/lang/IllegalArgumentException
    //   67	110	132	java/lang/IllegalArgumentException
    //   46	55	138	java/lang/IllegalAccessException
    //   67	110	138	java/lang/IllegalAccessException
  }
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.VideoViewProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */