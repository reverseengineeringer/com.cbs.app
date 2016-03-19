package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;

final class ArrayBuilders$1
{
  ArrayBuilders$1(Class paramClass, int paramInt, Object paramObject) {}
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (paramObject.getClass() != val$defaultValueType);
      bool1 = bool2;
    } while (Array.getLength(paramObject) != val$length);
    int i = 0;
    for (;;)
    {
      if (i >= val$length) {
        break label106;
      }
      Object localObject1 = Array.get(val$defaultValue, i);
      Object localObject2 = Array.get(paramObject, i);
      if ((localObject1 != localObject2) && (localObject1 != null))
      {
        bool1 = bool2;
        if (!localObject1.equals(localObject2)) {
          break;
        }
      }
      i += 1;
    }
    label106:
    return true;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.ArrayBuilders.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */