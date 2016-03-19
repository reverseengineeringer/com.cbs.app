package b;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

final class d
{
  private static final d a = new d();
  private final ExecutorService b;
  private final ScheduledExecutorService c;
  private final Executor d;
  
  private d()
  {
    Object localObject = System.getProperty("java.runtime.name");
    boolean bool;
    if (localObject == null)
    {
      bool = false;
      if (bool) {
        break label65;
      }
    }
    label65:
    for (localObject = Executors.newCachedThreadPool();; localObject = a.a())
    {
      b = ((ExecutorService)localObject);
      c = Executors.newSingleThreadScheduledExecutor();
      d = new a((byte)0);
      return;
      bool = ((String)localObject).toLowerCase(Locale.US).contains("android");
      break;
    }
  }
  
  public static ExecutorService a()
  {
    return ab;
  }
  
  static Executor b()
  {
    return ad;
  }
  
  private static final class a
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
}

/* Location:
 * Qualified Name:     b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */