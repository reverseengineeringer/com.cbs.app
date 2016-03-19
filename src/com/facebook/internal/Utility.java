package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class Utility
{
  private static final String APPLICATION_FIELDS = "fields";
  private static final String APP_SETTINGS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_SETTINGS.%s";
  private static final String APP_SETTINGS_PREFS_STORE = "com.facebook.internal.preferences.APP_SETTINGS";
  private static final String APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES = "android_sdk_error_categories";
  private static final String APP_SETTING_DIALOG_CONFIGS = "android_dialog_configs";
  private static final String[] APP_SETTING_FIELDS = { "supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories" };
  private static final String APP_SETTING_NUX_CONTENT = "gdpv4_nux_content";
  private static final String APP_SETTING_NUX_ENABLED = "gdpv4_nux_enabled";
  private static final String APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
  public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
  private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "\\|";
  private static final String DIALOG_CONFIG_NAME_KEY = "name";
  private static final String DIALOG_CONFIG_URL_KEY = "url";
  private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
  private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a2";
  private static final int GINGERBREAD_MR1 = 10;
  private static final String HASH_ALGORITHM_MD5 = "MD5";
  private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
  static final String LOG_TAG = "FacebookSDK";
  private static final int REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS = 1800000;
  private static final String URL_SCHEME = "https";
  private static final String UTF8 = "UTF-8";
  private static long availableExternalStorageGB = 0L;
  private static String carrierName = "NoCarrier";
  private static String deviceTimezone;
  private static Map<String, FetchedAppSettings> fetchedAppSettings = new ConcurrentHashMap();
  private static AtomicBoolean loadingSettings = new AtomicBoolean(false);
  private static final String noCarrierConstant = "NoCarrier";
  private static int numCPUCores = 0;
  private static long timestampOfLastCheck = -1L;
  private static long totalExternalStorageGB = -1L;
  
  static
  {
    availableExternalStorageGB = -1L;
    deviceTimezone = "";
  }
  
  public static <T> boolean areObjectsEqual(T paramT1, T paramT2)
  {
    if (paramT1 == null) {
      return paramT2 == null;
    }
    return paramT1.equals(paramT2);
  }
  
  public static <T> ArrayList<T> arrayList(T... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramVarArgs[i]);
      i += 1;
    }
    return localArrayList;
  }
  
  public static <T> List<T> asListNoNulls(T... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      T ? = paramVarArgs[i];
      if (? != null) {
        localArrayList.add(?);
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static JSONObject awaitGetGraphMeRequestWithCache(String paramString)
  {
    JSONObject localJSONObject = ProfileInformationCache.getProfileInformation(paramString);
    if (localJSONObject != null) {
      return localJSONObject;
    }
    paramString = getGraphMeRequestWithCache(paramString).executeAndWait();
    if (paramString.getError() != null) {
      return null;
    }
    return paramString.getJSONObject();
  }
  
  public static Uri buildUri(String paramString1, String paramString2, Bundle paramBundle)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.authority(paramString1);
    localBuilder.path(paramString2);
    if (paramBundle != null)
    {
      paramString1 = paramBundle.keySet().iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (String)paramString1.next();
        Object localObject = paramBundle.get(paramString2);
        if ((localObject instanceof String)) {
          localBuilder.appendQueryParameter(paramString2, (String)localObject);
        }
      }
    }
    return localBuilder.build();
  }
  
  public static void clearCaches(Context paramContext)
  {
    ImageDownloader.clearCache(paramContext);
  }
  
  private static void clearCookiesForDomain(Context paramContext, String paramString)
  {
    CookieSyncManager.createInstance(paramContext).sync();
    paramContext = CookieManager.getInstance();
    Object localObject = paramContext.getCookie(paramString);
    if (localObject == null) {
      return;
    }
    localObject = ((String)localObject).split(";");
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = localObject[i].split("=");
      if (arrayOfString.length > 0) {
        paramContext.setCookie(paramString, arrayOfString[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
      }
      i += 1;
    }
    paramContext.removeExpiredCookie();
  }
  
  public static void clearFacebookCookies(Context paramContext)
  {
    clearCookiesForDomain(paramContext, "facebook.com");
    clearCookiesForDomain(paramContext, ".facebook.com");
    clearCookiesForDomain(paramContext, "https://facebook.com");
    clearCookiesForDomain(paramContext, "https://.facebook.com");
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static String coerceValueIfNullOrEmpty(String paramString1, String paramString2)
  {
    if (isNullOrEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  private static long convertBytesToGB(double paramDouble)
  {
    return Math.round(paramDouble / 1.073741824E9D);
  }
  
  static Map<String, Object> convertJSONObjectToHashMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    JSONArray localJSONArray = paramJSONObject.names();
    int i = 0;
    while (i < localJSONArray.length())
    {
      try
      {
        String str = localJSONArray.getString(i);
        Object localObject2 = paramJSONObject.get(str);
        Object localObject1 = localObject2;
        if ((localObject2 instanceof JSONObject)) {
          localObject1 = convertJSONObjectToHashMap((JSONObject)localObject2);
        }
        localHashMap.put(str, localObject1);
      }
      catch (JSONException localJSONException)
      {
        for (;;) {}
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public static int copyAndCloseInputStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    int i = 0;
    try
    {
      localBufferedInputStream = new BufferedInputStream(paramInputStream);
      byte[] arrayOfByte;
      int j;
      if (localBufferedInputStream == null) {
        break label76;
      }
    }
    finally
    {
      try
      {
        arrayOfByte = new byte[' '];
        for (;;)
        {
          j = localBufferedInputStream.read(arrayOfByte);
          if (j == -1) {
            break;
          }
          paramOutputStream.write(arrayOfByte, 0, j);
          i += j;
        }
        localBufferedInputStream.close();
        if (paramInputStream != null) {
          paramInputStream.close();
        }
        return i;
      }
      finally
      {
        BufferedInputStream localBufferedInputStream;
        for (;;) {}
      }
      paramOutputStream = finally;
      localBufferedInputStream = null;
    }
    localBufferedInputStream.close();
    label76:
    if (paramInputStream != null) {
      paramInputStream.close();
    }
    throw paramOutputStream;
  }
  
  public static void deleteDirectory(File paramFile)
  {
    if (!paramFile.exists()) {
      return;
    }
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        deleteDirectory(arrayOfFile[i]);
        i += 1;
      }
    }
    paramFile.delete();
  }
  
  public static void disconnectQuietly(URLConnection paramURLConnection)
  {
    if ((paramURLConnection instanceof HttpURLConnection)) {
      ((HttpURLConnection)paramURLConnection).disconnect();
    }
  }
  
  private static boolean externalStorageExists()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }
  
  public static <T> List<T> filter(List<T> paramList, Predicate<T> paramPredicate)
  {
    if (paramList == null) {}
    ArrayList localArrayList;
    do
    {
      return null;
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = paramList.next();
        if (paramPredicate.apply(localObject)) {
          localArrayList.add(localObject);
        }
      }
    } while (localArrayList.size() == 0);
    return localArrayList;
  }
  
  public static String getActivityName(Context paramContext)
  {
    if (paramContext == null) {
      return "null";
    }
    if (paramContext == paramContext.getApplicationContext()) {
      return "unknown";
    }
    return paramContext.getClass().getSimpleName();
  }
  
  private static JSONObject getAppSettingsQueryResponse(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", TextUtils.join(",", APP_SETTING_FIELDS));
    paramString = GraphRequest.newGraphPathRequest(null, paramString, null);
    paramString.setSkipClientToken(true);
    paramString.setParameters(localBundle);
    return paramString.executeAndWait().getJSONObject();
  }
  
  public static FetchedAppSettings getAppSettingsWithoutQuery(String paramString)
  {
    if (paramString != null) {
      return (FetchedAppSettings)fetchedAppSettings.get(paramString);
    }
    return null;
  }
  
  public static Date getBundleLongAsDate(Bundle paramBundle, String paramString, Date paramDate)
  {
    if (paramBundle == null) {
      return null;
    }
    paramBundle = paramBundle.get(paramString);
    long l;
    if ((paramBundle instanceof Long)) {
      l = ((Long)paramBundle).longValue();
    }
    for (;;)
    {
      if (l != 0L) {
        break label67;
      }
      return new Date(Long.MAX_VALUE);
      if ((paramBundle instanceof String)) {
        try
        {
          l = Long.parseLong((String)paramBundle);
        }
        catch (NumberFormatException paramBundle)
        {
          return null;
        }
      }
    }
    return null;
    label67:
    return new Date(l * 1000L + paramDate.getTime());
  }
  
  public static long getContentSize(Uri paramUri)
  {
    try
    {
      paramUri = FacebookSdk.getApplicationContext().getContentResolver().query(paramUri, null, null, null, null);
      int i;
      long l;
      if (paramUri == null) {
        break label66;
      }
    }
    finally
    {
      try
      {
        i = paramUri.getColumnIndex("_size");
        paramUri.moveToFirst();
        l = paramUri.getLong(i);
        if (paramUri != null) {
          paramUri.close();
        }
        return l;
      }
      finally {}
      localObject1 = finally;
      paramUri = null;
    }
    paramUri.close();
    label66:
    throw ((Throwable)localObject1);
  }
  
  public static DialogFeatureConfig getDialogFeatureConfig(String paramString1, String paramString2, String paramString3)
  {
    if ((isNullOrEmpty(paramString2)) || (isNullOrEmpty(paramString3))) {
      return null;
    }
    paramString1 = (FetchedAppSettings)fetchedAppSettings.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Map)paramString1.getDialogConfigurations().get(paramString2);
      if (paramString1 != null) {
        return (DialogFeatureConfig)paramString1.get(paramString3);
      }
    }
    return null;
  }
  
  private static GraphRequest getGraphMeRequestWithCache(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
    localBundle.putString("access_token", paramString);
    return new GraphRequest(null, "me", localBundle, HttpMethod.GET, null);
  }
  
  public static void getGraphMeRequestWithCacheAsync(final String paramString, GraphMeRequestWithCacheCallback paramGraphMeRequestWithCacheCallback)
  {
    JSONObject localJSONObject = ProfileInformationCache.getProfileInformation(paramString);
    if (localJSONObject != null)
    {
      paramGraphMeRequestWithCacheCallback.onSuccess(localJSONObject);
      return;
    }
    paramGraphMeRequestWithCacheCallback = new GraphRequest.Callback()
    {
      public final void onCompleted(GraphResponse paramAnonymousGraphResponse)
      {
        if (paramAnonymousGraphResponse.getError() != null)
        {
          val$callback.onFailure(paramAnonymousGraphResponse.getError().getException());
          return;
        }
        ProfileInformationCache.putProfileInformation(paramString, paramAnonymousGraphResponse.getJSONObject());
        val$callback.onSuccess(paramAnonymousGraphResponse.getJSONObject());
      }
    };
    paramString = getGraphMeRequestWithCache(paramString);
    paramString.setCallback(paramGraphMeRequestWithCacheCallback);
    paramString.executeAsync();
  }
  
  public static String getMetadataApplicationId(Context paramContext)
  {
    Validate.notNull(paramContext, "context");
    FacebookSdk.sdkInitialize(paramContext);
    return FacebookSdk.getApplicationId();
  }
  
  public static Method getMethodQuietly(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramVarArgs);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public static Method getMethodQuietly(String paramString1, String paramString2, Class<?>... paramVarArgs)
  {
    try
    {
      paramString1 = getMethodQuietly(Class.forName(paramString1), paramString2, paramVarArgs);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1) {}
    return null;
  }
  
  public static Object getStringPropertyAsJSON(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    paramJSONObject = paramJSONObject.opt(paramString1);
    if ((paramJSONObject != null) && ((paramJSONObject instanceof String))) {
      paramJSONObject = new JSONTokener((String)paramJSONObject).nextValue();
    }
    for (;;)
    {
      if ((paramJSONObject != null) && (!(paramJSONObject instanceof JSONObject)) && (!(paramJSONObject instanceof JSONArray)))
      {
        if (paramString2 != null)
        {
          paramString1 = new JSONObject();
          paramString1.putOpt(paramString2, paramJSONObject);
          return paramString1;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
      }
      return paramJSONObject;
    }
  }
  
  public static String getUriString(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return paramUri.toString();
  }
  
  public static boolean hasSameId(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if ((paramJSONObject1 == null) || (paramJSONObject2 == null) || (!paramJSONObject1.has("id")) || (!paramJSONObject2.has("id"))) {}
    do
    {
      return false;
      if (paramJSONObject1.equals(paramJSONObject2)) {
        return true;
      }
      paramJSONObject1 = paramJSONObject1.optString("id");
      paramJSONObject2 = paramJSONObject2.optString("id");
    } while ((paramJSONObject1 == null) || (paramJSONObject2 == null));
    return paramJSONObject1.equals(paramJSONObject2);
  }
  
  private static String hashBytes(MessageDigest paramMessageDigest, byte[] paramArrayOfByte)
  {
    paramMessageDigest.update(paramArrayOfByte);
    paramMessageDigest = paramMessageDigest.digest();
    paramArrayOfByte = new StringBuilder();
    int j = paramMessageDigest.length;
    int i = 0;
    while (i < j)
    {
      int k = paramMessageDigest[i];
      paramArrayOfByte.append(Integer.toHexString(k >> 4 & 0xF));
      paramArrayOfByte.append(Integer.toHexString(k >> 0 & 0xF));
      i += 1;
    }
    return paramArrayOfByte.toString();
  }
  
  public static <T> HashSet<T> hashSet(T... paramVarArgs)
  {
    HashSet localHashSet = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramVarArgs[i]);
      i += 1;
    }
    return localHashSet;
  }
  
  private static String hashWithAlgorithm(String paramString1, String paramString2)
  {
    return hashWithAlgorithm(paramString1, paramString2.getBytes());
  }
  
  private static String hashWithAlgorithm(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      return hashBytes(paramString, paramArrayOfByte);
    }
    catch (NoSuchAlgorithmException paramString) {}
    return null;
  }
  
  public static int[] intersectRanges(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int n = 0;
    if (paramArrayOfInt1 == null) {
      return paramArrayOfInt2;
    }
    if (paramArrayOfInt2 == null) {
      return paramArrayOfInt1;
    }
    int[] arrayOfInt = new int[paramArrayOfInt1.length + paramArrayOfInt2.length];
    int i1 = 0;
    int m = 0;
    int i = m;
    int k;
    int i2;
    if (i1 < paramArrayOfInt1.length)
    {
      i = m;
      if (n < paramArrayOfInt2.length)
      {
        k = paramArrayOfInt1[i1];
        i2 = paramArrayOfInt2[n];
        if (i1 >= paramArrayOfInt1.length - 1) {
          break label300;
        }
      }
    }
    label238:
    label266:
    label276:
    label287:
    label300:
    for (i = paramArrayOfInt1[(i1 + 1)];; i = Integer.MAX_VALUE)
    {
      if (n < paramArrayOfInt2.length - 1) {}
      for (int j = paramArrayOfInt2[(n + 1)];; j = Integer.MAX_VALUE)
      {
        if (k < i2) {
          if (i > i2)
          {
            if (i > j) {
              break label287;
            }
            i1 += 2;
            k = i2;
            j = i;
            i = i1;
            i2 = n;
          }
        }
        for (;;)
        {
          n = i2;
          i1 = i;
          if (k == Integer.MIN_VALUE) {
            break;
          }
          n = m + 1;
          arrayOfInt[m] = k;
          if (j == Integer.MAX_VALUE) {
            break label266;
          }
          m = n + 1;
          arrayOfInt[n] = j;
          n = i2;
          i1 = i;
          break;
          i = i1 + 2;
          j = Integer.MAX_VALUE;
          k = Integer.MIN_VALUE;
          i2 = n;
          continue;
          if (j <= k) {
            break label276;
          }
          if (j <= i) {
            break label238;
          }
          i1 += 2;
          j = i;
          i2 = n;
          i = i1;
        }
        for (i = k;; i = i2)
        {
          k = j;
          j = i;
          i = k;
          for (;;)
          {
            i2 = n + 2;
            k = j;
            j = i;
            i = i1;
            break;
            i = n;
            return Arrays.copyOf(arrayOfInt, i);
            i = Integer.MAX_VALUE;
            j = Integer.MIN_VALUE;
          }
        }
      }
    }
  }
  
  public static Object invokeMethodQuietly(Object paramObject, Method paramMethod, Object... paramVarArgs)
  {
    try
    {
      paramObject = paramMethod.invoke(paramObject, paramVarArgs);
      return paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      return null;
    }
    catch (InvocationTargetException paramObject) {}
    return null;
  }
  
  public static boolean isContentUri(Uri paramUri)
  {
    return (paramUri != null) && ("content".equalsIgnoreCase(paramUri.getScheme()));
  }
  
  public static boolean isCurrentAccessToken(AccessToken paramAccessToken)
  {
    if (paramAccessToken != null) {
      return paramAccessToken.equals(AccessToken.getCurrentAccessToken());
    }
    return false;
  }
  
  public static boolean isFileUri(Uri paramUri)
  {
    return (paramUri != null) && ("file".equalsIgnoreCase(paramUri.getScheme()));
  }
  
  public static boolean isNullOrEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static <T> boolean isNullOrEmpty(Collection<T> paramCollection)
  {
    return (paramCollection == null) || (paramCollection.size() == 0);
  }
  
  public static <T> boolean isSubset(Collection<T> paramCollection1, Collection<T> paramCollection2)
  {
    boolean bool = false;
    if ((paramCollection2 == null) || (paramCollection2.size() == 0))
    {
      if ((paramCollection1 == null) || (paramCollection1.size() == 0)) {
        bool = true;
      }
      return bool;
    }
    paramCollection2 = new HashSet(paramCollection2);
    paramCollection1 = paramCollection1.iterator();
    while (paramCollection1.hasNext()) {
      if (!paramCollection2.contains(paramCollection1.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean isWebUri(Uri paramUri)
  {
    return (paramUri != null) && (("http".equalsIgnoreCase(paramUri.getScheme())) || ("https".equalsIgnoreCase(paramUri.getScheme())));
  }
  
  public static Set<String> jsonArrayToSet(JSONArray paramJSONArray)
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localHashSet.add(paramJSONArray.getString(i));
      i += 1;
    }
    return localHashSet;
  }
  
  public static List<String> jsonArrayToStringList(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add(paramJSONArray.getString(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static void loadAppSettingsAsync(final Context paramContext, String paramString)
  {
    boolean bool = loadingSettings.compareAndSet(false, true);
    if ((isNullOrEmpty(paramString)) || (fetchedAppSettings.containsKey(paramString)) || (!bool)) {}
    for (;;)
    {
      return;
      final String str = String.format("com.facebook.internal.APP_SETTINGS.%s", new Object[] { paramString });
      FacebookSdk.getExecutor().execute(new Runnable()
      {
        public final void run()
        {
          JSONObject localJSONObject = Utility.getAppSettingsQueryResponse(val$applicationId);
          if (localJSONObject != null)
          {
            Utility.parseAppSettingsFromJSON(val$applicationId, localJSONObject);
            paramContext.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(str, localJSONObject.toString()).apply();
          }
          Utility.loadingSettings.set(false);
        }
      });
      paramContext = paramContext.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(str, null);
      if (isNullOrEmpty(paramContext)) {
        continue;
      }
      try
      {
        paramContext = new JSONObject(paramContext);
        if (paramContext == null) {
          continue;
        }
        parseAppSettingsFromJSON(paramString, paramContext);
        return;
      }
      catch (JSONException paramContext)
      {
        for (;;)
        {
          logd("FacebookSDK", paramContext);
          paramContext = null;
        }
      }
    }
  }
  
  public static void logd(String paramString, Exception paramException)
  {
    if ((FacebookSdk.isDebugEnabled()) && (paramString != null) && (paramException != null)) {
      new StringBuilder().append(paramException.getClass().getSimpleName()).append(": ").append(paramException.getMessage());
    }
  }
  
  public static void logd(String paramString1, String paramString2)
  {
    FacebookSdk.isDebugEnabled();
  }
  
  public static void logd(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (FacebookSdk.isDebugEnabled()) {
      isNullOrEmpty(paramString1);
    }
  }
  
  public static <T, K> List<K> map(List<T> paramList, Mapper<T, K> paramMapper)
  {
    if (paramList == null) {}
    ArrayList localArrayList;
    do
    {
      return null;
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = paramMapper.apply(paramList.next());
        if (localObject != null) {
          localArrayList.add(localObject);
        }
      }
    } while (localArrayList.size() == 0);
    return localArrayList;
  }
  
  public static String md5hash(String paramString)
  {
    return hashWithAlgorithm("MD5", paramString);
  }
  
  private static FetchedAppSettings parseAppSettingsFromJSON(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.optJSONArray("android_sdk_error_categories");
    if (localObject == null) {}
    for (localObject = FacebookRequestErrorClassification.getDefaultErrorClassification();; localObject = FacebookRequestErrorClassification.createFromJSON((JSONArray)localObject))
    {
      paramJSONObject = new FetchedAppSettings(paramJSONObject.optBoolean("supports_implicit_sdk_logging", false), paramJSONObject.optString("gdpv4_nux_content", ""), paramJSONObject.optBoolean("gdpv4_nux_enabled", false), parseDialogConfigurations(paramJSONObject.optJSONObject("android_dialog_configs")), (FacebookRequestErrorClassification)localObject, null);
      fetchedAppSettings.put(paramString, paramJSONObject);
      return paramJSONObject;
    }
  }
  
  private static Map<String, Map<String, DialogFeatureConfig>> parseDialogConfigurations(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    if (paramJSONObject != null)
    {
      JSONArray localJSONArray = paramJSONObject.optJSONArray("data");
      if (localJSONArray != null)
      {
        int i = 0;
        while (i < localJSONArray.length())
        {
          DialogFeatureConfig localDialogFeatureConfig = DialogFeatureConfig.parseDialogConfig(localJSONArray.optJSONObject(i));
          if (localDialogFeatureConfig != null)
          {
            String str = localDialogFeatureConfig.getDialogName();
            Map localMap = (Map)localHashMap.get(str);
            paramJSONObject = localMap;
            if (localMap == null)
            {
              paramJSONObject = new HashMap();
              localHashMap.put(str, paramJSONObject);
            }
            paramJSONObject.put(localDialogFeatureConfig.getFeatureName(), localDialogFeatureConfig);
          }
          i += 1;
        }
      }
    }
    return localHashMap;
  }
  
  public static Bundle parseUrlQueryString(String paramString)
  {
    Bundle localBundle = new Bundle();
    int j;
    int i;
    if (!isNullOrEmpty(paramString))
    {
      paramString = paramString.split("&");
      j = paramString.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        try
        {
          if (arrayOfString.length == 2) {
            localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), URLDecoder.decode(arrayOfString[1], "UTF-8"));
          } else if (arrayOfString.length == 1) {
            localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), "");
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          logd("FacebookSDK", localUnsupportedEncodingException);
        }
      }
      return localBundle;
      i += 1;
    }
  }
  
  public static void putCommaSeparatedStringList(Bundle paramBundle, String paramString, ArrayList<String> paramArrayList)
  {
    if (paramArrayList != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        localStringBuilder.append((String)paramArrayList.next());
        localStringBuilder.append(",");
      }
      paramArrayList = "";
      if (localStringBuilder.length() > 0) {
        paramArrayList = localStringBuilder.substring(0, localStringBuilder.length() - 1);
      }
      paramBundle.putString(paramString, paramArrayList);
    }
  }
  
  public static boolean putJSONValueInBundle(Bundle paramBundle, String paramString, Object paramObject)
  {
    if (paramObject == null) {
      paramBundle.remove(paramString);
    }
    for (;;)
    {
      return true;
      if ((paramObject instanceof Boolean))
      {
        paramBundle.putBoolean(paramString, ((Boolean)paramObject).booleanValue());
      }
      else if ((paramObject instanceof boolean[]))
      {
        paramBundle.putBooleanArray(paramString, (boolean[])paramObject);
      }
      else if ((paramObject instanceof Double))
      {
        paramBundle.putDouble(paramString, ((Double)paramObject).doubleValue());
      }
      else if ((paramObject instanceof double[]))
      {
        paramBundle.putDoubleArray(paramString, (double[])paramObject);
      }
      else if ((paramObject instanceof Integer))
      {
        paramBundle.putInt(paramString, ((Integer)paramObject).intValue());
      }
      else if ((paramObject instanceof int[]))
      {
        paramBundle.putIntArray(paramString, (int[])paramObject);
      }
      else if ((paramObject instanceof Long))
      {
        paramBundle.putLong(paramString, ((Long)paramObject).longValue());
      }
      else if ((paramObject instanceof long[]))
      {
        paramBundle.putLongArray(paramString, (long[])paramObject);
      }
      else if ((paramObject instanceof String))
      {
        paramBundle.putString(paramString, (String)paramObject);
      }
      else if ((paramObject instanceof JSONArray))
      {
        paramBundle.putString(paramString, ((JSONArray)paramObject).toString());
      }
      else
      {
        if (!(paramObject instanceof JSONObject)) {
          break;
        }
        paramBundle.putString(paramString, ((JSONObject)paramObject).toString());
      }
    }
    return false;
  }
  
  public static void putNonEmptyString(Bundle paramBundle, String paramString1, String paramString2)
  {
    if (!isNullOrEmpty(paramString2)) {
      paramBundle.putString(paramString1, paramString2);
    }
  }
  
  public static void putUri(Bundle paramBundle, String paramString, Uri paramUri)
  {
    if (paramUri != null) {
      putNonEmptyString(paramBundle, paramString, paramUri.toString());
    }
  }
  
  public static FetchedAppSettings queryAppSettings(String paramString, boolean paramBoolean)
  {
    if ((!paramBoolean) && (fetchedAppSettings.containsKey(paramString))) {
      return (FetchedAppSettings)fetchedAppSettings.get(paramString);
    }
    JSONObject localJSONObject = getAppSettingsQueryResponse(paramString);
    if (localJSONObject == null) {
      return null;
    }
    return parseAppSettingsFromJSON(paramString, localJSONObject);
  }
  
  /* Error */
  public static String readStreamToString(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 383	java/io/BufferedInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 386	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   10: astore_0
    //   11: new 972	java/io/InputStreamReader
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 973	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   19: astore_2
    //   20: new 292	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 293	java/lang/StringBuilder:<init>	()V
    //   27: astore_3
    //   28: sipush 2048
    //   31: newarray <illegal type>
    //   33: astore 4
    //   35: aload_2
    //   36: aload 4
    //   38: invokevirtual 976	java/io/InputStreamReader:read	([C)I
    //   41: istore_1
    //   42: iload_1
    //   43: iconst_m1
    //   44: if_icmpeq +32 -> 76
    //   47: aload_3
    //   48: aload 4
    //   50: iconst_0
    //   51: iload_1
    //   52: invokevirtual 979	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: goto -21 -> 35
    //   59: astore 4
    //   61: aload_0
    //   62: astore_3
    //   63: aload 4
    //   65: astore_0
    //   66: aload_3
    //   67: invokestatic 981	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   70: aload_2
    //   71: invokestatic 981	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   74: aload_0
    //   75: athrow
    //   76: aload_3
    //   77: invokevirtual 306	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: astore_3
    //   81: aload_0
    //   82: invokestatic 981	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   85: aload_2
    //   86: invokestatic 981	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   89: aload_3
    //   90: areturn
    //   91: astore_0
    //   92: aconst_null
    //   93: astore_2
    //   94: goto -28 -> 66
    //   97: astore 4
    //   99: aconst_null
    //   100: astore_2
    //   101: aload_0
    //   102: astore_3
    //   103: aload 4
    //   105: astore_0
    //   106: goto -40 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	paramInputStream	InputStream
    //   41	11	1	i	int
    //   19	82	2	localInputStreamReader	java.io.InputStreamReader
    //   1	102	3	localObject1	Object
    //   33	16	4	arrayOfChar	char[]
    //   59	5	4	localObject2	Object
    //   97	7	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	35	59	finally
    //   35	42	59	finally
    //   47	56	59	finally
    //   76	81	59	finally
    //   2	11	91	finally
    //   11	20	97	finally
  }
  
  public static Map<String, String> readStringMapFromParcel(Parcel paramParcel)
  {
    int j = paramParcel.readInt();
    Object localObject;
    if (j < 0)
    {
      localObject = null;
      return (Map<String, String>)localObject;
    }
    HashMap localHashMap = new HashMap();
    int i = 0;
    for (;;)
    {
      localObject = localHashMap;
      if (i >= j) {
        break;
      }
      localHashMap.put(paramParcel.readString(), paramParcel.readString());
      i += 1;
    }
  }
  
  private static void refreshAvailableExternalStorage()
  {
    try
    {
      if (externalStorageExists())
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = localStatFs.getAvailableBlocks();
        availableExternalStorageGB = localStatFs.getBlockSize() * l;
      }
      availableExternalStorageGB = convertBytesToGB(availableExternalStorageGB);
      return;
    }
    catch (Exception localException) {}
  }
  
  private static int refreshBestGuessNumberOfCPUCores()
  {
    if (numCPUCores > 0) {
      return numCPUCores;
    }
    if (Build.VERSION.SDK_INT <= 10)
    {
      numCPUCores = 1;
      return 1;
    }
    try
    {
      numCPUCores = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter()
      {
        public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
        {
          return Pattern.matches("cpu[0-9]+", paramAnonymousString);
        }
      }).length;
      if (numCPUCores <= 0) {
        numCPUCores = Math.max(Runtime.getRuntime().availableProcessors(), 1);
      }
      return numCPUCores;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private static void refreshCarrierName(Context paramContext)
  {
    if (carrierName.equals("NoCarrier")) {}
    try
    {
      carrierName = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      return;
    }
    catch (Exception paramContext) {}
  }
  
  private static void refreshPeriodicExtendedDeviceInfo(Context paramContext)
  {
    if ((timestampOfLastCheck == -1L) || (System.currentTimeMillis() - timestampOfLastCheck >= 1800000L))
    {
      timestampOfLastCheck = System.currentTimeMillis();
      refreshTimezone();
      refreshCarrierName(paramContext);
      refreshTotalExternalStorage();
      refreshAvailableExternalStorage();
    }
  }
  
  private static void refreshTimezone()
  {
    try
    {
      TimeZone localTimeZone = TimeZone.getDefault();
      deviceTimezone = localTimeZone.getDisplayName(localTimeZone.inDaylightTime(new Date()), 0);
      return;
    }
    catch (Exception localException) {}
  }
  
  private static void refreshTotalExternalStorage()
  {
    try
    {
      if (externalStorageExists())
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = localStatFs.getBlockCount();
        totalExternalStorageGB = localStatFs.getBlockSize() * l;
      }
      totalExternalStorageGB = convertBytesToGB(totalExternalStorageGB);
      return;
    }
    catch (Exception localException) {}
  }
  
  public static String safeGetStringFromResponse(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optString(paramString, "");
    }
    return "";
  }
  
  public static void setAppEventAttributionParameters(JSONObject paramJSONObject, AttributionIdentifiers paramAttributionIdentifiers, String paramString, boolean paramBoolean)
  {
    boolean bool2 = true;
    if ((paramAttributionIdentifiers != null) && (paramAttributionIdentifiers.getAttributionId() != null)) {
      paramJSONObject.put("attribution", paramAttributionIdentifiers.getAttributionId());
    }
    boolean bool1;
    if ((paramAttributionIdentifiers != null) && (paramAttributionIdentifiers.getAndroidAdvertiserId() != null))
    {
      paramJSONObject.put("advertiser_id", paramAttributionIdentifiers.getAndroidAdvertiserId());
      if (!paramAttributionIdentifiers.isTrackingLimited())
      {
        bool1 = true;
        paramJSONObject.put("advertiser_tracking_enabled", bool1);
      }
    }
    else
    {
      paramJSONObject.put("anon_id", paramString);
      if (paramBoolean) {
        break label101;
      }
    }
    label101:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      paramJSONObject.put("application_tracking_enabled", paramBoolean);
      return;
      bool1 = false;
      break;
    }
  }
  
  public static void setAppEventExtendedDeviceInfoParameters(JSONObject paramJSONObject, Context paramContext)
  {
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put("a2");
    refreshPeriodicExtendedDeviceInfo(paramContext);
    String str = paramContext.getPackageName();
    j = -1;
    Object localObject1 = "";
    i = j;
    try
    {
      Object localObject2 = paramContext.getPackageManager().getPackageInfo(str, 0);
      i = j;
      j = versionCode;
      i = j;
      localObject2 = versionName;
      i = j;
      localObject1 = localObject2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        int k;
        continue;
        double d = 0.0D;
        i = 0;
        j = 0;
      }
    }
    localJSONArray.put(str);
    localJSONArray.put(i);
    localJSONArray.put(localObject1);
    localJSONArray.put(Build.VERSION.RELEASE);
    localJSONArray.put(Build.MODEL);
    try
    {
      localObject1 = getResourcesgetConfigurationlocale;
      localJSONArray.put(((Locale)localObject1).getLanguage() + "_" + ((Locale)localObject1).getCountry());
      localJSONArray.put(deviceTimezone);
      localJSONArray.put(carrierName);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          paramContext = (WindowManager)paramContext.getSystemService("window");
          if (paramContext == null) {
            break label402;
          }
          paramContext = paramContext.getDefaultDisplay();
          localObject1 = new DisplayMetrics();
          paramContext.getMetrics((DisplayMetrics)localObject1);
          i = widthPixels;
        }
        catch (Exception paramContext)
        {
          float f;
          Locale localLocale;
          i = 0;
          j = 0;
          d = 0.0D;
          continue;
        }
        try
        {
          j = heightPixels;
        }
        catch (Exception paramContext)
        {
          k = 0;
          j = i;
          i = k;
          continue;
        }
        try
        {
          f = density;
          d = f;
          k = j;
          j = i;
          i = k;
          localJSONArray.put(j);
          localJSONArray.put(i);
          localJSONArray.put(String.format("%.2f", new Object[] { Double.valueOf(d) }));
          localJSONArray.put(refreshBestGuessNumberOfCPUCores());
          localJSONArray.put(totalExternalStorageGB);
          localJSONArray.put(availableExternalStorageGB);
          paramJSONObject.put("extinfo", localJSONArray.toString());
          return;
        }
        catch (Exception paramContext)
        {
          k = i;
          i = j;
          j = k;
          continue;
        }
        localException = localException;
        localLocale = Locale.getDefault();
      }
    }
  }
  
  public static String sha1hash(String paramString)
  {
    return hashWithAlgorithm("SHA-1", paramString);
  }
  
  public static String sha1hash(byte[] paramArrayOfByte)
  {
    return hashWithAlgorithm("SHA-1", paramArrayOfByte);
  }
  
  public static boolean stringsEqualOrEmpty(String paramString1, String paramString2)
  {
    boolean bool1 = TextUtils.isEmpty(paramString1);
    boolean bool2 = TextUtils.isEmpty(paramString2);
    if ((bool1) && (bool2)) {
      return true;
    }
    if ((!bool1) && (!bool2)) {
      return paramString1.equals(paramString2);
    }
    return false;
  }
  
  public static JSONArray tryGetJSONArrayFromResponse(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optJSONArray(paramString);
    }
    return null;
  }
  
  public static JSONObject tryGetJSONObjectFromResponse(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optJSONObject(paramString);
    }
    return null;
  }
  
  public static <T> Collection<T> unmodifiableCollection(T... paramVarArgs)
  {
    return Collections.unmodifiableCollection(Arrays.asList(paramVarArgs));
  }
  
  public static void writeStringMapToParcel(Parcel paramParcel, Map<String, String> paramMap)
  {
    if (paramMap == null) {
      paramParcel.writeInt(-1);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        paramParcel.writeString((String)localEntry.getKey());
        paramParcel.writeString((String)localEntry.getValue());
      }
    }
  }
  
  public static class DialogFeatureConfig
  {
    private String dialogName;
    private Uri fallbackUrl;
    private String featureName;
    private int[] featureVersionSpec;
    
    private DialogFeatureConfig(String paramString1, String paramString2, Uri paramUri, int[] paramArrayOfInt)
    {
      dialogName = paramString1;
      featureName = paramString2;
      fallbackUrl = paramUri;
      featureVersionSpec = paramArrayOfInt;
    }
    
    private static DialogFeatureConfig parseDialogConfig(JSONObject paramJSONObject)
    {
      Uri localUri = null;
      String str1 = paramJSONObject.optString("name");
      if (Utility.isNullOrEmpty(str1)) {}
      Object localObject;
      do
      {
        do
        {
          return null;
          localObject = str1.split("\\|");
        } while (localObject.length != 2);
        str1 = localObject[0];
        localObject = localObject[1];
      } while ((Utility.isNullOrEmpty(str1)) || (Utility.isNullOrEmpty((String)localObject)));
      String str2 = paramJSONObject.optString("url");
      if (!Utility.isNullOrEmpty(str2)) {
        localUri = Uri.parse(str2);
      }
      return new DialogFeatureConfig(str1, (String)localObject, localUri, parseVersionSpec(paramJSONObject.optJSONArray("versions")));
    }
    
    private static int[] parseVersionSpec(JSONArray paramJSONArray)
    {
      int[] arrayOfInt = null;
      if (paramJSONArray != null)
      {
        int m = paramJSONArray.length();
        arrayOfInt = new int[m];
        int j = 0;
        for (;;)
        {
          if (j < m)
          {
            int k = paramJSONArray.optInt(j, -1);
            int i = k;
            String str;
            if (k == -1)
            {
              str = paramJSONArray.optString(j);
              i = k;
              if (Utility.isNullOrEmpty(str)) {}
            }
            try
            {
              i = Integer.parseInt(str);
              arrayOfInt[j] = i;
              j += 1;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              for (;;)
              {
                Utility.logd("FacebookSDK", localNumberFormatException);
                i = -1;
              }
            }
          }
        }
      }
      return arrayOfInt;
    }
    
    public String getDialogName()
    {
      return dialogName;
    }
    
    public Uri getFallbackUrl()
    {
      return fallbackUrl;
    }
    
    public String getFeatureName()
    {
      return featureName;
    }
    
    public int[] getVersionSpec()
    {
      return featureVersionSpec;
    }
  }
  
  public static class FetchedAppSettings
  {
    private Map<String, Map<String, Utility.DialogFeatureConfig>> dialogConfigMap;
    private FacebookRequestErrorClassification errorClassification;
    private String nuxContent;
    private boolean nuxEnabled;
    private boolean supportsImplicitLogging;
    
    private FetchedAppSettings(boolean paramBoolean1, String paramString, boolean paramBoolean2, Map<String, Map<String, Utility.DialogFeatureConfig>> paramMap, FacebookRequestErrorClassification paramFacebookRequestErrorClassification)
    {
      supportsImplicitLogging = paramBoolean1;
      nuxContent = paramString;
      nuxEnabled = paramBoolean2;
      dialogConfigMap = paramMap;
      errorClassification = paramFacebookRequestErrorClassification;
    }
    
    public Map<String, Map<String, Utility.DialogFeatureConfig>> getDialogConfigurations()
    {
      return dialogConfigMap;
    }
    
    public FacebookRequestErrorClassification getErrorClassification()
    {
      return errorClassification;
    }
    
    public String getNuxContent()
    {
      return nuxContent;
    }
    
    public boolean getNuxEnabled()
    {
      return nuxEnabled;
    }
    
    public boolean supportsImplicitLogging()
    {
      return supportsImplicitLogging;
    }
  }
  
  public static abstract interface GraphMeRequestWithCacheCallback
  {
    public abstract void onFailure(FacebookException paramFacebookException);
    
    public abstract void onSuccess(JSONObject paramJSONObject);
  }
  
  public static abstract interface Mapper<T, K>
  {
    public abstract K apply(T paramT);
  }
  
  public static abstract interface Predicate<T>
  {
    public abstract boolean apply(T paramT);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */