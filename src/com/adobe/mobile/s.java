package com.adobe.mobile;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

final class s
  extends q
{
  protected final boolean a(Object paramObject)
  {
    boolean bool1 = paramObject instanceof String;
    boolean bool2 = paramObject instanceof Number;
    if ((!bool1) && (!bool2)) {}
    Object localObject;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return false;
        paramObject = paramObject.toString();
        localIterator = b.iterator();
      }
      localObject = localIterator.next();
    } while ((!(localObject instanceof String)) || (!((String)paramObject).matches("(?i).*" + Pattern.quote(localObject.toString()))));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */