package com.conviva.streamerProxies;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import java.lang.reflect.Field;

public class MediaPlayerProxy
  extends NativeStreamerProxy
  implements MediaPlayer.OnBufferingUpdateListener
{
  private int _bufferingPercentage = 0;
  private MediaPlayer.OnBufferingUpdateListener _onBufferingUpdateListenerOrig = null;
  
  public MediaPlayerProxy(Object paramObject)
  {
    _mPlayer = ((MediaPlayer)paramObject);
    if (_mPlayer != null) {}
    for (;;)
    {
      try
      {
        Field[] arrayOfField = MediaPlayer.class.getDeclaredFields();
        int j = arrayOfField.length;
        if (i < j)
        {
          localField = arrayOfField[i];
          localClass = localField.getType();
          if (MediaPlayer.OnErrorListener.class.equals(localClass))
          {
            localField.setAccessible(true);
            _onErrorListenerOrig = ((MediaPlayer.OnErrorListener)localField.get(_mPlayer));
          }
          else if (MediaPlayer.OnBufferingUpdateListener.class.equals(localClass))
          {
            localField.setAccessible(true);
            _onBufferingUpdateListenerOrig = ((MediaPlayer.OnBufferingUpdateListener)localField.get(_mPlayer));
          }
        }
      }
      catch (SecurityException paramObject)
      {
        Field localField;
        Class localClass;
        ((SecurityException)paramObject).printStackTrace();
        return;
        if (MediaPlayer.OnInfoListener.class.equals(localClass))
        {
          localField.setAccessible(true);
          _onInfoListenerOrig = ((MediaPlayer.OnInfoListener)localField.get(paramObject));
        }
      }
      catch (IllegalArgumentException paramObject)
      {
        ((IllegalArgumentException)paramObject).printStackTrace();
        return;
        _mPlayer.setOnErrorListener(this);
        _mPlayer.setOnBufferingUpdateListener(this);
        _mPlayer.setOnInfoListener(this);
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
    Log("MediaPlayerStreamerProxy.Cleanup()");
    if (_mPlayer != null) {
      _mPlayer.setOnBufferingUpdateListener(_onBufferingUpdateListenerOrig);
    }
    _onBufferingUpdateListenerOrig = null;
    super.Cleanup();
  }
  
  public int GetBufferLengthMs()
  {
    int j = -1;
    int i = j;
    try
    {
      if (_mPlayer != null)
      {
        i = j;
        if (_duration > 0)
        {
          i = (int)(_duration * _bufferingPercentage / 100.0D);
          j = _mPlayer.getCurrentPosition();
          i -= j;
        }
      }
      return i;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log("player is not in the proper state when GetBufferLengthMs() is called");
    }
    return -1;
  }
  
  public String GetStreamerType()
  {
    return "MediaPlay";
  }
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    _bufferingPercentage = paramInt;
    if (_onBufferingUpdateListenerOrig != null) {
      _onBufferingUpdateListenerOrig.onBufferingUpdate(paramMediaPlayer, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.conviva.streamerProxies.MediaPlayerProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */