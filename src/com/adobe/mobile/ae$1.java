package com.adobe.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ae$1
  implements Runnable
{
  ae$1(Map paramMap1, Map paramMap2, Map paramMap3) {}
  
  public final void run()
  {
    Object localObject3 = null;
    Object localObject4 = af.a().q();
    if ((localObject4 == null) || (((ArrayList)localObject4).size() <= 0)) {}
    Object localObject2;
    Object localObject1;
    do
    {
      do
      {
        return;
        while ((a != null) && (a.containsKey("pev2")) && (a.get("pev2").toString().equals("ADBINTERNAL:In-App Message"))) {}
        Iterator localIterator;
        if ((b != null) && (b.size() > 0))
        {
          localObject2 = new HashMap(b.size());
          localIterator = b.entrySet().iterator();
          for (;;)
          {
            localObject1 = localObject2;
            if (!localIterator.hasNext()) {
              break;
            }
            localObject1 = (Map.Entry)localIterator.next();
            ((HashMap)localObject2).put(((String)((Map.Entry)localObject1).getKey()).toLowerCase(), ((Map.Entry)localObject1).getValue());
          }
        }
        localObject1 = null;
        localObject2 = localObject3;
        if (a != null)
        {
          localObject2 = localObject3;
          if (a.size() > 0)
          {
            localObject3 = new HashMap(a.size());
            localIterator = a.entrySet().iterator();
            for (;;)
            {
              localObject2 = localObject3;
              if (!localIterator.hasNext()) {
                break;
              }
              localObject2 = (Map.Entry)localIterator.next();
              ((HashMap)localObject3).put(((String)((Map.Entry)localObject2).getKey()).toLowerCase(), ((Map.Entry)localObject2).getValue());
            }
          }
        }
        localObject3 = ((ArrayList)localObject4).iterator();
      } while (!((Iterator)localObject3).hasNext());
      localObject4 = (m)((Iterator)localObject3).next();
    } while (!((m)localObject4).a((Map)localObject2, (Map)localObject1, c));
    ((m)localObject4).d();
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ae.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */