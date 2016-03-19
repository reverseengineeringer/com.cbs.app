package com.adobe.b.c.a.b.a.d.c;

import com.adobe.b.a.c;
import com.adobe.b.c.a.b.a.d.a.e;
import com.adobe.b.c.a.b.a.d.a.e.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

abstract class a
{
  protected c a;
  protected String b;
  
  a(c paramc)
  {
    if (paramc == null) {
      throw new Error("Reference to logger object cannot be NULL.");
    }
    a = paramc;
    b = a.class.getSimpleName();
  }
  
  abstract Object a(String paramString1, Boolean paramBoolean, String paramString2, Object paramObject);
  
  abstract Object a(String paramString1, Double paramDouble, String paramString2);
  
  abstract Object a(String paramString1, Integer paramInteger, String paramString2);
  
  abstract Object a(String paramString1, Long paramLong, String paramString2, Object paramObject);
  
  abstract Object a(String paramString1, String paramString2, String paramString3);
  
  final ArrayList<String> a(e parame)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = parame.g().entrySet().iterator();
    label319:
    while (localIterator.hasNext())
    {
      Object localObject1 = (Map.Entry)localIterator.next();
      String str1 = (String)((Map.Entry)localObject1).getKey();
      localObject1 = (e.a)((Map.Entry)localObject1).getValue();
      Object localObject2 = a;
      Object localObject3 = b;
      String str2 = parame.f();
      localObject1 = null;
      if (localObject2 != null)
      {
        if ((localObject2 instanceof Long)) {
          localObject1 = (String)a(str1, (Long)localObject2, str2, localObject3);
        }
        for (;;)
        {
          if (localObject1 == null) {
            break label319;
          }
          localArrayList.add(localObject1);
          break;
          if ((localObject2 instanceof Integer))
          {
            localObject1 = (String)a(str1, (Integer)localObject2, str2);
          }
          else if ((localObject2 instanceof Double))
          {
            localObject1 = (String)a(str1, (Double)localObject2, str2);
          }
          else if ((localObject2 instanceof Boolean))
          {
            localObject1 = (String)a(str1, (Boolean)localObject2, str2, localObject3);
          }
          else if ((localObject2 instanceof String))
          {
            localObject1 = (String)a(str1, (String)localObject2, str2);
          }
          else if ((localObject2 instanceof e))
          {
            localObject1 = (String)b((e)localObject2);
          }
          else
          {
            localObject3 = a;
            str2 = b;
            new StringBuilder("_processDao() - Unable to serialize DAO. Field: ").append(str1).append(". Value: ").append(localObject2).append(".");
            ((c)localObject3).c(str2);
          }
        }
      }
    }
    return localArrayList;
  }
  
  abstract Object b(e parame);
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */