package a.a.a.a.a;

final class d
{
  private final Object a;
  private final int b;
  
  public d(Object paramObject)
  {
    b = System.identityHashCode(paramObject);
    a = paramObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {}
    do
    {
      return false;
      paramObject = (d)paramObject;
    } while ((b != b) || (a != a));
    return true;
  }
  
  public final int hashCode()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */