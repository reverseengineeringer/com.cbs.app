package android.support.design.widget;

import android.view.animation.Interpolator;

final class q
{
  private final e a;
  
  q(e parame)
  {
    a = parame;
  }
  
  public final void a()
  {
    a.a();
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    a.a(paramFloat1, paramFloat2);
  }
  
  public final void a(int paramInt)
  {
    a.a(paramInt);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2);
  }
  
  public final void a(final a parama)
  {
    a.a(new q.e.a()
    {
      public final void a()
      {
        parama.a();
      }
      
      public final void b()
      {
        parama.b();
      }
    });
  }
  
  public final void a(final c paramc)
  {
    a.a(new q.e.b()
    {
      public final void a()
      {
        paramc.a(q.this);
      }
    });
  }
  
  public final void a(Interpolator paramInterpolator)
  {
    a.a(paramInterpolator);
  }
  
  public final boolean b()
  {
    return a.b();
  }
  
  public final int c()
  {
    return a.c();
  }
  
  public final float d()
  {
    return a.d();
  }
  
  public final void e()
  {
    a.e();
  }
  
  public final float f()
  {
    return a.f();
  }
  
  public final long g()
  {
    return a.g();
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  static class b
    implements q.a
  {
    public void a() {}
    
    public void b() {}
  }
  
  static abstract interface c
  {
    public abstract void a(q paramq);
  }
  
  static abstract interface d
  {
    public abstract q a();
  }
  
  static abstract class e
  {
    abstract void a();
    
    abstract void a(float paramFloat1, float paramFloat2);
    
    abstract void a(int paramInt);
    
    abstract void a(int paramInt1, int paramInt2);
    
    abstract void a(a parama);
    
    abstract void a(b paramb);
    
    abstract void a(Interpolator paramInterpolator);
    
    abstract boolean b();
    
    abstract int c();
    
    abstract float d();
    
    abstract void e();
    
    abstract float f();
    
    abstract long g();
    
    static abstract interface a
    {
      public abstract void a();
      
      public abstract void b();
    }
    
    static abstract interface b
    {
      public abstract void a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */