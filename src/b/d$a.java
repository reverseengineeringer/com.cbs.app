package b;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

final class d$a
  implements Executor
{
  private ThreadLocal<Integer> a = new ThreadLocal();
  
  private int a()
  {
    Integer localInteger2 = (Integer)a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    int i = localInteger1.intValue() - 1;
    if (i == 0)
    {
      a.remove();
      return i;
    }
    a.set(Integer.valueOf(i));
    return i;
  }
  
  public final void execute(Runnable paramRunnable)
  {
    Integer localInteger2 = (Integer)a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    int i = localInteger1.intValue() + 1;
    a.set(Integer.valueOf(i));
    if (i <= 15) {}
    for (;;)
    {
      try
      {
        paramRunnable.run();
        return;
      }
      finally
      {
        a();
      }
      d.a().execute(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     b.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */