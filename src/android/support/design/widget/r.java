package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

final class r
  extends q.e
{
  private static final Handler a = new Handler(Looper.getMainLooper());
  private long b;
  private boolean c;
  private final int[] d = new int[2];
  private final float[] e = new float[2];
  private int f = 200;
  private Interpolator g;
  private q.e.a h;
  private q.e.b i;
  private float j;
  private final Runnable k = new Runnable()
  {
    public final void run()
    {
      r.a(r.this);
    }
  };
  
  public final void a()
  {
    if (c) {
      return;
    }
    if (g == null) {
      g = new AccelerateDecelerateInterpolator();
    }
    b = SystemClock.uptimeMillis();
    c = true;
    a.postDelayed(k, 10L);
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    e[0] = paramFloat1;
    e[1] = paramFloat2;
  }
  
  public final void a(int paramInt)
  {
    f = paramInt;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    d[0] = paramInt1;
    d[1] = paramInt2;
  }
  
  public final void a(q.e.a parama)
  {
    h = parama;
  }
  
  public final void a(q.e.b paramb)
  {
    i = paramb;
  }
  
  public final void a(Interpolator paramInterpolator)
  {
    g = paramInterpolator;
  }
  
  public final boolean b()
  {
    return c;
  }
  
  public final int c()
  {
    return a.a(d[0], d[1], j);
  }
  
  public final float d()
  {
    return a.a(e[0], e[1], j);
  }
  
  public final void e()
  {
    c = false;
    a.removeCallbacks(k);
    if (h != null) {
      h.b();
    }
  }
  
  public final float f()
  {
    return j;
  }
  
  public final long g()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */