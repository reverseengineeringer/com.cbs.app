package com.adobe.mobile;

import java.util.ArrayList;
import java.util.Iterator;

final class af$3
  implements Runnable
{
  af$3(af paramaf) {}
  
  public final void run()
  {
    if ((af.d(a) == null) || (af.d(a).size() <= 0))
    {
      aj.c("messageImages");
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = af.d(a).iterator();
    break label92;
    label48:
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localObject1 = (m)localIterator.next();
    } while ((h == null) || (h.size() <= 0));
    Object localObject1 = h.iterator();
    for (;;)
    {
      label92:
      if (!((Iterator)localObject1).hasNext()) {
        break label48;
      }
      Object localObject2 = (ArrayList)((Iterator)localObject1).next();
      if (((ArrayList)localObject2).size() <= 0) {
        break;
      }
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        localArrayList.add(str);
        aj.a(str, null, "messageImages");
      }
    }
    if (localArrayList.size() > 0)
    {
      aj.a("messageImages", localArrayList);
      return;
    }
    aj.c("messageImages");
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.af.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */