package com.adobe.mobile;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class r
  extends q
{
  protected boolean a(Object paramObject)
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
    } while ((!(localObject instanceof String)) || (!Pattern.compile(Pattern.quote(localObject.toString()), 2).matcher((CharSequence)paramObject).find()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */