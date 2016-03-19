package android.support.v7.widget;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Map;

final class GridLayout$PackedMap<K, V>
{
  public final int[] index;
  public final K[] keys;
  public final V[] values;
  
  private GridLayout$PackedMap(K[] paramArrayOfK, V[] paramArrayOfV)
  {
    index = createIndex(paramArrayOfK);
    keys = compact(paramArrayOfK, index);
    values = compact(paramArrayOfV, index);
  }
  
  private static <K> K[] compact(K[] paramArrayOfK, int[] paramArrayOfInt)
  {
    int j = paramArrayOfK.length;
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfK.getClass().getComponentType(), GridLayout.max2(paramArrayOfInt, -1) + 1);
    int i = 0;
    while (i < j)
    {
      arrayOfObject[paramArrayOfInt[i]] = paramArrayOfK[i];
      i += 1;
    }
    return arrayOfObject;
  }
  
  private static <K> int[] createIndex(K[] paramArrayOfK)
  {
    int j = paramArrayOfK.length;
    int[] arrayOfInt = new int[j];
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < j)
    {
      K ? = paramArrayOfK[i];
      Integer localInteger2 = (Integer)localHashMap.get(?);
      Integer localInteger1 = localInteger2;
      if (localInteger2 == null)
      {
        localInteger1 = Integer.valueOf(localHashMap.size());
        localHashMap.put(?, localInteger1);
      }
      arrayOfInt[i] = localInteger1.intValue();
      i += 1;
    }
    return arrayOfInt;
  }
  
  public final V getValue(int paramInt)
  {
    return (V)values[index[paramInt]];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.PackedMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */