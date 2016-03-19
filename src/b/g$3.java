package b;

import java.util.concurrent.CancellationException;

final class g$3
  implements Runnable
{
  g$3(e parame, g.a parama, f paramf, g paramg) {}
  
  public final void run()
  {
    if ((a != null) && (a.a()))
    {
      b.b();
      return;
    }
    try
    {
      Object localObject = c.then(d);
      b.a(localObject);
      return;
    }
    catch (CancellationException localCancellationException)
    {
      b.b();
      return;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     b.g.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */