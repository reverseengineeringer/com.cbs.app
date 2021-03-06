package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class LegacyTokenHelper
{
  public static final String APPLICATION_ID_KEY = "com.facebook.TokenCachingStrategy.ApplicationId";
  public static final String DECLINED_PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.DeclinedPermissions";
  public static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
  public static final String EXPIRATION_DATE_KEY = "com.facebook.TokenCachingStrategy.ExpirationDate";
  private static final long INVALID_BUNDLE_MILLISECONDS = Long.MIN_VALUE;
  private static final String IS_SSO_KEY = "com.facebook.TokenCachingStrategy.IsSSO";
  private static final String JSON_VALUE = "value";
  private static final String JSON_VALUE_ENUM_TYPE = "enumType";
  private static final String JSON_VALUE_TYPE = "valueType";
  public static final String LAST_REFRESH_DATE_KEY = "com.facebook.TokenCachingStrategy.LastRefreshDate";
  public static final String PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.Permissions";
  private static final String TAG = LegacyTokenHelper.class.getSimpleName();
  public static final String TOKEN_KEY = "com.facebook.TokenCachingStrategy.Token";
  public static final String TOKEN_SOURCE_KEY = "com.facebook.TokenCachingStrategy.AccessTokenSource";
  private static final String TYPE_BOOLEAN = "bool";
  private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
  private static final String TYPE_BYTE = "byte";
  private static final String TYPE_BYTE_ARRAY = "byte[]";
  private static final String TYPE_CHAR = "char";
  private static final String TYPE_CHAR_ARRAY = "char[]";
  private static final String TYPE_DOUBLE = "double";
  private static final String TYPE_DOUBLE_ARRAY = "double[]";
  private static final String TYPE_ENUM = "enum";
  private static final String TYPE_FLOAT = "float";
  private static final String TYPE_FLOAT_ARRAY = "float[]";
  private static final String TYPE_INTEGER = "int";
  private static final String TYPE_INTEGER_ARRAY = "int[]";
  private static final String TYPE_LONG = "long";
  private static final String TYPE_LONG_ARRAY = "long[]";
  private static final String TYPE_SHORT = "short";
  private static final String TYPE_SHORT_ARRAY = "short[]";
  private static final String TYPE_STRING = "string";
  private static final String TYPE_STRING_LIST = "stringList";
  private SharedPreferences cache;
  private String cacheKey;
  
  public LegacyTokenHelper(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LegacyTokenHelper(Context paramContext, String paramString)
  {
    Validate.notNull(paramContext, "context");
    String str = paramString;
    if (Utility.isNullOrEmpty(paramString)) {
      str = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    }
    cacheKey = str;
    paramString = paramContext.getApplicationContext();
    if (paramString != null) {
      paramContext = paramString;
    }
    cache = paramContext.getSharedPreferences(cacheKey, 0);
  }
  
  private void deserializeKey(String paramString, Bundle paramBundle)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i = 0;
    Object localObject1 = new JSONObject(cache.getString(paramString, "{}"));
    Object localObject2 = ((JSONObject)localObject1).getString("valueType");
    if (((String)localObject2).equals("bool")) {
      paramBundle.putBoolean(paramString, ((JSONObject)localObject1).getBoolean("value"));
    }
    do
    {
      do
      {
        return;
        if (((String)localObject2).equals("bool[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new boolean[((JSONArray)localObject1).length()];
          while (i < localObject2.length)
          {
            localObject2[i] = ((JSONArray)localObject1).getBoolean(i);
            i += 1;
          }
          paramBundle.putBooleanArray(paramString, (boolean[])localObject2);
          return;
        }
        if (((String)localObject2).equals("byte"))
        {
          paramBundle.putByte(paramString, (byte)((JSONObject)localObject1).getInt("value"));
          return;
        }
        if (((String)localObject2).equals("byte[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new byte[((JSONArray)localObject1).length()];
          i = j;
          while (i < localObject2.length)
          {
            localObject2[i] = ((byte)((JSONArray)localObject1).getInt(i));
            i += 1;
          }
          paramBundle.putByteArray(paramString, (byte[])localObject2);
          return;
        }
        if (((String)localObject2).equals("short"))
        {
          paramBundle.putShort(paramString, (short)((JSONObject)localObject1).getInt("value"));
          return;
        }
        if (((String)localObject2).equals("short[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new short[((JSONArray)localObject1).length()];
          i = k;
          while (i < localObject2.length)
          {
            localObject2[i] = ((short)((JSONArray)localObject1).getInt(i));
            i += 1;
          }
          paramBundle.putShortArray(paramString, (short[])localObject2);
          return;
        }
        if (((String)localObject2).equals("int"))
        {
          paramBundle.putInt(paramString, ((JSONObject)localObject1).getInt("value"));
          return;
        }
        if (((String)localObject2).equals("int[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new int[((JSONArray)localObject1).length()];
          i = m;
          while (i < localObject2.length)
          {
            localObject2[i] = ((JSONArray)localObject1).getInt(i);
            i += 1;
          }
          paramBundle.putIntArray(paramString, (int[])localObject2);
          return;
        }
        if (((String)localObject2).equals("long"))
        {
          paramBundle.putLong(paramString, ((JSONObject)localObject1).getLong("value"));
          return;
        }
        if (((String)localObject2).equals("long[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new long[((JSONArray)localObject1).length()];
          i = n;
          while (i < localObject2.length)
          {
            localObject2[i] = ((JSONArray)localObject1).getLong(i);
            i += 1;
          }
          paramBundle.putLongArray(paramString, (long[])localObject2);
          return;
        }
        if (((String)localObject2).equals("float"))
        {
          paramBundle.putFloat(paramString, (float)((JSONObject)localObject1).getDouble("value"));
          return;
        }
        if (((String)localObject2).equals("float[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new float[((JSONArray)localObject1).length()];
          i = i1;
          while (i < localObject2.length)
          {
            localObject2[i] = ((float)((JSONArray)localObject1).getDouble(i));
            i += 1;
          }
          paramBundle.putFloatArray(paramString, (float[])localObject2);
          return;
        }
        if (((String)localObject2).equals("double"))
        {
          paramBundle.putDouble(paramString, ((JSONObject)localObject1).getDouble("value"));
          return;
        }
        if (((String)localObject2).equals("double[]"))
        {
          localObject1 = ((JSONObject)localObject1).getJSONArray("value");
          localObject2 = new double[((JSONArray)localObject1).length()];
          i = i2;
          while (i < localObject2.length)
          {
            localObject2[i] = ((JSONArray)localObject1).getDouble(i);
            i += 1;
          }
          paramBundle.putDoubleArray(paramString, (double[])localObject2);
          return;
        }
        if (!((String)localObject2).equals("char")) {
          break;
        }
        localObject1 = ((JSONObject)localObject1).getString("value");
      } while ((localObject1 == null) || (((String)localObject1).length() != 1));
      paramBundle.putChar(paramString, ((String)localObject1).charAt(0));
      return;
      Object localObject3;
      if (((String)localObject2).equals("char[]"))
      {
        localObject1 = ((JSONObject)localObject1).getJSONArray("value");
        localObject2 = new char[((JSONArray)localObject1).length()];
        i = 0;
        while (i < localObject2.length)
        {
          localObject3 = ((JSONArray)localObject1).getString(i);
          if ((localObject3 != null) && (((String)localObject3).length() == 1)) {
            localObject2[i] = ((String)localObject3).charAt(0);
          }
          i += 1;
        }
        paramBundle.putCharArray(paramString, (char[])localObject2);
        return;
      }
      if (((String)localObject2).equals("string"))
      {
        paramBundle.putString(paramString, ((JSONObject)localObject1).getString("value"));
        return;
      }
      if (((String)localObject2).equals("stringList"))
      {
        localObject2 = ((JSONObject)localObject1).getJSONArray("value");
        j = ((JSONArray)localObject2).length();
        localObject3 = new ArrayList(j);
        i = 0;
        if (i < j)
        {
          localObject1 = ((JSONArray)localObject2).get(i);
          if (localObject1 == JSONObject.NULL) {}
          for (localObject1 = null;; localObject1 = (String)localObject1)
          {
            ((ArrayList)localObject3).add(i, localObject1);
            i += 1;
            break;
          }
        }
        paramBundle.putStringArrayList(paramString, (ArrayList)localObject3);
        return;
      }
    } while (!((String)localObject2).equals("enum"));
    try
    {
      paramBundle.putSerializable(paramString, Enum.valueOf(Class.forName(((JSONObject)localObject1).getString("enumType")), ((JSONObject)localObject1).getString("value")));
      return;
    }
    catch (ClassNotFoundException paramString) {}catch (IllegalArgumentException paramString) {}
  }
  
  public static String getApplicationId(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return paramBundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
  }
  
  static Date getDate(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {}
    long l;
    do
    {
      return null;
      l = paramBundle.getLong(paramString, Long.MIN_VALUE);
    } while (l == Long.MIN_VALUE);
    return new Date(l);
  }
  
  public static Date getExpirationDate(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return getDate(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
  }
  
  public static long getExpirationMilliseconds(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return paramBundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate");
  }
  
  public static Date getLastRefreshDate(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return getDate(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
  }
  
  public static long getLastRefreshMilliseconds(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return paramBundle.getLong("com.facebook.TokenCachingStrategy.LastRefreshDate");
  }
  
  public static Set<String> getPermissions(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    paramBundle = paramBundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
    if (paramBundle == null) {
      return null;
    }
    return new HashSet(paramBundle);
  }
  
  public static AccessTokenSource getSource(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    if (paramBundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
      return (AccessTokenSource)paramBundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource");
    }
    if (paramBundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO")) {
      return AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }
    return AccessTokenSource.WEB_VIEW;
  }
  
  public static String getToken(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    return paramBundle.getString("com.facebook.TokenCachingStrategy.Token");
  }
  
  public static boolean hasTokenInformation(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    String str;
    do
    {
      return false;
      str = paramBundle.getString("com.facebook.TokenCachingStrategy.Token");
    } while ((str == null) || (str.length() == 0) || (paramBundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) == 0L));
    return true;
  }
  
  public static void putApplicationId(Bundle paramBundle, String paramString)
  {
    Validate.notNull(paramBundle, "bundle");
    paramBundle.putString("com.facebook.TokenCachingStrategy.ApplicationId", paramString);
  }
  
  static void putDate(Bundle paramBundle, String paramString, Date paramDate)
  {
    paramBundle.putLong(paramString, paramDate.getTime());
  }
  
  public static void putDeclinedPermissions(Bundle paramBundle, Collection<String> paramCollection)
  {
    Validate.notNull(paramBundle, "bundle");
    Validate.notNull(paramCollection, "value");
    paramBundle.putStringArrayList("com.facebook.TokenCachingStrategy.DeclinedPermissions", new ArrayList(paramCollection));
  }
  
  public static void putExpirationDate(Bundle paramBundle, Date paramDate)
  {
    Validate.notNull(paramBundle, "bundle");
    Validate.notNull(paramDate, "value");
    putDate(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate", paramDate);
  }
  
  public static void putExpirationMilliseconds(Bundle paramBundle, long paramLong)
  {
    Validate.notNull(paramBundle, "bundle");
    paramBundle.putLong("com.facebook.TokenCachingStrategy.ExpirationDate", paramLong);
  }
  
  public static void putLastRefreshDate(Bundle paramBundle, Date paramDate)
  {
    Validate.notNull(paramBundle, "bundle");
    Validate.notNull(paramDate, "value");
    putDate(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", paramDate);
  }
  
  public static void putLastRefreshMilliseconds(Bundle paramBundle, long paramLong)
  {
    Validate.notNull(paramBundle, "bundle");
    paramBundle.putLong("com.facebook.TokenCachingStrategy.LastRefreshDate", paramLong);
  }
  
  public static void putPermissions(Bundle paramBundle, Collection<String> paramCollection)
  {
    Validate.notNull(paramBundle, "bundle");
    Validate.notNull(paramCollection, "value");
    paramBundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList(paramCollection));
  }
  
  public static void putSource(Bundle paramBundle, AccessTokenSource paramAccessTokenSource)
  {
    Validate.notNull(paramBundle, "bundle");
    paramBundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", paramAccessTokenSource);
  }
  
  public static void putToken(Bundle paramBundle, String paramString)
  {
    Validate.notNull(paramBundle, "bundle");
    Validate.notNull(paramString, "value");
    paramBundle.putString("com.facebook.TokenCachingStrategy.Token", paramString);
  }
  
  private void serializeKey(String paramString, Bundle paramBundle, SharedPreferences.Editor paramEditor)
  {
    Object localObject1 = null;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i = 0;
    Object localObject3 = paramBundle.get(paramString);
    if (localObject3 == null) {}
    for (;;)
    {
      return;
      JSONObject localJSONObject = new JSONObject();
      if ((localObject3 instanceof Byte))
      {
        localJSONObject.put("value", ((Byte)localObject3).intValue());
        paramBundle = null;
        localObject1 = "byte";
      }
      while (localObject1 != null)
      {
        localJSONObject.put("valueType", localObject1);
        if (paramBundle != null) {
          localJSONObject.putOpt("value", paramBundle);
        }
        paramEditor.putString(paramString, localJSONObject.toString());
        return;
        if ((localObject3 instanceof Short))
        {
          localJSONObject.put("value", ((Short)localObject3).intValue());
          paramBundle = null;
          localObject1 = "short";
        }
        else if ((localObject3 instanceof Integer))
        {
          localJSONObject.put("value", ((Integer)localObject3).intValue());
          paramBundle = null;
          localObject1 = "int";
        }
        else if ((localObject3 instanceof Long))
        {
          localJSONObject.put("value", ((Long)localObject3).longValue());
          paramBundle = null;
          localObject1 = "long";
        }
        else if ((localObject3 instanceof Float))
        {
          localJSONObject.put("value", ((Float)localObject3).doubleValue());
          paramBundle = null;
          localObject1 = "float";
        }
        else if ((localObject3 instanceof Double))
        {
          localJSONObject.put("value", ((Double)localObject3).doubleValue());
          paramBundle = null;
          localObject1 = "double";
        }
        else if ((localObject3 instanceof Boolean))
        {
          localJSONObject.put("value", ((Boolean)localObject3).booleanValue());
          paramBundle = null;
          localObject1 = "bool";
        }
        else if ((localObject3 instanceof Character))
        {
          localJSONObject.put("value", localObject3.toString());
          paramBundle = null;
          localObject1 = "char";
        }
        else if ((localObject3 instanceof String))
        {
          localJSONObject.put("value", (String)localObject3);
          paramBundle = null;
          localObject1 = "string";
        }
        else if ((localObject3 instanceof Enum))
        {
          localJSONObject.put("value", localObject3.toString());
          localJSONObject.put("enumType", localObject3.getClass().getName());
          paramBundle = null;
          localObject1 = "enum";
        }
        else
        {
          paramBundle = new JSONArray();
          Object localObject2;
          if ((localObject3 instanceof byte[]))
          {
            localObject1 = "byte[]";
            localObject2 = (byte[])localObject3;
            j = localObject2.length;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof short[]))
          {
            localObject1 = "short[]";
            localObject2 = (short[])localObject3;
            k = localObject2.length;
            i = j;
            while (i < k)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof int[]))
          {
            localObject1 = "int[]";
            localObject2 = (int[])localObject3;
            j = localObject2.length;
            i = k;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof long[]))
          {
            localObject1 = "long[]";
            localObject2 = (long[])localObject3;
            j = localObject2.length;
            i = m;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof float[]))
          {
            localObject1 = "float[]";
            localObject2 = (float[])localObject3;
            j = localObject2.length;
            i = n;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof double[]))
          {
            localObject1 = "double[]";
            localObject2 = (double[])localObject3;
            j = localObject2.length;
            i = i1;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof boolean[]))
          {
            localObject1 = "bool[]";
            localObject2 = (boolean[])localObject3;
            j = localObject2.length;
            i = i2;
            while (i < j)
            {
              paramBundle.put(localObject2[i]);
              i += 1;
            }
          }
          else if ((localObject3 instanceof char[]))
          {
            localObject1 = "char[]";
            localObject2 = (char[])localObject3;
            j = localObject2.length;
            i = i3;
            while (i < j)
            {
              paramBundle.put(String.valueOf(localObject2[i]));
              i += 1;
            }
          }
          else if ((localObject3 instanceof List))
          {
            localObject2 = "stringList";
            Iterator localIterator = ((List)localObject3).iterator();
            while (localIterator.hasNext())
            {
              localObject3 = (String)localIterator.next();
              localObject1 = localObject3;
              if (localObject3 == null) {
                localObject1 = JSONObject.NULL;
              }
              paramBundle.put(localObject1);
            }
            localObject1 = localObject2;
          }
          else
          {
            paramBundle = null;
          }
        }
      }
    }
  }
  
  public final void clear()
  {
    cache.edit().clear().apply();
  }
  
  public final Bundle load()
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = cache.getAll().keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        deserializeKey(str, localBundle);
      }
      catch (JSONException localJSONException)
      {
        Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error reading cached value for key: '" + str + "' -- " + localJSONException);
        return null;
      }
    }
    return localJSONException;
  }
  
  public final void save(Bundle paramBundle)
  {
    Validate.notNull(paramBundle, "bundle");
    SharedPreferences.Editor localEditor = cache.edit();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        serializeKey(str, paramBundle, localEditor);
      }
      catch (JSONException paramBundle)
      {
        Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error processing value for key: '" + str + "' -- " + paramBundle);
        return;
      }
    }
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.facebook.LegacyTokenHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */