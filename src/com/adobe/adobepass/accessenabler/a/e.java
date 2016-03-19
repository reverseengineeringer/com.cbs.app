package com.adobe.adobepass.accessenabler.a;

import com.adobe.adobepass.accessenabler.d.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public final class e
  implements Serializable
{
  private int a;
  private ArrayList<d> b;
  
  public final int a()
  {
    return a;
  }
  
  public final String a(String paramString)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.a().equals(paramString)) {
        return locald.b();
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */