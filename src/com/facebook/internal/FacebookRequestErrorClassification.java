package com.facebook.internal;

import com.facebook.FacebookRequestError.Category;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class FacebookRequestErrorClassification
{
  public static final int EC_APP_TOO_MANY_CALLS = 4;
  public static final int EC_INVALID_SESSION = 102;
  public static final int EC_INVALID_TOKEN = 190;
  public static final int EC_RATE = 9;
  public static final int EC_SERVICE_UNAVAILABLE = 2;
  public static final int EC_TOO_MANY_USER_ACTION_CALLS = 341;
  public static final int EC_USER_TOO_MANY_CALLS = 17;
  public static final String KEY_LOGIN_RECOVERABLE = "login_recoverable";
  public static final String KEY_NAME = "name";
  public static final String KEY_OTHER = "other";
  public static final String KEY_RECOVERY_MESSAGE = "recovery_message";
  public static final String KEY_TRANSIENT = "transient";
  private static FacebookRequestErrorClassification defaultInstance;
  private final Map<Integer, Set<Integer>> loginRecoverableErrors;
  private final String loginRecoverableRecoveryMessage;
  private final Map<Integer, Set<Integer>> otherErrors;
  private final String otherRecoveryMessage;
  private final Map<Integer, Set<Integer>> transientErrors;
  private final String transientRecoveryMessage;
  
  FacebookRequestErrorClassification(Map<Integer, Set<Integer>> paramMap1, Map<Integer, Set<Integer>> paramMap2, Map<Integer, Set<Integer>> paramMap3, String paramString1, String paramString2, String paramString3)
  {
    otherErrors = paramMap1;
    transientErrors = paramMap2;
    loginRecoverableErrors = paramMap3;
    otherRecoveryMessage = paramString1;
    transientRecoveryMessage = paramString2;
    loginRecoverableRecoveryMessage = paramString3;
  }
  
  public static FacebookRequestErrorClassification createFromJSON(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return null;
    }
    int i = 0;
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    if (i < paramJSONArray.length())
    {
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
      Object localObject7 = localObject6;
      Object localObject8 = localObject5;
      Object localObject9 = localObject4;
      Object localObject10 = localObject3;
      Object localObject11 = localObject2;
      Object localObject12 = localObject1;
      String str;
      if (localJSONObject != null)
      {
        str = localJSONObject.optString("name");
        localObject7 = localObject6;
        localObject8 = localObject5;
        localObject9 = localObject4;
        localObject10 = localObject3;
        localObject11 = localObject2;
        localObject12 = localObject1;
        if (str != null)
        {
          if (!str.equalsIgnoreCase("other")) {
            break label172;
          }
          localObject10 = localJSONObject.optString("recovery_message", null);
          localObject7 = parseJSONDefinition(localJSONObject);
          localObject12 = localObject1;
          localObject11 = localObject2;
          localObject9 = localObject4;
          localObject8 = localObject5;
        }
      }
      for (;;)
      {
        i += 1;
        localObject6 = localObject7;
        localObject5 = localObject8;
        localObject4 = localObject9;
        localObject3 = localObject10;
        localObject2 = localObject11;
        localObject1 = localObject12;
        break;
        label172:
        if (str.equalsIgnoreCase("transient"))
        {
          localObject11 = localJSONObject.optString("recovery_message", null);
          localObject8 = parseJSONDefinition(localJSONObject);
          localObject7 = localObject6;
          localObject9 = localObject4;
          localObject10 = localObject3;
          localObject12 = localObject1;
        }
        else
        {
          localObject7 = localObject6;
          localObject8 = localObject5;
          localObject9 = localObject4;
          localObject10 = localObject3;
          localObject11 = localObject2;
          localObject12 = localObject1;
          if (str.equalsIgnoreCase("login_recoverable"))
          {
            localObject12 = localJSONObject.optString("recovery_message", null);
            localObject9 = parseJSONDefinition(localJSONObject);
            localObject7 = localObject6;
            localObject8 = localObject5;
            localObject10 = localObject3;
            localObject11 = localObject2;
          }
        }
      }
    }
    return new FacebookRequestErrorClassification((Map)localObject6, (Map)localObject5, (Map)localObject4, (String)localObject3, (String)localObject2, (String)localObject1);
  }
  
  public static FacebookRequestErrorClassification getDefaultErrorClassification()
  {
    try
    {
      if (defaultInstance == null) {
        defaultInstance = getDefaultErrorClassificationImpl();
      }
      FacebookRequestErrorClassification localFacebookRequestErrorClassification = defaultInstance;
      return localFacebookRequestErrorClassification;
    }
    finally {}
  }
  
  private static FacebookRequestErrorClassification getDefaultErrorClassificationImpl()
  {
    new FacebookRequestErrorClassification(null, new HashMap()new HashMap {}, new HashMap() {}, null, null, null);
  }
  
  private static Map<Integer, Set<Integer>> parseJSONDefinition(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray1 = paramJSONObject.optJSONArray("items");
    if (localJSONArray1.length() == 0) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    int i = 0;
    int k;
    if (i < localJSONArray1.length())
    {
      paramJSONObject = localJSONArray1.optJSONObject(i);
      if (paramJSONObject != null)
      {
        k = paramJSONObject.optInt("code");
        if (k != 0)
        {
          JSONArray localJSONArray2 = paramJSONObject.optJSONArray("subcodes");
          if ((localJSONArray2 == null) || (localJSONArray2.length() <= 0)) {
            break label155;
          }
          paramJSONObject = new HashSet();
          int j = 0;
          while (j < localJSONArray2.length())
          {
            int m = localJSONArray2.optInt(j);
            if (m != 0) {
              paramJSONObject.add(Integer.valueOf(m));
            }
            j += 1;
          }
        }
      }
    }
    for (;;)
    {
      localHashMap.put(Integer.valueOf(k), paramJSONObject);
      i += 1;
      break;
      return localHashMap;
      label155:
      paramJSONObject = null;
    }
  }
  
  public final FacebookRequestError.Category classify(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return FacebookRequestError.Category.TRANSIENT;
    }
    Set localSet;
    if ((otherErrors != null) && (otherErrors.containsKey(Integer.valueOf(paramInt1))))
    {
      localSet = (Set)otherErrors.get(Integer.valueOf(paramInt1));
      if ((localSet == null) || (localSet.contains(Integer.valueOf(paramInt2)))) {
        return FacebookRequestError.Category.OTHER;
      }
    }
    if ((loginRecoverableErrors != null) && (loginRecoverableErrors.containsKey(Integer.valueOf(paramInt1))))
    {
      localSet = (Set)loginRecoverableErrors.get(Integer.valueOf(paramInt1));
      if ((localSet == null) || (localSet.contains(Integer.valueOf(paramInt2)))) {
        return FacebookRequestError.Category.LOGIN_RECOVERABLE;
      }
    }
    if ((transientErrors != null) && (transientErrors.containsKey(Integer.valueOf(paramInt1))))
    {
      localSet = (Set)transientErrors.get(Integer.valueOf(paramInt1));
      if ((localSet == null) || (localSet.contains(Integer.valueOf(paramInt2)))) {
        return FacebookRequestError.Category.TRANSIENT;
      }
    }
    return FacebookRequestError.Category.OTHER;
  }
  
  public final Map<Integer, Set<Integer>> getLoginRecoverableErrors()
  {
    return loginRecoverableErrors;
  }
  
  public final Map<Integer, Set<Integer>> getOtherErrors()
  {
    return otherErrors;
  }
  
  public final String getRecoveryMessage(FacebookRequestError.Category paramCategory)
  {
    switch (paramCategory)
    {
    default: 
      return null;
    case ???: 
      return otherRecoveryMessage;
    case ???: 
      return loginRecoverableRecoveryMessage;
    }
    return transientRecoveryMessage;
  }
  
  public final Map<Integer, Set<Integer>> getTransientErrors()
  {
    return transientErrors;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookRequestErrorClassification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */