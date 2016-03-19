package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.Surface;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View.MeasureSpec;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.ju;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@fs
public class zzc
  extends zzi
  implements AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener
{
  private static final Map<Integer, String> a;
  private final l b;
  private int c = 0;
  private int d = 0;
  private MediaPlayer e;
  private Uri f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private float l = 1.0F;
  private boolean m;
  private boolean n;
  private int o;
  private g p;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(Integer.valueOf(64532), "MEDIA_ERROR_IO");
    a.put(Integer.valueOf(64529), "MEDIA_ERROR_MALFORMED");
    a.put(Integer.valueOf(64526), "MEDIA_ERROR_UNSUPPORTED");
    a.put(Integer.valueOf(-110), "MEDIA_ERROR_TIMED_OUT");
    a.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
    a.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
    a.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
    a.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
    a.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
    a.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
    a.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
    a.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
    a.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
    a.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
    a.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
    a.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
  }
  
  public zzc(Context paramContext, l paraml)
  {
    super(paramContext);
    setSurfaceTextureListener(this);
    b = paraml;
    b.a(this);
  }
  
  private void a(boolean paramBoolean)
  {
    b.a(2);
    if (e != null)
    {
      e.reset();
      e.release();
      e = null;
      b(0);
      if (paramBoolean)
      {
        d = 0;
        d = 0;
      }
      m();
    }
  }
  
  private void b(float paramFloat)
  {
    if (e != null) {}
    try
    {
      e.setVolume(paramFloat, paramFloat);
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
    b.a(5);
    return;
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 3) {
      b.c();
    }
    for (;;)
    {
      c = paramInt;
      return;
      if ((c == 3) && (paramInt != 3)) {
        b.d();
      }
    }
  }
  
  private void k()
  {
    b.a(2);
    SurfaceTexture localSurfaceTexture = getSurfaceTexture();
    if ((f == null) || (localSurfaceTexture == null)) {
      return;
    }
    a(false);
    try
    {
      e = new MediaPlayer();
      e.setOnBufferingUpdateListener(this);
      e.setOnCompletionListener(this);
      e.setOnErrorListener(this);
      e.setOnInfoListener(this);
      e.setOnPreparedListener(this);
      e.setOnVideoSizeChangedListener(this);
      i = 0;
      e.setDataSource(getContext(), f);
      e.setSurface(new Surface(localSurfaceTexture));
      e.setAudioStreamType(3);
      e.setScreenOnWhilePlaying(true);
      e.prepareAsync();
      b(1);
      return;
    }
    catch (IOException localIOException)
    {
      new StringBuilder("Failed to initialize MediaPlayer at ").append(f);
      b.a(5);
      onError(e, 1, 0);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  private void l()
  {
    if ((n()) && (e.getCurrentPosition() > 0) && (d != 3))
    {
      b.a(2);
      b(0.0F);
      e.start();
      int i1 = e.getCurrentPosition();
      long l1 = o.i().a();
      while ((n()) && (e.getCurrentPosition() == i1) && (o.i().a() - l1 <= 250L)) {}
      e.pause();
      p();
    }
  }
  
  private void m()
  {
    b.a(2);
    AudioManager localAudioManager = q();
    if ((localAudioManager != null) && (n))
    {
      if (localAudioManager.abandonAudioFocus(this) == 1) {
        n = false;
      }
    }
    else {
      return;
    }
    b.a(5);
  }
  
  private boolean n()
  {
    return (e != null) && (c != -1) && (c != 0) && (c != 1);
  }
  
  private void o()
  {
    b.a(2);
    n = true;
    p();
  }
  
  private void p()
  {
    if ((!m) && (n))
    {
      b(l);
      return;
    }
    b(0.0F);
  }
  
  private AudioManager q()
  {
    return (AudioManager)getContext().getSystemService("audio");
  }
  
  public final String a()
  {
    return "MediaPlayer";
  }
  
  public final void a(float paramFloat)
  {
    l = paramFloat;
    p();
  }
  
  public final void a(int paramInt)
  {
    new StringBuilder("AdMediaPlayerView seek ").append(paramInt);
    b.a(2);
    if (n())
    {
      e.seekTo(paramInt);
      o = 0;
      return;
    }
    o = paramInt;
  }
  
  public final void a(g paramg)
  {
    p = paramg;
  }
  
  public final void b()
  {
    b.a(2);
    if (e != null)
    {
      e.stop();
      e.release();
      e = null;
      b(0);
      d = 0;
      m();
    }
    b.b();
  }
  
  public final void c()
  {
    b.a(2);
    if (n())
    {
      e.start();
      b(3);
      gw.a.post(new zzc.6(this));
    }
    d = 3;
  }
  
  public final void d()
  {
    b.a(2);
    if ((n()) && (e.isPlaying()))
    {
      e.pause();
      b(4);
      gw.a.post(new zzc.7(this));
    }
    d = 4;
  }
  
  public final int e()
  {
    if (n()) {
      return e.getDuration();
    }
    return -1;
  }
  
  public final int f()
  {
    if (n()) {
      return e.getCurrentPosition();
    }
    return 0;
  }
  
  public final void g()
  {
    m = true;
    p();
  }
  
  public final void h()
  {
    m = false;
    p();
  }
  
  public final int i()
  {
    if (e != null) {
      return e.getVideoWidth();
    }
    return 0;
  }
  
  public final int j()
  {
    if (e != null) {
      return e.getVideoHeight();
    }
    return 0;
  }
  
  public void onAudioFocusChange(int paramInt)
  {
    if (paramInt > 0) {
      o();
    }
    while (paramInt >= 0) {
      return;
    }
    b.a(2);
    n = false;
    p();
  }
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    i = paramInt;
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    b.a(2);
    b(5);
    d = 5;
    gw.a.post(new zzc.2(this));
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = (String)a.get(Integer.valueOf(paramInt1));
    String str = (String)a.get(Integer.valueOf(paramInt2));
    new StringBuilder("AdMediaPlayerView MediaPlayer error: ").append(paramMediaPlayer).append(":").append(str);
    b.a(5);
    b(-1);
    d = -1;
    gw.a.post(new zzc.3(this, paramMediaPlayer, str));
    return true;
  }
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = (String)a.get(Integer.valueOf(paramInt1));
    String str = (String)a.get(Integer.valueOf(paramInt2));
    new StringBuilder("AdMediaPlayerView MediaPlayer info: ").append(paramMediaPlayer).append(":").append(str);
    b.a(2);
    return true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = getDefaultSize(g, paramInt1);
    int i4 = getDefaultSize(h, paramInt2);
    int i2 = i4;
    int i1 = i3;
    int i5;
    if (g > 0)
    {
      i2 = i4;
      i1 = i3;
      if (h > 0)
      {
        i4 = View.MeasureSpec.getMode(paramInt1);
        paramInt1 = View.MeasureSpec.getSize(paramInt1);
        i5 = View.MeasureSpec.getMode(paramInt2);
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        if ((i4 != 1073741824) || (i5 != 1073741824)) {
          break label211;
        }
        if (g * paramInt2 >= h * paramInt1) {
          break label178;
        }
        i1 = g * paramInt2 / h;
        i2 = paramInt2;
      }
    }
    for (;;)
    {
      setMeasuredDimension(i1, i2);
      if (Build.VERSION.SDK_INT == 16)
      {
        if (((j > 0) && (j != i1)) || ((k > 0) && (k != i2))) {
          l();
        }
        j = i1;
        k = i2;
      }
      return;
      label178:
      if (g * paramInt2 > h * paramInt1)
      {
        i2 = h * paramInt1 / g;
        i1 = paramInt1;
        continue;
        label211:
        if (i4 == 1073741824)
        {
          i2 = h * paramInt1 / g;
          if ((i5 == Integer.MIN_VALUE) && (i2 > paramInt2))
          {
            i2 = paramInt2;
            i1 = paramInt1;
          }
        }
        else
        {
          if (i5 == 1073741824)
          {
            i3 = g * paramInt2 / h;
            i2 = paramInt2;
            i1 = i3;
            if (i4 != Integer.MIN_VALUE) {
              continue;
            }
            i2 = paramInt2;
            i1 = i3;
            if (i3 <= paramInt1) {
              continue;
            }
            i2 = paramInt2;
            i1 = paramInt1;
            continue;
          }
          i3 = g;
          i1 = h;
          if ((i5 == Integer.MIN_VALUE) && (i1 > paramInt2)) {
            i3 = g * paramInt2 / h;
          }
          for (;;)
          {
            i2 = paramInt2;
            i1 = i3;
            if (i4 != Integer.MIN_VALUE) {
              break;
            }
            i2 = paramInt2;
            i1 = i3;
            if (i3 <= paramInt1) {
              break;
            }
            i2 = h * paramInt1 / g;
            i1 = paramInt1;
            break;
            paramInt2 = i1;
          }
        }
        i1 = paramInt1;
      }
      else
      {
        i2 = paramInt2;
        i1 = paramInt1;
      }
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    b.a(2);
    b(2);
    b.a();
    gw.a.post(new zzc.1(this));
    g = paramMediaPlayer.getVideoWidth();
    h = paramMediaPlayer.getVideoHeight();
    if (o != 0) {
      a(o);
    }
    l();
    new StringBuilder("AdMediaPlayerView stream dimensions: ").append(g).append(" x ").append(h);
    b.a(4);
    if (d == 3) {
      c();
    }
    paramMediaPlayer = q();
    if ((paramMediaPlayer != null) && (!n))
    {
      if (paramMediaPlayer.requestAudioFocus(this, 3, 2) != 1) {
        break label151;
      }
      o();
    }
    for (;;)
    {
      p();
      return;
      label151:
      b.a(5);
    }
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    b.a(2);
    k();
    gw.a.post(new zzc.4(this));
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    b.a(2);
    if ((e != null) && (o == 0)) {
      o = e.getCurrentPosition();
    }
    gw.a.post(new zzc.5(this));
    a(true);
    return true;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    int i2 = 1;
    b.a(2);
    int i1;
    if (d == 3)
    {
      i1 = 1;
      if ((g != paramInt1) || (h != paramInt2)) {
        break label80;
      }
    }
    label80:
    for (paramInt1 = i2;; paramInt1 = 0)
    {
      if ((e != null) && (i1 != 0) && (paramInt1 != 0))
      {
        if (o != 0) {
          a(o);
        }
        c();
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture)
  {
    b.b(this);
  }
  
  public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    new StringBuilder("AdMediaPlayerView size changed: ").append(paramInt1).append(" x ").append(paramInt2);
    b.a(2);
    g = paramMediaPlayer.getVideoWidth();
    h = paramMediaPlayer.getVideoHeight();
    if ((g != 0) && (h != 0)) {
      requestLayout();
    }
  }
  
  public void setMimeType(String paramString) {}
  
  public void setVideoPath(String paramString)
  {
    setVideoURI(Uri.parse(paramString));
  }
  
  public void setVideoURI(Uri paramUri)
  {
    f = paramUri;
    o = 0;
    k();
    requestLayout();
    invalidate();
  }
  
  public String toString()
  {
    return getClass().getName() + "@" + Integer.toHexString(hashCode());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */