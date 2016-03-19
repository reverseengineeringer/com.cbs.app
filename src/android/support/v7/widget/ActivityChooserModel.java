package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.support.v4.os.AsyncTaskCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlSerializer;

class ActivityChooserModel
  extends DataSetObservable
{
  private static final String ATTRIBUTE_ACTIVITY = "activity";
  private static final String ATTRIBUTE_TIME = "time";
  private static final String ATTRIBUTE_WEIGHT = "weight";
  private static final boolean DEBUG = false;
  private static final int DEFAULT_ACTIVITY_INFLATION = 5;
  private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0F;
  public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
  public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
  private static final String HISTORY_FILE_EXTENSION = ".xml";
  private static final int INVALID_INDEX = -1;
  private static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
  private static final String TAG_HISTORICAL_RECORD = "historical-record";
  private static final String TAG_HISTORICAL_RECORDS = "historical-records";
  private static final Map<String, ActivityChooserModel> sDataModelRegistry = new HashMap();
  private static final Object sRegistryLock = new Object();
  private final List<ActivityResolveInfo> mActivities = new ArrayList();
  private OnChooseActivityListener mActivityChoserModelPolicy;
  private ActivitySorter mActivitySorter = new DefaultSorter(null);
  private boolean mCanReadHistoricalData = true;
  private final Context mContext;
  private final List<HistoricalRecord> mHistoricalRecords = new ArrayList();
  private boolean mHistoricalRecordsChanged = true;
  private final String mHistoryFileName;
  private int mHistoryMaxSize = 50;
  private final Object mInstanceLock = new Object();
  private Intent mIntent;
  private boolean mReadShareHistoryCalled = false;
  private boolean mReloadActivities = false;
  
  private ActivityChooserModel(Context paramContext, String paramString)
  {
    mContext = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")))
    {
      mHistoryFileName = (paramString + ".xml");
      return;
    }
    mHistoryFileName = paramString;
  }
  
  private boolean addHisoricalRecord(HistoricalRecord paramHistoricalRecord)
  {
    boolean bool = mHistoricalRecords.add(paramHistoricalRecord);
    if (bool)
    {
      mHistoricalRecordsChanged = true;
      pruneExcessiveHistoricalRecordsIfNeeded();
      persistHistoricalDataIfNeeded();
      sortActivitiesIfNeeded();
      notifyChanged();
    }
    return bool;
  }
  
  private void ensureConsistentState()
  {
    boolean bool1 = loadActivitiesIfNeeded();
    boolean bool2 = readHistoricalDataIfNeeded();
    pruneExcessiveHistoricalRecordsIfNeeded();
    if ((bool1 | bool2))
    {
      sortActivitiesIfNeeded();
      notifyChanged();
    }
  }
  
  public static ActivityChooserModel get(Context paramContext, String paramString)
  {
    synchronized (sRegistryLock)
    {
      ActivityChooserModel localActivityChooserModel2 = (ActivityChooserModel)sDataModelRegistry.get(paramString);
      ActivityChooserModel localActivityChooserModel1 = localActivityChooserModel2;
      if (localActivityChooserModel2 == null)
      {
        localActivityChooserModel1 = new ActivityChooserModel(paramContext, paramString);
        sDataModelRegistry.put(paramString, localActivityChooserModel1);
      }
      return localActivityChooserModel1;
    }
  }
  
  private boolean loadActivitiesIfNeeded()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (mReloadActivities)
    {
      bool1 = bool2;
      if (mIntent != null)
      {
        mReloadActivities = false;
        mActivities.clear();
        List localList = mContext.getPackageManager().queryIntentActivities(mIntent, 0);
        int j = localList.size();
        int i = 0;
        while (i < j)
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i);
          mActivities.add(new ActivityResolveInfo(localResolveInfo));
          i += 1;
        }
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private void persistHistoricalDataIfNeeded()
  {
    if (!mReadShareHistoryCalled) {
      throw new IllegalStateException("No preceding call to #readHistoricalData");
    }
    if (!mHistoricalRecordsChanged) {}
    do
    {
      return;
      mHistoricalRecordsChanged = false;
    } while (TextUtils.isEmpty(mHistoryFileName));
    AsyncTaskCompat.executeParallel(new PersistHistoryAsyncTask(null), new Object[] { new ArrayList(mHistoricalRecords), mHistoryFileName });
  }
  
  private void pruneExcessiveHistoricalRecordsIfNeeded()
  {
    int j = mHistoricalRecords.size() - mHistoryMaxSize;
    if (j <= 0) {}
    for (;;)
    {
      return;
      mHistoricalRecordsChanged = true;
      int i = 0;
      while (i < j)
      {
        mHistoricalRecords.remove(0);
        i += 1;
      }
    }
  }
  
  private boolean readHistoricalDataIfNeeded()
  {
    if ((mCanReadHistoricalData) && (mHistoricalRecordsChanged) && (!TextUtils.isEmpty(mHistoryFileName)))
    {
      mCanReadHistoricalData = false;
      mReadShareHistoryCalled = true;
      readHistoricalDataImpl();
      return true;
    }
    return false;
  }
  
  /* Error */
  private void readHistoricalDataImpl()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 145	android/support/v7/widget/ActivityChooserModel:mContext	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 169	android/support/v7/widget/ActivityChooserModel:mHistoryFileName	Ljava/lang/String;
    //   8: invokevirtual 277	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 283	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: ldc_w 285
    //   21: invokeinterface 291 3 0
    //   26: iconst_0
    //   27: istore_1
    //   28: iload_1
    //   29: iconst_1
    //   30: if_icmpeq +18 -> 48
    //   33: iload_1
    //   34: iconst_2
    //   35: if_icmpeq +13 -> 48
    //   38: aload_3
    //   39: invokeinterface 294 1 0
    //   44: istore_1
    //   45: goto -17 -> 28
    //   48: ldc 63
    //   50: aload_3
    //   51: invokeinterface 297 1 0
    //   56: invokevirtual 300	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   59: ifne +52 -> 111
    //   62: new 271	org/xmlpull/v1/XmlPullParserException
    //   65: dup
    //   66: ldc_w 302
    //   69: invokespecial 303	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   72: athrow
    //   73: astore_3
    //   74: getstatic 98	android/support/v7/widget/ActivityChooserModel:LOG_TAG	Ljava/lang/String;
    //   77: new 159	java/lang/StringBuilder
    //   80: dup
    //   81: ldc_w 305
    //   84: invokespecial 306	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: aload_0
    //   88: getfield 169	android/support/v7/widget/ActivityChooserModel:mHistoryFileName	Ljava/lang/String;
    //   91: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aload_3
    //   98: invokestatic 312	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   101: pop
    //   102: aload_2
    //   103: ifnull +7 -> 110
    //   106: aload_2
    //   107: invokevirtual 317	java/io/FileInputStream:close	()V
    //   110: return
    //   111: aload_0
    //   112: getfield 122	android/support/v7/widget/ActivityChooserModel:mHistoricalRecords	Ljava/util/List;
    //   115: astore 4
    //   117: aload 4
    //   119: invokeinterface 222 1 0
    //   124: aload_3
    //   125: invokeinterface 294 1 0
    //   130: istore_1
    //   131: iload_1
    //   132: iconst_1
    //   133: if_icmpeq +140 -> 273
    //   136: iload_1
    //   137: iconst_3
    //   138: if_icmpeq -14 -> 124
    //   141: iload_1
    //   142: iconst_4
    //   143: if_icmpeq -19 -> 124
    //   146: ldc 60
    //   148: aload_3
    //   149: invokeinterface 297 1 0
    //   154: invokevirtual 300	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   157: ifne +54 -> 211
    //   160: new 271	org/xmlpull/v1/XmlPullParserException
    //   163: dup
    //   164: ldc_w 319
    //   167: invokespecial 303	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   170: athrow
    //   171: astore_3
    //   172: getstatic 98	android/support/v7/widget/ActivityChooserModel:LOG_TAG	Ljava/lang/String;
    //   175: new 159	java/lang/StringBuilder
    //   178: dup
    //   179: ldc_w 305
    //   182: invokespecial 306	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 169	android/support/v7/widget/ActivityChooserModel:mHistoryFileName	Ljava/lang/String;
    //   189: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: aload_3
    //   196: invokestatic 312	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload_2
    //   201: ifnull -91 -> 110
    //   204: aload_2
    //   205: invokevirtual 317	java/io/FileInputStream:close	()V
    //   208: return
    //   209: astore_2
    //   210: return
    //   211: aload 4
    //   213: new 20	android/support/v7/widget/ActivityChooserModel$HistoricalRecord
    //   216: dup
    //   217: aload_3
    //   218: aconst_null
    //   219: ldc 31
    //   221: invokeinterface 323 3 0
    //   226: aload_3
    //   227: aconst_null
    //   228: ldc 34
    //   230: invokeinterface 323 3 0
    //   235: invokestatic 329	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   238: aload_3
    //   239: aconst_null
    //   240: ldc 37
    //   242: invokeinterface 323 3 0
    //   247: invokestatic 335	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   250: invokespecial 338	android/support/v7/widget/ActivityChooserModel$HistoricalRecord:<init>	(Ljava/lang/String;JF)V
    //   253: invokeinterface 184 2 0
    //   258: pop
    //   259: goto -135 -> 124
    //   262: astore_3
    //   263: aload_2
    //   264: ifnull +7 -> 271
    //   267: aload_2
    //   268: invokevirtual 317	java/io/FileInputStream:close	()V
    //   271: aload_3
    //   272: athrow
    //   273: aload_2
    //   274: ifnull -164 -> 110
    //   277: aload_2
    //   278: invokevirtual 317	java/io/FileInputStream:close	()V
    //   281: return
    //   282: astore_2
    //   283: return
    //   284: astore_2
    //   285: return
    //   286: astore_2
    //   287: goto -16 -> 271
    //   290: astore_2
    //   291: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	ActivityChooserModel
    //   27	117	1	i	int
    //   11	194	2	localFileInputStream	java.io.FileInputStream
    //   209	69	2	localIOException1	IOException
    //   282	1	2	localIOException2	IOException
    //   284	1	2	localIOException3	IOException
    //   286	1	2	localIOException4	IOException
    //   290	1	2	localFileNotFoundException	FileNotFoundException
    //   15	36	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   73	76	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   171	68	3	localIOException5	IOException
    //   262	10	3	localObject	Object
    //   115	97	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	26	73	org/xmlpull/v1/XmlPullParserException
    //   38	45	73	org/xmlpull/v1/XmlPullParserException
    //   48	73	73	org/xmlpull/v1/XmlPullParserException
    //   111	124	73	org/xmlpull/v1/XmlPullParserException
    //   124	131	73	org/xmlpull/v1/XmlPullParserException
    //   146	171	73	org/xmlpull/v1/XmlPullParserException
    //   211	259	73	org/xmlpull/v1/XmlPullParserException
    //   12	26	171	java/io/IOException
    //   38	45	171	java/io/IOException
    //   48	73	171	java/io/IOException
    //   111	124	171	java/io/IOException
    //   124	131	171	java/io/IOException
    //   146	171	171	java/io/IOException
    //   211	259	171	java/io/IOException
    //   204	208	209	java/io/IOException
    //   12	26	262	finally
    //   38	45	262	finally
    //   48	73	262	finally
    //   74	102	262	finally
    //   111	124	262	finally
    //   124	131	262	finally
    //   146	171	262	finally
    //   172	200	262	finally
    //   211	259	262	finally
    //   277	281	282	java/io/IOException
    //   106	110	284	java/io/IOException
    //   267	271	286	java/io/IOException
    //   0	12	290	java/io/FileNotFoundException
  }
  
  private boolean sortActivitiesIfNeeded()
  {
    if ((mActivitySorter != null) && (mIntent != null) && (!mActivities.isEmpty()) && (!mHistoricalRecords.isEmpty()))
    {
      mActivitySorter.sort(mIntent, mActivities, Collections.unmodifiableList(mHistoricalRecords));
      return true;
    }
    return false;
  }
  
  public Intent chooseActivity(int paramInt)
  {
    synchronized (mInstanceLock)
    {
      if (mIntent == null) {
        return null;
      }
      ensureConsistentState();
      Object localObject2 = (ActivityResolveInfo)mActivities.get(paramInt);
      localObject2 = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
      Intent localIntent1 = new Intent(mIntent);
      localIntent1.setComponent((ComponentName)localObject2);
      if (mActivityChoserModelPolicy != null)
      {
        Intent localIntent2 = new Intent(localIntent1);
        if (mActivityChoserModelPolicy.onChooseActivity(this, localIntent2)) {
          return null;
        }
      }
      addHisoricalRecord(new HistoricalRecord((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent1;
    }
  }
  
  public ResolveInfo getActivity(int paramInt)
  {
    synchronized (mInstanceLock)
    {
      ensureConsistentState();
      ResolveInfo localResolveInfo = mActivities.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }
  
  public int getActivityCount()
  {
    synchronized (mInstanceLock)
    {
      ensureConsistentState();
      int i = mActivities.size();
      return i;
    }
  }
  
  public int getActivityIndex(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i;
      synchronized (mInstanceLock)
      {
        ensureConsistentState();
        List localList = mActivities;
        int j = localList.size();
        i = 0;
        if (i < j)
        {
          if (getresolveInfo == paramResolveInfo) {
            return i;
          }
        }
        else {
          return -1;
        }
      }
      i += 1;
    }
  }
  
  public ResolveInfo getDefaultActivity()
  {
    synchronized (mInstanceLock)
    {
      ensureConsistentState();
      if (!mActivities.isEmpty())
      {
        ResolveInfo localResolveInfo = mActivities.get(0)).resolveInfo;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public int getHistoryMaxSize()
  {
    synchronized (mInstanceLock)
    {
      int i = mHistoryMaxSize;
      return i;
    }
  }
  
  public int getHistorySize()
  {
    synchronized (mInstanceLock)
    {
      ensureConsistentState();
      int i = mHistoricalRecords.size();
      return i;
    }
  }
  
  public Intent getIntent()
  {
    synchronized (mInstanceLock)
    {
      Intent localIntent = mIntent;
      return localIntent;
    }
  }
  
  public void setActivitySorter(ActivitySorter paramActivitySorter)
  {
    synchronized (mInstanceLock)
    {
      if (mActivitySorter == paramActivitySorter) {
        return;
      }
      mActivitySorter = paramActivitySorter;
      if (sortActivitiesIfNeeded()) {
        notifyChanged();
      }
      return;
    }
  }
  
  public void setDefaultActivity(int paramInt)
  {
    for (;;)
    {
      synchronized (mInstanceLock)
      {
        ensureConsistentState();
        ActivityResolveInfo localActivityResolveInfo1 = (ActivityResolveInfo)mActivities.get(paramInt);
        ActivityResolveInfo localActivityResolveInfo2 = (ActivityResolveInfo)mActivities.get(0);
        if (localActivityResolveInfo2 != null)
        {
          f = weight - weight + 5.0F;
          addHisoricalRecord(new HistoricalRecord(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
          return;
        }
      }
      float f = 1.0F;
    }
  }
  
  public void setHistoryMaxSize(int paramInt)
  {
    synchronized (mInstanceLock)
    {
      if (mHistoryMaxSize == paramInt) {
        return;
      }
      mHistoryMaxSize = paramInt;
      pruneExcessiveHistoricalRecordsIfNeeded();
      if (sortActivitiesIfNeeded()) {
        notifyChanged();
      }
      return;
    }
  }
  
  public void setIntent(Intent paramIntent)
  {
    synchronized (mInstanceLock)
    {
      if (mIntent == paramIntent) {
        return;
      }
      mIntent = paramIntent;
      mReloadActivities = true;
      ensureConsistentState();
      return;
    }
  }
  
  public void setOnChooseActivityListener(OnChooseActivityListener paramOnChooseActivityListener)
  {
    synchronized (mInstanceLock)
    {
      mActivityChoserModelPolicy = paramOnChooseActivityListener;
      return;
    }
  }
  
  public static abstract interface ActivityChooserModelClient
  {
    public abstract void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel);
  }
  
  public final class ActivityResolveInfo
    implements Comparable<ActivityResolveInfo>
  {
    public final ResolveInfo resolveInfo;
    public float weight;
    
    public ActivityResolveInfo(ResolveInfo paramResolveInfo)
    {
      resolveInfo = paramResolveInfo;
    }
    
    public final int compareTo(ActivityResolveInfo paramActivityResolveInfo)
    {
      return Float.floatToIntBits(weight) - Float.floatToIntBits(weight);
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (ActivityResolveInfo)paramObject;
      } while (Float.floatToIntBits(weight) == Float.floatToIntBits(weight));
      return false;
    }
    
    public final int hashCode()
    {
      return Float.floatToIntBits(weight) + 31;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("resolveInfo:").append(resolveInfo.toString());
      localStringBuilder.append("; weight:").append(new BigDecimal(weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface ActivitySorter
  {
    public abstract void sort(Intent paramIntent, List<ActivityChooserModel.ActivityResolveInfo> paramList, List<ActivityChooserModel.HistoricalRecord> paramList1);
  }
  
  private final class DefaultSorter
    implements ActivityChooserModel.ActivitySorter
  {
    private static final float WEIGHT_DECAY_COEFFICIENT = 0.95F;
    private final Map<ComponentName, ActivityChooserModel.ActivityResolveInfo> mPackageNameToActivityMap = new HashMap();
    
    private DefaultSorter() {}
    
    public final void sort(Intent paramIntent, List<ActivityChooserModel.ActivityResolveInfo> paramList, List<ActivityChooserModel.HistoricalRecord> paramList1)
    {
      paramIntent = mPackageNameToActivityMap;
      paramIntent.clear();
      int j = paramList.size();
      int i = 0;
      Object localObject;
      while (i < j)
      {
        localObject = (ActivityChooserModel.ActivityResolveInfo)paramList.get(i);
        weight = 0.0F;
        paramIntent.put(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), localObject);
        i += 1;
      }
      i = paramList1.size();
      float f1 = 1.0F;
      i -= 1;
      if (i >= 0)
      {
        localObject = (ActivityChooserModel.HistoricalRecord)paramList1.get(i);
        ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo = (ActivityChooserModel.ActivityResolveInfo)paramIntent.get(activity);
        if (localActivityResolveInfo == null) {
          break label195;
        }
        float f2 = weight;
        weight = (weight * f1 + f2);
        f1 = 0.95F * f1;
      }
      label195:
      for (;;)
      {
        i -= 1;
        break;
        Collections.sort(paramList);
        return;
      }
    }
  }
  
  public static final class HistoricalRecord
  {
    public final ComponentName activity;
    public final long time;
    public final float weight;
    
    public HistoricalRecord(ComponentName paramComponentName, long paramLong, float paramFloat)
    {
      activity = paramComponentName;
      time = paramLong;
      weight = paramFloat;
    }
    
    public HistoricalRecord(String paramString, long paramLong, float paramFloat)
    {
      this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (HistoricalRecord)paramObject;
        if (activity == null)
        {
          if (activity != null) {
            return false;
          }
        }
        else if (!activity.equals(activity)) {
          return false;
        }
        if (time != time) {
          return false;
        }
      } while (Float.floatToIntBits(weight) == Float.floatToIntBits(weight));
      return false;
    }
    
    public final int hashCode()
    {
      if (activity == null) {}
      for (int i = 0;; i = activity.hashCode()) {
        return ((i + 31) * 31 + (int)(time ^ time >>> 32)) * 31 + Float.floatToIntBits(weight);
      }
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append("; activity:").append(activity);
      localStringBuilder.append("; time:").append(time);
      localStringBuilder.append("; weight:").append(new BigDecimal(weight));
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface OnChooseActivityListener
  {
    public abstract boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent);
  }
  
  private final class PersistHistoryAsyncTask
    extends AsyncTask<Object, Void, Void>
  {
    private PersistHistoryAsyncTask() {}
    
    public final Void doInBackground(Object... paramVarArgs)
    {
      int i = 0;
      List localList = (List)paramVarArgs[0];
      Object localObject2 = (String)paramVarArgs[1];
      for (;;)
      {
        try
        {
          paramVarArgs = mContext.openFileOutput((String)localObject2, 0);
          localObject2 = Xml.newSerializer();
          int j;
          ActivityChooserModel.HistoricalRecord localHistoricalRecord;
          ((XmlSerializer)localObject2).endTag(null, "historical-records");
        }
        catch (FileNotFoundException paramVarArgs)
        {
          try
          {
            ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
            ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
            ((XmlSerializer)localObject2).startTag(null, "historical-records");
            j = localList.size();
            if (i >= j) {
              break label210;
            }
            localHistoricalRecord = (ActivityChooserModel.HistoricalRecord)localList.remove(0);
            ((XmlSerializer)localObject2).startTag(null, "historical-record");
            ((XmlSerializer)localObject2).attribute(null, "activity", activity.flattenToString());
            ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(time));
            ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(weight));
            ((XmlSerializer)localObject2).endTag(null, "historical-record");
            i += 1;
            continue;
            paramVarArgs = paramVarArgs;
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical recrod file: " + (String)localObject2, paramVarArgs);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical recrod file: " + mHistoryFileName, localIllegalArgumentException);
            ActivityChooserModel.access$502(ActivityChooserModel.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IllegalStateException localIllegalStateException)
          {
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical recrod file: " + mHistoryFileName, localIllegalStateException);
            ActivityChooserModel.access$502(ActivityChooserModel.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          catch (IOException localIOException)
          {
            Log.e(ActivityChooserModel.LOG_TAG, "Error writing historical recrod file: " + mHistoryFileName, localIOException);
            ActivityChooserModel.access$502(ActivityChooserModel.this, true);
            if (paramVarArgs == null) {
              continue;
            }
            try
            {
              paramVarArgs.close();
              return null;
            }
            catch (IOException paramVarArgs)
            {
              return null;
            }
          }
          finally
          {
            ActivityChooserModel.access$502(ActivityChooserModel.this, true);
            if (paramVarArgs == null) {
              break label434;
            }
          }
          return null;
        }
        label210:
        ((XmlSerializer)localObject2).endDocument();
        ActivityChooserModel.access$502(ActivityChooserModel.this, true);
        if (paramVarArgs != null) {
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
      }
      try
      {
        paramVarArgs.close();
        label434:
        throw ((Throwable)localObject1);
      }
      catch (IOException paramVarArgs)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActivityChooserModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */