package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

final class c
{
  protected static void a(String paramString, Map<String, Object> paramMap)
  {
    if (paramMap != null)
    {
      paramMap = new HashMap(paramMap);
      if (paramString == null) {
        break label95;
      }
    }
    for (;;)
    {
      paramMap.put("a.action", paramString);
      HashMap localHashMap = new HashMap();
      localHashMap.put("pe", "lnk_o");
      localHashMap.put("pev2", "AMACTION:" + paramString);
      localHashMap.put("pageName", am.b());
      ak.a(paramMap, localHashMap, am.p());
      return;
      paramMap = new HashMap();
      break;
      label95:
      paramString = "";
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */