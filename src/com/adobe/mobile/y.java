package com.adobe.mobile;

import java.util.ArrayList;
import java.util.Iterator;

final class y
  extends q
{
  protected final boolean a(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject == null) {
      return false;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (((localObject instanceof Number)) && (((Double)paramObject).doubleValue() <= ((Number)localObject).doubleValue())) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */