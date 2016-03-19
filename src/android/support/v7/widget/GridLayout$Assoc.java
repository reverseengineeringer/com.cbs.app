package android.support.v7.widget;

import android.util.Pair;
import java.lang.reflect.Array;
import java.util.ArrayList;

final class GridLayout$Assoc<K, V>
  extends ArrayList<Pair<K, V>>
{
  private final Class<K> keyType;
  private final Class<V> valueType;
  
  private GridLayout$Assoc(Class<K> paramClass, Class<V> paramClass1)
  {
    keyType = paramClass;
    valueType = paramClass1;
  }
  
  public static <K, V> Assoc<K, V> of(Class<K> paramClass, Class<V> paramClass1)
  {
    return new Assoc(paramClass, paramClass1);
  }
  
  public final GridLayout.PackedMap<K, V> pack()
  {
    int j = size();
    Object[] arrayOfObject1 = (Object[])Array.newInstance(keyType, j);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(valueType, j);
    int i = 0;
    while (i < j)
    {
      arrayOfObject1[i] = getfirst;
      arrayOfObject2[i] = getsecond;
      i += 1;
    }
    return new GridLayout.PackedMap(arrayOfObject1, arrayOfObject2, null);
  }
  
  public final void put(K paramK, V paramV)
  {
    add(Pair.create(paramK, paramV));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Assoc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */