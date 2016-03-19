package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.d;
import com.google.android.gms.ads.e;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.internal.z;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class gw
{
  public static final Handler a = new gt(Looper.getMainLooper());
  private static final String b = AdView.class.getName();
  private static final String c = e.class.getName();
  private static final String d = PublisherAdView.class.getName();
  private static final String e = d.class.getName();
  private static final String f = SearchAdView.class.getName();
  private static final String g = com.google.android.gms.ads.b.class.getName();
  private final Object h = new Object();
  private boolean i = true;
  private String j;
  private boolean k = false;
  
  public static Bitmap a(View paramView)
  {
    paramView.setDrawingCacheEnabled(true);
    Bitmap localBitmap = Bitmap.createBitmap(paramView.getDrawingCache());
    paramView.setDrawingCacheEnabled(false);
    return localBitmap;
  }
  
  public static DisplayMetrics a(WindowManager paramWindowManager)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static PopupWindow a(View paramView, int paramInt1, int paramInt2)
  {
    return new PopupWindow(paramView, paramInt1, paramInt2, false);
  }
  
  public static String a(Context paramContext, View paramView, AdSizeParcel paramAdSizeParcel)
  {
    Object localObject = ax.W;
    if (!((Boolean)o.n().a((at)localObject)).booleanValue()) {
      return null;
    }
    for (;;)
    {
      try
      {
        localObject = new JSONObject();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("width", f);
        localJSONObject.put("height", c);
        ((JSONObject)localObject).put("size", localJSONObject);
        ((JSONObject)localObject).put("activity", h(paramContext));
        if (!e)
        {
          paramContext = new JSONArray();
          if (paramView != null)
          {
            paramAdSizeParcel = paramView.getParent();
            if (paramAdSizeParcel != null)
            {
              int m = -1;
              if ((paramAdSizeParcel instanceof ViewGroup)) {
                m = ((ViewGroup)paramAdSizeParcel).indexOfChild(paramView);
              }
              paramView = new JSONObject();
              paramView.put("type", paramAdSizeParcel.getClass().getName());
              paramView.put("index_of_child", m);
              paramContext.put(paramView);
            }
            if ((paramAdSizeParcel == null) || (!(paramAdSizeParcel instanceof View))) {
              break label221;
            }
            paramView = (View)paramAdSizeParcel;
            continue;
          }
          if (paramContext.length() > 0) {
            ((JSONObject)localObject).put("parents", paramContext);
          }
        }
        paramContext = ((JSONObject)localObject).toString();
        return paramContext;
      }
      catch (JSONException paramContext)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return null;
      }
      label221:
      paramView = null;
    }
  }
  
  public static String a(Context paramContext, m paramm, String paramString)
  {
    if (paramm == null) {
      return paramString;
    }
    try
    {
      Uri localUri2 = Uri.parse(paramString);
      Uri localUri1 = localUri2;
      if (paramm.b(localUri2)) {
        localUri1 = paramm.a(localUri2, paramContext);
      }
      paramContext = localUri1.toString();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return paramString;
  }
  
  public static String a(InputStreamReader paramInputStreamReader)
  {
    StringBuilder localStringBuilder = new StringBuilder(8192);
    char[] arrayOfChar = new char['ࠀ'];
    for (;;)
    {
      int m = paramInputStreamReader.read(arrayOfChar);
      if (m == -1) {
        break;
      }
      localStringBuilder.append(arrayOfChar, 0, m);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString)
  {
    return Uri.parse(paramString).buildUpon().query(null).build().toString();
  }
  
  public static String a(StackTraceElement[] paramArrayOfStackTraceElement, String paramString)
  {
    Object localObject = ax.ah;
    int m;
    if (((Boolean)o.n().a((at)localObject)).booleanValue())
    {
      m = 0;
      if (m + 1 >= paramArrayOfStackTraceElement.length) {
        break label151;
      }
      localObject = paramArrayOfStackTraceElement[m];
      String str = ((StackTraceElement)localObject).getClassName();
      if ((!"loadAd".equalsIgnoreCase(((StackTraceElement)localObject).getMethodName())) || ((!b.equalsIgnoreCase(str)) && (!c.equalsIgnoreCase(str)) && (!d.equalsIgnoreCase(str)) && (!e.equalsIgnoreCase(str)) && (!f.equalsIgnoreCase(str)) && (!g.equalsIgnoreCase(str)))) {}
    }
    label151:
    for (paramArrayOfStackTraceElement = paramArrayOfStackTraceElement[(m + 1)].getClassName();; paramArrayOfStackTraceElement = null)
    {
      if ((paramArrayOfStackTraceElement != null) && (!paramArrayOfStackTraceElement.contains(paramString)))
      {
        return paramArrayOfStackTraceElement;
        m += 1;
        break;
      }
      return null;
    }
  }
  
  public static Map<String, String> a(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = o.g().a(paramUri).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramUri.getQueryParameter(str));
    }
    return localHashMap;
  }
  
  private JSONArray a(Collection<?> paramCollection)
  {
    JSONArray localJSONArray = new JSONArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      a(localJSONArray, paramCollection.next());
    }
    return localJSONArray;
  }
  
  private JSONObject a(Bundle paramBundle)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a(localJSONObject, str, paramBundle.get(str));
    }
    return localJSONObject;
  }
  
  public static void a(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(paramOnGlobalLayoutListener);
    }
  }
  
  public static void a(Activity paramActivity, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().addOnScrollChangedListener(paramOnScrollChangedListener);
    }
  }
  
  public static void a(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext.startActivity(paramIntent);
      return;
    }
    catch (Throwable localThrowable)
    {
      paramIntent.addFlags(268435456);
      paramContext.startActivity(paramIntent);
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    a(paramContext, paramString1, localArrayList);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean)
  {
    Object localObject2;
    if (paramBoolean)
    {
      localObject2 = paramContext.getApplicationContext();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = paramContext;
      }
      paramBundle.putString("os", Build.VERSION.RELEASE);
      paramBundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
      o.e();
      paramBundle.putString("device", c());
      paramBundle.putString("js", paramString1);
      paramBundle.putString("appid", ((Context)localObject1).getPackageName());
      paramBundle.putString("eids", TextUtils.join(",", ax.a()));
    }
    paramString2 = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", paramString2);
    Object localObject1 = paramBundle.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      paramString2.appendQueryParameter((String)localObject2, paramBundle.getString((String)localObject2));
    }
    o.e();
    a(paramContext, paramString1, paramString2.toString());
  }
  
  public static void a(Context paramContext, String paramString, List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      new hc(paramContext, paramString, (String)paramList.next()).e();
    }
  }
  
  public static void a(Context paramContext, String paramString1, List<String> paramList, String paramString2)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      new hc(paramContext, paramString1, (String)paramList.next(), paramString2).e();
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      paramRunnable.run();
      return;
    }
    a.post(paramRunnable);
  }
  
  public static void a(HttpURLConnection paramHttpURLConnection, String paramString)
  {
    paramHttpURLConnection.setConnectTimeout(60000);
    paramHttpURLConnection.setInstanceFollowRedirects(true);
    paramHttpURLConnection.setReadTimeout(60000);
    paramHttpURLConnection.setRequestProperty("User-Agent", paramString);
    paramHttpURLConnection.setUseCaches(false);
  }
  
  private void a(JSONArray paramJSONArray, Object paramObject)
  {
    if ((paramObject instanceof Bundle))
    {
      paramJSONArray.put(a((Bundle)paramObject));
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramJSONArray.put(a((Map)paramObject));
      return;
    }
    if ((paramObject instanceof Collection))
    {
      paramJSONArray.put(a((Collection)paramObject));
      return;
    }
    if ((paramObject instanceof Object[]))
    {
      paramObject = (Object[])paramObject;
      JSONArray localJSONArray = new JSONArray();
      int n = paramObject.length;
      int m = 0;
      while (m < n)
      {
        a(localJSONArray, paramObject[m]);
        m += 1;
      }
      paramJSONArray.put(localJSONArray);
      return;
    }
    paramJSONArray.put(paramObject);
  }
  
  private void a(JSONObject paramJSONObject, String paramString, Object paramObject)
  {
    if ((paramObject instanceof Bundle))
    {
      paramJSONObject.put(paramString, a((Bundle)paramObject));
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramJSONObject.put(paramString, a((Map)paramObject));
      return;
    }
    if ((paramObject instanceof Collection))
    {
      if (paramString != null) {}
      for (;;)
      {
        paramJSONObject.put(paramString, a((Collection)paramObject));
        return;
        paramString = "null";
      }
    }
    if ((paramObject instanceof Object[]))
    {
      paramJSONObject.put(paramString, a(Arrays.asList((Object[])paramObject)));
      return;
    }
    paramJSONObject.put(paramString, paramObject);
  }
  
  public static boolean a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    paramContext = paramContext.getPackageManager().resolveActivity(localIntent, 65536);
    if ((paramContext == null) || (activityInfo == null))
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      return false;
    }
    if ((activityInfo.configChanges & 0x10) == 0)
    {
      String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "keyboard" });
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    for (boolean bool = false;; bool = true)
    {
      if ((activityInfo.configChanges & 0x20) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "keyboardHidden" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        bool = false;
      }
      if ((activityInfo.configChanges & 0x80) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "orientation" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        bool = false;
      }
      if ((activityInfo.configChanges & 0x100) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "screenLayout" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        bool = false;
      }
      if ((activityInfo.configChanges & 0x200) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "uiMode" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        bool = false;
      }
      if ((activityInfo.configChanges & 0x400) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "screenSize" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        bool = false;
      }
      if ((activityInfo.configChanges & 0x800) == 0)
      {
        String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "smallestScreenSize" });
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return false;
      }
      return bool;
    }
  }
  
  public static boolean a(Context paramContext, Bitmap paramBitmap, String paramString)
  {
    z.c("saveImageToFile must not be called on the main UI thread.");
    try
    {
      paramContext = paramContext.openFileOutput(paramString, 0);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramContext);
      paramContext.close();
      paramBitmap.recycle();
      return true;
    }
    catch (Exception paramContext)
    {
      com.google.android.gms.ads.internal.util.client.b.a("Fail to save file", paramContext);
    }
    return false;
  }
  
  public static boolean a(PackageManager paramPackageManager, String paramString1, String paramString2)
  {
    return paramPackageManager.checkPermission(paramString2, paramString1) == 0;
  }
  
  public static boolean a(ClassLoader paramClassLoader, Class<?> paramClass, String paramString)
  {
    try
    {
      boolean bool = paramClass.isAssignableFrom(Class.forName(paramString, false, paramClassLoader));
      return bool;
    }
    catch (Throwable paramClassLoader) {}
    return false;
  }
  
  public static int[] a(Activity paramActivity)
  {
    paramActivity = paramActivity.getWindow();
    if (paramActivity != null)
    {
      paramActivity = paramActivity.findViewById(16908290);
      if (paramActivity != null) {
        return new int[] { paramActivity.getWidth(), paramActivity.getHeight() };
      }
    }
    return e();
  }
  
  public static int b(String paramString)
  {
    try
    {
      int m = Integer.parseInt(paramString);
      return m;
    }
    catch (NumberFormatException paramString)
    {
      new StringBuilder("Could not parse value:").append(paramString);
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    return 0;
  }
  
  public static Bitmap b(Context paramContext, String paramString)
  {
    z.c("getBackgroundImage must not be called on the main UI thread.");
    try
    {
      paramContext = paramContext.openFileInput(paramString);
      paramString = BitmapFactory.decodeStream(paramContext);
      paramContext.close();
      return paramString;
    }
    catch (Exception paramContext)
    {
      com.google.android.gms.ads.internal.util.client.b.a("Fail to get background image");
    }
    return null;
  }
  
  public static String b()
  {
    Object localObject1 = UUID.randomUUID();
    byte[] arrayOfByte1 = BigInteger.valueOf(((UUID)localObject1).getLeastSignificantBits()).toByteArray();
    byte[] arrayOfByte2 = BigInteger.valueOf(((UUID)localObject1).getMostSignificantBits()).toByteArray();
    localObject1 = new BigInteger(1, arrayOfByte1).toString();
    int m = 0;
    while (m < 2)
    {
      try
      {
        Object localObject2 = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject2).update(arrayOfByte1);
        ((MessageDigest)localObject2).update(arrayOfByte2);
        byte[] arrayOfByte3 = new byte[8];
        System.arraycopy(((MessageDigest)localObject2).digest(), 0, arrayOfByte3, 0, 8);
        localObject2 = new BigInteger(1, arrayOfByte3).toString();
        localObject1 = localObject2;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        for (;;) {}
      }
      m += 1;
    }
    return (String)localObject1;
  }
  
  public static void b(Activity paramActivity, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().removeOnScrollChangedListener(paramOnScrollChangedListener);
    }
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean)
  {
    at localat = ax.ae;
    if (((Boolean)o.n().a(localat)).booleanValue()) {
      a(paramContext, paramString1, paramString2, paramBundle, paramBoolean);
    }
  }
  
  public static void b(Runnable paramRunnable)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      paramRunnable.run();
      return;
    }
    gv.a(paramRunnable);
  }
  
  public static String c()
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    if (str2.startsWith(str1)) {
      return str2;
    }
    return str1 + " " + str2;
  }
  
  protected static String c(Context paramContext)
  {
    return new WebView(paramContext).getSettings().getUserAgentString();
  }
  
  public static void c(Context paramContext, String paramString)
  {
    z.c("deleteFile must not be called on the main UI thread.");
    paramContext.deleteFile(paramString);
  }
  
  public static boolean c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return paramString.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
  }
  
  public static AlertDialog.Builder d(Context paramContext)
  {
    return new AlertDialog.Builder(paramContext);
  }
  
  private static String d()
  {
    StringBuffer localStringBuffer = new StringBuffer(256);
    localStringBuffer.append("Mozilla/5.0 (Linux; U; Android");
    if (Build.VERSION.RELEASE != null) {
      localStringBuffer.append(" ").append(Build.VERSION.RELEASE);
    }
    localStringBuffer.append("; ").append(Locale.getDefault());
    if (Build.DEVICE != null)
    {
      localStringBuffer.append("; ").append(Build.DEVICE);
      if (Build.DISPLAY != null) {
        localStringBuffer.append(" Build/").append(Build.DISPLAY);
      }
    }
    localStringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
    return localStringBuffer.toString();
  }
  
  public static ap e(Context paramContext)
  {
    return new ap(paramContext);
  }
  
  private static int[] e()
  {
    return new int[] { 0, 0 };
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool;
    label133:
    do
    {
      try
      {
        Object localObject = (ActivityManager)paramContext.getSystemService("activity");
        KeyguardManager localKeyguardManager = (KeyguardManager)paramContext.getSystemService("keyguard");
        if ((localObject != null) && (localKeyguardManager != null))
        {
          localObject = ((ActivityManager)localObject).getRunningAppProcesses();
          if (localObject == null) {
            return false;
          }
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
            if (Process.myPid() == pid) {
              if ((importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
              {
                paramContext = (PowerManager)paramContext.getSystemService("power");
                if (paramContext == null)
                {
                  bool = false;
                  break label133;
                }
                bool = paramContext.isScreenOn();
                break label133;
              }
            }
          }
          return false;
        }
      }
      catch (Throwable paramContext)
      {
        return false;
      }
      return false;
    } while (!bool);
    return true;
  }
  
  public static Bitmap g(Context paramContext)
  {
    if (!(paramContext instanceof Activity)) {
      return null;
    }
    try
    {
      paramContext = ((Activity)paramContext).getWindow().getDecorView();
      Bitmap localBitmap = Bitmap.createBitmap(paramContext.getWidth(), paramContext.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      paramContext.layout(0, 0, paramContext.getWidth(), paramContext.getHeight());
      paramContext.draw(localCanvas);
      return localBitmap;
    }
    catch (RuntimeException paramContext)
    {
      com.google.android.gms.ads.internal.util.client.b.a("Fail to capture screen shot", paramContext);
    }
    return null;
  }
  
  private static String h(Context paramContext)
  {
    try
    {
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      if (paramContext == null) {
        return null;
      }
      paramContext = paramContext.getRunningTasks(1);
      if ((paramContext != null) && (!paramContext.isEmpty()))
      {
        paramContext = (ActivityManager.RunningTaskInfo)paramContext.get(0);
        if ((paramContext != null) && (topActivity != null))
        {
          paramContext = topActivity.getClassName();
          return paramContext;
        }
      }
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public final String a(Context paramContext, String paramString)
  {
    synchronized (h)
    {
      if (j != null)
      {
        paramContext = j;
        return paramContext;
      }
    }
    try
    {
      j = o.g().a(paramContext);
      if (TextUtils.isEmpty(j))
      {
        n.a();
        if (!a.b())
        {
          j = null;
          a.post(new gw.1(this, paramContext));
          for (;;)
          {
            paramContext = j;
            if (paramContext != null) {
              break;
            }
            try
            {
              h.wait();
            }
            catch (InterruptedException paramContext)
            {
              j = d();
              new StringBuilder("Interrupted, use default user agent: ").append(j);
              com.google.android.gms.ads.internal.util.client.b.a(5);
            }
          }
          paramContext = finally;
          throw paramContext;
        }
      }
      try
      {
        j = c(paramContext);
        j = (j + " (Mobile; " + paramString + ")");
        paramContext = j;
        return paramContext;
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          j = d();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public final JSONObject a(Map<String, ?> paramMap)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(localJSONObject, str, paramMap.get(str));
      }
      return localJSONObject;
    }
    catch (ClassCastException paramMap)
    {
      throw new JSONException("Could not convert map to JSON: " + paramMap.getMessage());
    }
  }
  
  public final void a(Context paramContext, String paramString, boolean paramBoolean, HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection.setConnectTimeout(60000);
    paramHttpURLConnection.setInstanceFollowRedirects(paramBoolean);
    paramHttpURLConnection.setReadTimeout(60000);
    paramHttpURLConnection.setRequestProperty("User-Agent", a(paramContext, paramString));
    paramHttpURLConnection.setUseCaches(false);
  }
  
  public final boolean a()
  {
    return i;
  }
  
  public final boolean b(Context paramContext)
  {
    if (k) {
      return false;
    }
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.getApplicationContext().registerReceiver(new gw.a(this, (byte)0), localIntentFilter);
    k = true;
    return true;
  }
  
  public final int[] b(Activity paramActivity)
  {
    int[] arrayOfInt = a(paramActivity);
    n.a();
    int m = a.b(paramActivity, arrayOfInt[0]);
    n.a();
    return new int[] { m, a.b(paramActivity, arrayOfInt[1]) };
  }
  
  public final int[] c(Activity paramActivity)
  {
    Object localObject = paramActivity.getWindow();
    if (localObject != null)
    {
      View localView = ((Window)localObject).findViewById(16908290);
      if (localView != null)
      {
        localObject = new int[2];
        localObject[0] = localView.getTop();
        localObject[1] = localView.getBottom();
      }
    }
    for (;;)
    {
      n.a();
      int m = a.b(paramActivity, localObject[0]);
      n.a();
      return new int[] { m, a.b(paramActivity, localObject[1]) };
      localObject = e();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */