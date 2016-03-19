package a.a.a.a.b;

import java.io.Serializable;
import java.util.Map.Entry;

public abstract class b<L, R>
  implements Serializable, Comparable<b<L, R>>, Map.Entry<L, R>
{
  public static <L, R> b<L, R> a(L paramL, R paramR)
  {
    return new a(paramL, paramR);
  }
  
  public abstract L a();
  
  public abstract R b();
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry)) {
        break;
      }
      paramObject = (Map.Entry)paramObject;
    } while ((a.a.a.a.b.a(getKey(), ((Map.Entry)paramObject).getKey())) && (a.a.a.a.b.a(getValue(), ((Map.Entry)paramObject).getValue())));
    return false;
    return false;
  }
  
  public final L getKey()
  {
    return (L)a();
  }
  
  public R getValue()
  {
    return (R)b();
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (getKey() == null)
    {
      i = 0;
      if (getValue() != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = getKey().hashCode();
      break;
      label33:
      j = getValue().hashCode();
    }
  }
  
  public String toString()
  {
    return "(" + a() + ',' + b() + ')';
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */