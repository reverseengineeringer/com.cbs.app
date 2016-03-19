package com.facebook.internal;

import android.content.Context;
import android.os.Looper;
import com.facebook.FacebookException;
import java.lang.reflect.Method;

public class AttributionIdentifiers
{
  private static final String ANDROID_ID_COLUMN_NAME = "androidid";
  private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  private static final String ATTRIBUTION_ID_CONTENT_PROVIDER = "com.facebook.katana.provider.AttributionIdProvider";
  private static final String ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI = "com.facebook.wakizashi.provider.AttributionIdProvider";
  private static final int CONNECTION_RESULT_SUCCESS = 0;
  private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000L;
  private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
  private static final String TAG = AttributionIdentifiers.class.getCanonicalName();
  private static AttributionIdentifiers recentlyFetchedIdentifiers;
  private String androidAdvertiserId;
  private String attributionId;
  private long fetchTime;
  private boolean limitTracking;
  
  private static AttributionIdentifiers getAndroidId(Context paramContext)
  {
    AttributionIdentifiers localAttributionIdentifiers = new AttributionIdentifiers();
    for (;;)
    {
      try
      {
        if (Looper.myLooper() == Looper.getMainLooper()) {
          throw new FacebookException("getAndroidId cannot be called on the main thread.");
        }
      }
      catch (Exception paramContext)
      {
        Utility.logd("android_id", paramContext);
        return localAttributionIdentifiers;
      }
      Object localObject = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
      if (localObject == null) {
        return localAttributionIdentifiers;
      }
      localObject = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if ((!(localObject instanceof Integer)) || (((Integer)localObject).intValue() != 0)) {
        break;
      }
      localObject = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
      if (localObject == null) {
        return localAttributionIdentifiers;
      }
      paramContext = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if (paramContext == null) {
        return localAttributionIdentifiers;
      }
      localObject = Utility.getMethodQuietly(paramContext.getClass(), "getId", new Class[0]);
      Method localMethod = Utility.getMethodQuietly(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
      if ((localObject == null) || (localMethod == null)) {
        return localAttributionIdentifiers;
      }
      androidAdvertiserId = ((String)Utility.invokeMethodQuietly(paramContext, (Method)localObject, new Object[0]));
      limitTracking = ((Boolean)Utility.invokeMethodQuietly(paramContext, localMethod, new Object[0])).booleanValue();
    }
    return localAttributionIdentifiers;
    return localAttributionIdentifiers;
  }
  
  /* Error */
  public static AttributionIdentifiers getAttributionIdentifiers(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 128	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   3: ifnull +24 -> 27
    //   6: invokestatic 134	java/lang/System:currentTimeMillis	()J
    //   9: getstatic 128	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   12: getfield 136	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   15: lsub
    //   16: ldc2_w 23
    //   19: lcmp
    //   20: ifge +7 -> 27
    //   23: getstatic 128	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   26: areturn
    //   27: aload_0
    //   28: invokestatic 138	com/facebook/internal/AttributionIdentifiers:getAndroidId	(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    //   31: astore 6
    //   33: aload_0
    //   34: invokevirtual 142	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   37: ldc 14
    //   39: iconst_0
    //   40: invokevirtual 148	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   43: ifnull +13 -> 56
    //   46: ldc -106
    //   48: invokestatic 156	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   51: astore 5
    //   53: goto +303 -> 356
    //   56: aload_0
    //   57: invokevirtual 142	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   60: ldc 17
    //   62: iconst_0
    //   63: invokevirtual 148	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   66: ifnull +287 -> 353
    //   69: ldc -98
    //   71: invokestatic 156	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   74: astore 5
    //   76: goto +280 -> 356
    //   79: aload_0
    //   80: invokevirtual 162	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   83: aload 5
    //   85: iconst_3
    //   86: anewarray 115	java/lang/String
    //   89: dup
    //   90: iconst_0
    //   91: ldc 11
    //   93: aastore
    //   94: dup
    //   95: iconst_1
    //   96: ldc 8
    //   98: aastore
    //   99: dup
    //   100: iconst_2
    //   101: ldc 27
    //   103: aastore
    //   104: aconst_null
    //   105: aconst_null
    //   106: aconst_null
    //   107: invokevirtual 168	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   110: astore 5
    //   112: aload 5
    //   114: ifnull +20 -> 134
    //   117: aload 5
    //   119: astore_0
    //   120: aload 5
    //   122: invokeinterface 173 1 0
    //   127: istore 4
    //   129: iload 4
    //   131: ifne +18 -> 149
    //   134: aload 5
    //   136: ifnull +10 -> 146
    //   139: aload 5
    //   141: invokeinterface 176 1 0
    //   146: aload 6
    //   148: areturn
    //   149: aload 5
    //   151: astore_0
    //   152: aload 5
    //   154: ldc 11
    //   156: invokeinterface 180 2 0
    //   161: istore_1
    //   162: aload 5
    //   164: astore_0
    //   165: aload 5
    //   167: ldc 8
    //   169: invokeinterface 180 2 0
    //   174: istore_2
    //   175: aload 5
    //   177: astore_0
    //   178: aload 5
    //   180: ldc 27
    //   182: invokeinterface 180 2 0
    //   187: istore_3
    //   188: aload 5
    //   190: astore_0
    //   191: aload 6
    //   193: aload 5
    //   195: iload_1
    //   196: invokeinterface 184 2 0
    //   201: putfield 186	com/facebook/internal/AttributionIdentifiers:attributionId	Ljava/lang/String;
    //   204: iload_2
    //   205: ifle +53 -> 258
    //   208: iload_3
    //   209: ifle +49 -> 258
    //   212: aload 5
    //   214: astore_0
    //   215: aload 6
    //   217: invokevirtual 189	com/facebook/internal/AttributionIdentifiers:getAndroidAdvertiserId	()Ljava/lang/String;
    //   220: ifnonnull +38 -> 258
    //   223: aload 5
    //   225: astore_0
    //   226: aload 6
    //   228: aload 5
    //   230: iload_2
    //   231: invokeinterface 184 2 0
    //   236: putfield 117	com/facebook/internal/AttributionIdentifiers:androidAdvertiserId	Ljava/lang/String;
    //   239: aload 5
    //   241: astore_0
    //   242: aload 6
    //   244: aload 5
    //   246: iload_3
    //   247: invokeinterface 184 2 0
    //   252: invokestatic 193	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   255: putfield 125	com/facebook/internal/AttributionIdentifiers:limitTracking	Z
    //   258: aload 5
    //   260: ifnull +10 -> 270
    //   263: aload 5
    //   265: invokeinterface 176 1 0
    //   270: aload 6
    //   272: invokestatic 134	java/lang/System:currentTimeMillis	()J
    //   275: putfield 136	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   278: aload 6
    //   280: putstatic 128	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   283: aload 6
    //   285: areturn
    //   286: astore 6
    //   288: aconst_null
    //   289: astore 5
    //   291: aload 5
    //   293: astore_0
    //   294: new 195	java/lang/StringBuilder
    //   297: dup
    //   298: ldc -59
    //   300: invokespecial 198	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   303: aload 6
    //   305: invokevirtual 201	java/lang/Exception:toString	()Ljava/lang/String;
    //   308: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: pop
    //   312: aload 5
    //   314: ifnull +10 -> 324
    //   317: aload 5
    //   319: invokeinterface 176 1 0
    //   324: aconst_null
    //   325: areturn
    //   326: astore 5
    //   328: aconst_null
    //   329: astore_0
    //   330: aload_0
    //   331: ifnull +9 -> 340
    //   334: aload_0
    //   335: invokeinterface 176 1 0
    //   340: aload 5
    //   342: athrow
    //   343: astore 5
    //   345: goto -15 -> 330
    //   348: astore 6
    //   350: goto -59 -> 291
    //   353: aconst_null
    //   354: astore 5
    //   356: aload 5
    //   358: ifnonnull -279 -> 79
    //   361: aload 6
    //   363: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	364	0	paramContext	Context
    //   161	35	1	i	int
    //   174	57	2	j	int
    //   187	60	3	k	int
    //   127	3	4	bool	boolean
    //   51	267	5	localObject1	Object
    //   326	15	5	localObject2	Object
    //   343	1	5	localObject3	Object
    //   354	3	5	localObject4	Object
    //   31	253	6	localAttributionIdentifiers	AttributionIdentifiers
    //   286	18	6	localException1	Exception
    //   348	14	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   33	53	286	java/lang/Exception
    //   56	76	286	java/lang/Exception
    //   79	112	286	java/lang/Exception
    //   33	53	326	finally
    //   56	76	326	finally
    //   79	112	326	finally
    //   120	129	343	finally
    //   152	162	343	finally
    //   165	175	343	finally
    //   178	188	343	finally
    //   191	204	343	finally
    //   215	223	343	finally
    //   226	239	343	finally
    //   242	258	343	finally
    //   294	312	343	finally
    //   120	129	348	java/lang/Exception
    //   152	162	348	java/lang/Exception
    //   165	175	348	java/lang/Exception
    //   178	188	348	java/lang/Exception
    //   191	204	348	java/lang/Exception
    //   215	223	348	java/lang/Exception
    //   226	239	348	java/lang/Exception
    //   242	258	348	java/lang/Exception
  }
  
  public String getAndroidAdvertiserId()
  {
    return androidAdvertiserId;
  }
  
  public String getAttributionId()
  {
    return attributionId;
  }
  
  public boolean isTrackingLimited()
  {
    return limitTracking;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.AttributionIdentifiers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */