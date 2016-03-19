package b;

import java.util.Locale;

public final class e
{
  private final Object a;
  private boolean b;
  
  public final boolean a()
  {
    synchronized (a)
    {
      boolean bool = b;
      return bool;
    }
  }
  
  public final String toString()
  {
    return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", new Object[] { getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(b) });
  }
}

/* Location:
 * Qualified Name:     b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */