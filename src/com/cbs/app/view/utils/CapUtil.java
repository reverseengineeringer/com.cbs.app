package com.cbs.app.view.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.preference.PreferenceManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
import java.util.regex.Pattern;

public class CapUtil
{
  public static final ArrayList<CapValue> a = new ArrayList();
  private static final String b = CapUtil.class.getSimpleName();
  
  static
  {
    b();
  }
  
  public static float a(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getFloat("bitrate_percentage", 1.0F);
  }
  
  public static int a()
  {
    int k = 0;
    b();
    int m = 300000;
    Object localObject = c();
    if ((((String)localObject).contains("neon")) || (((String)localObject).contains("isNeon: true"))) {}
    for (int i = 1;; i = 0)
    {
      int j;
      int n;
      if (i != 0)
      {
        j = 1;
        n = getNumCores();
      }
      try
      {
        i = getCPUFrequencyCurrent();
        k = i;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          label62:
          CapValue localCapValue;
          localException.printStackTrace();
        }
      }
      localObject = a.iterator();
      i = m;
      if (((Iterator)localObject).hasNext())
      {
        localCapValue = (CapValue)((Iterator)localObject).next();
        if ((b != j) || (a != n) || (c > k)) {
          break label138;
        }
        i = e;
      }
      label138:
      for (;;)
      {
        break label62;
        j = 0;
        break;
        return i;
      }
    }
  }
  
  private static int a(String paramString)
  {
    localObject = null;
    String str = null;
    try
    {
      paramString = new ProcessBuilder(new String[] { "/system/bin/cat", paramString }).start().getInputStream();
      str = paramString;
      localObject = paramString;
      int i = Integer.parseInt(a(paramString));
      if (paramString != null) {}
      try
      {
        paramString.close();
        return i;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return i;
      }
      try
      {
        ((InputStream)localObject).close();
        throw paramString;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    catch (Exception paramString)
    {
      localObject = str;
      throw new Exception(paramString);
    }
    finally
    {
      if (localObject == null) {}
    }
  }
  
  /* Error */
  private static String a(Context paramContext, double paramDouble)
  {
    // Byte code:
    //   0: invokestatic 22	com/cbs/app/view/utils/CapUtil:b	()V
    //   3: aload_0
    //   4: invokevirtual 143	android/content/Context:getPackageName	()Ljava/lang/String;
    //   7: astore 5
    //   9: aload_0
    //   10: invokevirtual 147	android/content/Context:getFilesDir	()Ljava/io/File;
    //   13: invokevirtual 152	java/io/File:getParentFile	()Ljava/io/File;
    //   16: invokevirtual 155	java/io/File:getPath	()Ljava/lang/String;
    //   19: astore 4
    //   21: aload 4
    //   23: astore_3
    //   24: aload_0
    //   25: invokevirtual 159	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   28: ifnull +39 -> 67
    //   31: aload_0
    //   32: invokevirtual 159	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   35: aload 5
    //   37: iconst_0
    //   38: invokevirtual 165	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   41: astore_0
    //   42: aload 4
    //   44: astore_3
    //   45: aload_0
    //   46: ifnull +21 -> 67
    //   49: aload 4
    //   51: astore_3
    //   52: aload_0
    //   53: getfield 171	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   56: ifnull +11 -> 67
    //   59: aload_0
    //   60: getfield 171	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   63: getfield 176	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   66: astore_3
    //   67: new 178	java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial 179	java/lang/StringBuilder:<init>	()V
    //   74: aload_3
    //   75: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: ldc -71
    //   80: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore 5
    //   88: getstatic 20	com/cbs/app/view/utils/CapUtil:a	Ljava/util/ArrayList;
    //   91: invokevirtual 74	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   94: astore_0
    //   95: aload_0
    //   96: invokeinterface 80 1 0
    //   101: ifeq +42 -> 143
    //   104: aload_0
    //   105: invokeinterface 84 1 0
    //   110: checkcast 86	com/cbs/app/view/utils/CapValue
    //   113: astore_3
    //   114: aload_3
    //   115: aload_3
    //   116: getfield 96	com/cbs/app/view/utils/CapValue:e	I
    //   119: i2d
    //   120: dload_1
    //   121: dmul
    //   122: invokestatic 194	java/lang/Math:round	(D)J
    //   125: l2i
    //   126: putfield 96	com/cbs/app/view/utils/CapValue:e	I
    //   129: goto -34 -> 95
    //   132: astore_0
    //   133: aload_0
    //   134: invokevirtual 195	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   137: aload 4
    //   139: astore_3
    //   140: goto -73 -> 67
    //   143: new 178	java/lang/StringBuilder
    //   146: dup
    //   147: sipush 512
    //   150: invokespecial 198	java/lang/StringBuilder:<init>	(I)V
    //   153: astore_0
    //   154: aload_0
    //   155: ldc -56
    //   157: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: aload_0
    //   162: ldc -54
    //   164: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: getstatic 20	com/cbs/app/view/utils/CapUtil:a	Ljava/util/ArrayList;
    //   171: invokevirtual 74	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   174: astore_3
    //   175: aload_3
    //   176: invokeinterface 80 1 0
    //   181: ifeq +249 -> 430
    //   184: aload_3
    //   185: invokeinterface 84 1 0
    //   190: checkcast 86	com/cbs/app/view/utils/CapValue
    //   193: astore 4
    //   195: aload_0
    //   196: ldc -52
    //   198: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: pop
    //   202: aload_0
    //   203: ldc -50
    //   205: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: pop
    //   209: aload_0
    //   210: aload 4
    //   212: getfield 91	com/cbs/app/view/utils/CapValue:a	I
    //   215: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   218: pop
    //   219: aload_0
    //   220: ldc -45
    //   222: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload_0
    //   227: ldc -43
    //   229: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: pop
    //   233: aload_0
    //   234: aload 4
    //   236: getfield 89	com/cbs/app/view/utils/CapValue:b	I
    //   239: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   242: pop
    //   243: aload_0
    //   244: ldc -41
    //   246: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: pop
    //   250: aload_0
    //   251: ldc -39
    //   253: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: pop
    //   257: aload_0
    //   258: aload 4
    //   260: getfield 93	com/cbs/app/view/utils/CapValue:c	I
    //   263: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   266: pop
    //   267: aload_0
    //   268: ldc -37
    //   270: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: pop
    //   274: aload_0
    //   275: ldc -35
    //   277: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: pop
    //   281: aload_0
    //   282: aload 4
    //   284: getfield 224	com/cbs/app/view/utils/CapValue:d	I
    //   287: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   290: pop
    //   291: aload_0
    //   292: ldc -30
    //   294: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: pop
    //   298: aload_0
    //   299: ldc -28
    //   301: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: pop
    //   305: aload_0
    //   306: aload 4
    //   308: getfield 96	com/cbs/app/view/utils/CapValue:e	I
    //   311: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   314: pop
    //   315: aload_0
    //   316: ldc -26
    //   318: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: pop
    //   322: aload_0
    //   323: ldc -24
    //   325: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: pop
    //   329: aload_0
    //   330: aload 4
    //   332: getfield 235	com/cbs/app/view/utils/CapValue:f	I
    //   335: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   338: pop
    //   339: aload_0
    //   340: ldc -19
    //   342: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: pop
    //   346: aload_0
    //   347: ldc -17
    //   349: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: pop
    //   353: aload_0
    //   354: aload 4
    //   356: getfield 242	com/cbs/app/view/utils/CapValue:g	I
    //   359: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   362: pop
    //   363: aload_0
    //   364: ldc -12
    //   366: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: pop
    //   370: aload_0
    //   371: ldc -10
    //   373: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: pop
    //   377: aload_0
    //   378: aload 4
    //   380: getfield 249	com/cbs/app/view/utils/CapValue:h	I
    //   383: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   386: pop
    //   387: aload_0
    //   388: ldc -5
    //   390: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: pop
    //   394: aload_0
    //   395: ldc -3
    //   397: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: pop
    //   401: aload_0
    //   402: aload 4
    //   404: getfield 256	com/cbs/app/view/utils/CapValue:i	I
    //   407: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   410: pop
    //   411: aload_0
    //   412: ldc_w 258
    //   415: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: pop
    //   419: aload_0
    //   420: ldc_w 260
    //   423: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: pop
    //   427: goto -252 -> 175
    //   430: aload_0
    //   431: ldc_w 262
    //   434: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: pop
    //   438: aload_0
    //   439: invokevirtual 188	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   442: astore 6
    //   444: new 149	java/io/File
    //   447: dup
    //   448: aload 5
    //   450: invokespecial 265	java/io/File:<init>	(Ljava/lang/String;)V
    //   453: astore 7
    //   455: aconst_null
    //   456: astore_3
    //   457: aconst_null
    //   458: astore 4
    //   460: aload_3
    //   461: astore_0
    //   462: aload 7
    //   464: invokevirtual 268	java/io/File:exists	()Z
    //   467: ifne +11 -> 478
    //   470: aload_3
    //   471: astore_0
    //   472: aload 7
    //   474: invokevirtual 271	java/io/File:createNewFile	()Z
    //   477: pop
    //   478: aload_3
    //   479: astore_0
    //   480: new 273	java/io/FileOutputStream
    //   483: dup
    //   484: aload 7
    //   486: invokespecial 276	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   489: astore_3
    //   490: aload_3
    //   491: aload 6
    //   493: ldc_w 278
    //   496: invokevirtual 282	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   499: invokevirtual 286	java/io/FileOutputStream:write	([B)V
    //   502: aload_3
    //   503: invokevirtual 289	java/io/FileOutputStream:flush	()V
    //   506: aload_3
    //   507: invokevirtual 290	java/io/FileOutputStream:close	()V
    //   510: aload 5
    //   512: areturn
    //   513: astore_0
    //   514: aload_0
    //   515: invokevirtual 291	java/io/IOException:printStackTrace	()V
    //   518: aload 5
    //   520: areturn
    //   521: astore_0
    //   522: aload 4
    //   524: astore_3
    //   525: aload_0
    //   526: astore 4
    //   528: aload_3
    //   529: astore_0
    //   530: aload 4
    //   532: invokevirtual 291	java/io/IOException:printStackTrace	()V
    //   535: aload_3
    //   536: ifnull -26 -> 510
    //   539: aload_3
    //   540: invokevirtual 290	java/io/FileOutputStream:close	()V
    //   543: aload 5
    //   545: areturn
    //   546: astore_0
    //   547: aload_0
    //   548: invokevirtual 291	java/io/IOException:printStackTrace	()V
    //   551: aload 5
    //   553: areturn
    //   554: astore 4
    //   556: aload_0
    //   557: astore_3
    //   558: aload 4
    //   560: astore_0
    //   561: aload_3
    //   562: ifnull +7 -> 569
    //   565: aload_3
    //   566: invokevirtual 290	java/io/FileOutputStream:close	()V
    //   569: aload_0
    //   570: athrow
    //   571: astore_3
    //   572: aload_3
    //   573: invokevirtual 291	java/io/IOException:printStackTrace	()V
    //   576: goto -7 -> 569
    //   579: astore_0
    //   580: goto -19 -> 561
    //   583: astore 4
    //   585: goto -57 -> 528
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	588	0	paramContext	Context
    //   0	588	1	paramDouble	double
    //   23	543	3	localObject1	Object
    //   571	2	3	localIOException1	IOException
    //   19	512	4	localObject2	Object
    //   554	5	4	localObject3	Object
    //   583	1	4	localIOException2	IOException
    //   7	545	5	str1	String
    //   442	50	6	str2	String
    //   453	32	7	localFile	File
    // Exception table:
    //   from	to	target	type
    //   24	42	132	android/content/pm/PackageManager$NameNotFoundException
    //   52	67	132	android/content/pm/PackageManager$NameNotFoundException
    //   506	510	513	java/io/IOException
    //   462	470	521	java/io/IOException
    //   472	478	521	java/io/IOException
    //   480	490	521	java/io/IOException
    //   539	543	546	java/io/IOException
    //   462	470	554	finally
    //   472	478	554	finally
    //   480	490	554	finally
    //   530	535	554	finally
    //   565	569	571	java/io/IOException
    //   490	506	579	finally
    //   490	506	583	java/io/IOException
  }
  
  private static String a(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramInputStream = new Scanner(paramInputStream, "UTF-8");
    while (paramInputStream.hasNextLine()) {
      localStringBuilder.append(paramInputStream.nextLine());
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Context paramContext, float paramFloat)
  {
    b();
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putFloat("bitrate_percentage", paramFloat);
    paramContext.commit();
  }
  
  public static String b(Context paramContext)
  {
    a(paramContext);
    return a(paramContext, a(paramContext));
  }
  
  private static void b()
  {
    a.clear();
    a.add(new CapValue(1, 0, 600000, 300000, 320, 240));
    a.add(new CapValue(1, 0, 1200000, 500000, 480, 320));
    a.add(new CapValue(1, 1, 1000000, 800000, 640, 480));
    a.add(new CapValue(1, 1, 1500000, 1000000, 640, 480));
    a.add(new CapValue(2, 0, 1000000, 1200000, 640, 480));
    a.add(new CapValue(2, 0, 1500000, 1500000, 640, 480));
    a.add(new CapValue(2, 1, 800000, 1400000, 640, 480));
    a.add(new CapValue(2, 1, 1000000, 1600000, 640, 480));
    a.add(new CapValue(2, 1, 1200000, 1800000, 640, 480));
    a.add(new CapValue(2, 1, 1800000, 2000000, 640, 480));
    a.add(new CapValue(4, 1, 1000000, 1800000, 640, 480));
    a.add(new CapValue(4, 1, 1500000, 2000000, 640, 480));
    a.add(new CapValue(4, 1, 2000000, 2500000, 640, 480));
  }
  
  private static String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("abi: ").append(Build.CPU_ABI).append("\n");
    if (new File("/proc/cpuinfo").exists()) {
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/cpuinfo")), "UTF-8"));
        for (;;)
        {
          String str = localBufferedReader.readLine();
          if (str == null) {
            break;
          }
          localStringBuilder.append(str);
          localStringBuilder.append("\n");
        }
        return localStringBuilder.toString();
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
    for (;;)
    {
      localIOException.close();
    }
  }
  
  public static int getCPUFrequencyCurrent()
  {
    return a("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
  }
  
  public static int getNumCores()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new a()).length;
      return i;
    }
    catch (Exception localException) {}
    return 1;
  }
  
  final class a
    implements FileFilter
  {
    public final boolean accept(File paramFile)
    {
      return Pattern.matches("cpu[0-9]+", paramFile.getName());
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.CapUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */