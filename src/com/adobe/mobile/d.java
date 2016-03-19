package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;

final class d
{
  protected static void a(String paramString, Map<String, Object> paramMap, long paramLong)
  {
    paramMap = new HashMap(paramMap);
    paramMap.put("a.internalaction", paramString);
    HashMap localHashMap = new HashMap();
    localHashMap.put("pe", "lnk_o");
    localHashMap.put("pev2", "ADBINTERNAL:" + paramString);
    localHashMap.put("pageName", am.b());
    ak.a(paramMap, localHashMap, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */