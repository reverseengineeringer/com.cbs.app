package com.adobe.mobile;

import java.util.Map;

class u
  extends q
{
  protected boolean a(Map<String, Object>... paramVarArgs)
  {
    Object localObject2 = null;
    if ((paramVarArgs == null) || (paramVarArgs.length <= 0)) {
      return false;
    }
    int j = paramVarArgs.length;
    int i = 0;
    for (;;)
    {
      Object localObject1 = localObject2;
      if (i < j)
      {
        localObject1 = paramVarArgs[i];
        if ((localObject1 != null) && (((Map)localObject1).containsKey(a))) {
          localObject1 = ((Map)localObject1).get(a);
        }
      }
      else
      {
        if (localObject1 == null) {
          break;
        }
        return true;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */