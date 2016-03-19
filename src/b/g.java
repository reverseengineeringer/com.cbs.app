package b;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public final class g<TResult>
{
  public static final ExecutorService a = ;
  public static final Executor b = a.b();
  private static final Executor c = d.b();
  private final Object d = new Object();
  private boolean e;
  private boolean f;
  private TResult g;
  private Exception h;
  private List<f<TResult, Void>> i = new ArrayList();
  
  public static <TResult> g<TResult>.a a()
  {
    g localg = new g();
    localg.getClass();
    return new a((byte)0);
  }
  
  private <TContinuationResult> g<TContinuationResult> a(final f<TResult, TContinuationResult> paramf, final Executor paramExecutor)
  {
    final a locala = a();
    synchronized (d)
    {
      boolean bool = g();
      if (!bool) {
        i.add(new f() {});
      }
      if (bool) {
        c(locala, paramf, this, paramExecutor, null);
      }
      return a;
    }
  }
  
  public static <TResult> g<TResult> a(Exception paramException)
  {
    a locala = a();
    locala.a(paramException);
    return a;
  }
  
  public static <TResult> g<TResult> a(TResult paramTResult)
  {
    a locala = a();
    locala.a(paramTResult);
    return a;
  }
  
  private <TContinuationResult> g<TContinuationResult> b(final f<TResult, g<TContinuationResult>> paramf, final Executor paramExecutor)
  {
    final a locala = a();
    synchronized (d)
    {
      boolean bool = g();
      if (!bool) {
        i.add(new f() {});
      }
      if (bool) {
        d(locala, paramf, this, paramExecutor, null);
      }
      return a;
    }
  }
  
  private static <TContinuationResult, TResult> void c(final g<TContinuationResult>.a paramg, final f<TResult, TContinuationResult> paramf, final g<TResult> paramg1, Executor paramExecutor, e parame)
  {
    paramExecutor.execute(new Runnable()
    {
      public final void run()
      {
        if ((a != null) && (a.a()))
        {
          paramg.b();
          return;
        }
        try
        {
          Object localObject = paramf.then(paramg1);
          paramg.a(localObject);
          return;
        }
        catch (CancellationException localCancellationException)
        {
          paramg.b();
          return;
        }
        catch (Exception localException)
        {
          paramg.a(localException);
        }
      }
    });
  }
  
  private static <TContinuationResult, TResult> void d(final g<TContinuationResult>.a paramg, final f<TResult, g<TContinuationResult>> paramf, final g<TResult> paramg1, Executor paramExecutor, e parame)
  {
    paramExecutor.execute(new Runnable()
    {
      public final void run()
      {
        if ((a != null) && (a.a()))
        {
          paramg.b();
          return;
        }
        try
        {
          g localg = (g)paramf.then(paramg1);
          if (localg == null)
          {
            paramg.a(null);
            return;
          }
        }
        catch (CancellationException localCancellationException)
        {
          paramg.b();
          return;
          localCancellationException.a(new f() {});
          return;
        }
        catch (Exception localException)
        {
          paramg.a(localException);
        }
      }
    });
  }
  
  public static <TResult> g<TResult> f()
  {
    a locala = a();
    locala.b();
    return a;
  }
  
  private boolean g()
  {
    synchronized (d)
    {
      boolean bool = e;
      return bool;
    }
  }
  
  public final <TContinuationResult> g<TContinuationResult> a(f<TResult, TContinuationResult> paramf)
  {
    return a(paramf, c);
  }
  
  public final <TContinuationResult> g<TContinuationResult> b(final f<TResult, TContinuationResult> paramf)
  {
    Executor localExecutor = c;
    b(new f() {}, localExecutor);
  }
  
  public final boolean b()
  {
    synchronized (d)
    {
      boolean bool = f;
      return bool;
    }
  }
  
  public final boolean c()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (h != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final TResult d()
  {
    synchronized (d)
    {
      Object localObject2 = g;
      return (TResult)localObject2;
    }
  }
  
  public final Exception e()
  {
    synchronized (d)
    {
      Exception localException = h;
      return localException;
    }
  }
  
  public final class a
  {
    private a() {}
    
    private boolean b(Exception paramException)
    {
      synchronized (g.a(g.this))
      {
        if (g.b(g.this)) {
          return false;
        }
        g.c(g.this);
        g.a(g.this, paramException);
        g.a(g.this).notifyAll();
        g.e(g.this);
        return true;
      }
    }
    
    private boolean b(TResult paramTResult)
    {
      synchronized (g.a(g.this))
      {
        if (g.b(g.this)) {
          return false;
        }
        g.c(g.this);
        g.a(g.this, paramTResult);
        g.a(g.this).notifyAll();
        g.e(g.this);
        return true;
      }
    }
    
    private boolean c()
    {
      synchronized (g.a(g.this))
      {
        if (g.b(g.this)) {
          return false;
        }
        g.c(g.this);
        g.d(g.this);
        g.a(g.this).notifyAll();
        g.e(g.this);
        return true;
      }
    }
    
    public final g<TResult> a()
    {
      return g.this;
    }
    
    public final void a(Exception paramException)
    {
      if (!b(paramException)) {
        throw new IllegalStateException("Cannot set the error on a completed task.");
      }
    }
    
    public final void a(TResult paramTResult)
    {
      if (!b(paramTResult)) {
        throw new IllegalStateException("Cannot set the result of a completed task.");
      }
    }
    
    public final void b()
    {
      if (!c()) {
        throw new IllegalStateException("Cannot cancel a completed task.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */