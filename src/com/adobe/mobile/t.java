package com.adobe.mobile;

import java.util.ArrayList;
import java.util.Iterator;

class t
  extends q
{
  protected boolean a(Object paramObject)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (((localObject instanceof String)) && ((paramObject instanceof String)))
      {
        if (localObject.toString().compareToIgnoreCase(paramObject.toString()) == 0) {
          return true;
        }
      }
      else if (((localObject instanceof Number)) && ((paramObject instanceof Number)))
      {
        if (((Number)localObject).doubleValue() == ((Number)paramObject).doubleValue()) {
          return true;
        }
      }
      else if (((localObject instanceof Number)) && ((paramObject instanceof String)))
      {
        if ((b(paramObject) != null) && (((Number)localObject).doubleValue() == b(paramObject).doubleValue())) {
          return true;
        }
      }
      else if (((localObject instanceof String)) && ((paramObject instanceof Number)) && (localObject.toString().compareToIgnoreCase(paramObject.toString()) == 0)) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */