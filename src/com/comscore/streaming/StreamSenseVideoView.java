package com.comscore.streaming;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.VideoView;
import com.comscore.utils.b;
import java.util.HashMap;
import java.util.Timer;

@Deprecated
public class StreamSenseVideoView
  extends VideoView
{
  private final String a = "StreamSenseVideoView";
  private final boolean b = true;
  private final int c = 500;
  private final int d = 500;
  private long e = -1L;
  private c f = null;
  private String g = "0x0";
  private long h = 0L;
  private long i = -1L;
  private String j;
  private boolean k = false;
  private Timer l = null;
  private Timer m = null;
  private MediaPlayer.OnCompletionListener n = null;
  private final MediaPlayer.OnCompletionListener o = new q(this);
  
  public StreamSenseVideoView(Context paramContext)
  {
    super(paramContext);
    g();
  }
  
  public StreamSenseVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g();
  }
  
  public StreamSenseVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    g();
  }
  
  private long a()
  {
    try
    {
      int i1 = getCurrentPosition();
      return i1;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      b.b("StreamSenseVideoView", "getCurrentSafePlayerPosition");
    }
    return 0L;
  }
  
  private void a(HashMap<String, String> paramHashMap)
  {
    try
    {
      e();
      if (l == null)
      {
        long l1 = a();
        b.a("StreamSenseVideoView", "startStartTimer:" + l1);
        l = new Timer();
        l.schedule(new o(this, l1, paramHashMap), 500L);
      }
      return;
    }
    finally
    {
      paramHashMap = finally;
      throw paramHashMap;
    }
  }
  
  private void a(HashMap<String, String> paramHashMap, long paramLong)
  {
    e();
    c();
    if (f != null) {
      f.a(e.c, paramHashMap, paramLong);
    }
  }
  
  private void b(HashMap<String, String> paramHashMap, long paramLong)
  {
    k = false;
    c();
    if (f != null) {
      f.a(e.a, paramHashMap, paramLong);
    }
  }
  
  private boolean b()
  {
    try
    {
      boolean bool = isPlaying();
      return bool;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return false;
  }
  
  private void c(HashMap<String, String> paramHashMap, long paramLong)
  {
    if ((!c()) && (f != null)) {
      f.a(e.b, paramHashMap, paramLong);
    }
  }
  
  /* Error */
  private boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   6: ifnull +28 -> 34
    //   9: ldc 33
    //   11: ldc -91
    //   13: invokestatic 126	com/comscore/utils/b:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   20: invokevirtual 168	java/util/Timer:cancel	()V
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	StreamSenseVideoView
    //   29	7	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	28	39	finally
  }
  
  private void d()
  {
    a(h());
  }
  
  /* Error */
  private boolean e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 33
    //   4: ldc -79
    //   6: invokestatic 126	com/comscore/utils/b:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   13: ifnull +21 -> 34
    //   16: aload_0
    //   17: getfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   20: invokevirtual 168	java/util/Timer:cancel	()V
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	StreamSenseVideoView
    //   29	7	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	28	39	finally
  }
  
  private void f()
  {
    try
    {
      if (m == null)
      {
        b.a("StreamSenseVideoView", "startPlayingPollTimer");
        long l1 = a();
        m = new Timer();
        m.schedule(new p(this, l1), 250L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void g()
  {
    super.setOnCompletionListener(o);
  }
  
  private HashMap<String, String> h()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("ns_ts", String.valueOf(System.currentTimeMillis()));
    HashMap localHashMap2 = new HashMap();
    if (e <= 0L) {
      e = getDuration();
    }
    localHashMap2.put("ns_st_cl", String.valueOf(e));
    if ((g == null) || (g.equals("0x0"))) {
      g = (getWidth() + "x" + getHeight());
    }
    localHashMap2.put("ns_st_cs", g);
    localHashMap2.put("ns_st_cu", j);
    localHashMap2.put("ns_st_mp", StreamSenseVideoView.class.getSimpleName());
    localHashMap2.put("ns_st_mv", Integer.toString(Build.VERSION.SDK_INT));
    localHashMap1.putAll(localHashMap2);
    return localHashMap1;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b.a("StreamSenseVideoView", "onDetachedFromWindow");
    a(h(), a());
  }
  
  public void pause()
  {
    super.pause();
    b.a("StreamSenseVideoView", "pause");
    e();
    if (k) {
      h += System.currentTimeMillis() - i;
    }
    k = false;
    i = -1L;
    c(h(), a());
  }
  
  @TargetApi(8)
  public void resume()
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.resume();
    }
    b.a("StreamSenseVideoView", "resume");
    b(h(), a());
  }
  
  public void seekTo(int paramInt)
  {
    super.seekTo(paramInt);
    b.a("StreamSenseVideoView", "seekTo:" + paramInt);
    if (b())
    {
      e();
      c();
      c(h(), -1L);
      d();
    }
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    super.setOnCompletionListener(o);
    n = paramOnCompletionListener;
  }
  
  public void setStreamSense(c paramc)
  {
    f = paramc;
    f.a("ns_st_pv", "4.1307.02");
  }
  
  public void setVideoPath(String paramString)
  {
    super.setVideoPath(paramString);
    j = paramString;
  }
  
  public void setVideoURI(Uri paramUri)
  {
    super.setVideoURI(paramUri);
    j = paramUri.toString();
  }
  
  public void start()
  {
    super.start();
    if (l == null)
    {
      b.a("StreamSenseVideoView", "start");
      d();
    }
  }
  
  public void stopPlayback()
  {
    super.stopPlayback();
    b.a("StreamSenseVideoView", "stopPlayback");
    a(h(), a());
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.StreamSenseVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */