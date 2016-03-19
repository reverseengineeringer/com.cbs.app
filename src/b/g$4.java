package b;

import java.util.concurrent.CancellationException;

final class g$4
  implements Runnable
{
  g$4(e parame, g.a parama, f paramf, g paramg) {}
  
  public final void run()
  {
    if ((a != null) && (a.a()))
    {
      b.b();
      return;
    }
    try
    {
      g localg = (g)c.then(d);
      if (localg == null)
      {
        b.a(null);
        return;
      }
    }
    catch (CancellationException localCancellationException)
    {
      b.b();
      return;
      localCancellationException.a(new f() {});
      return;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     b.g.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */