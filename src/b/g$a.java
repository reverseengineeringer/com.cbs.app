package b;

public final class g$a
{
  private g$a(g paramg) {}
  
  private boolean b(Exception paramException)
  {
    synchronized (g.a(a))
    {
      if (g.b(a)) {
        return false;
      }
      g.c(a);
      g.a(a, paramException);
      g.a(a).notifyAll();
      g.e(a);
      return true;
    }
  }
  
  private boolean b(TResult paramTResult)
  {
    synchronized (g.a(a))
    {
      if (g.b(a)) {
        return false;
      }
      g.c(a);
      g.a(a, paramTResult);
      g.a(a).notifyAll();
      g.e(a);
      return true;
    }
  }
  
  private boolean c()
  {
    synchronized (g.a(a))
    {
      if (g.b(a)) {
        return false;
      }
      g.c(a);
      g.d(a);
      g.a(a).notifyAll();
      g.e(a);
      return true;
    }
  }
  
  public final g<TResult> a()
  {
    return a;
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

/* Location:
 * Qualified Name:     b.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */