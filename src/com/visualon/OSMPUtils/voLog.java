package com.visualon.OSMPUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class voLog
{
  private static final String JAVA_MODULE_ID = "090B0000";
  private static final String LIB_NAME = "voLogSys";
  private static final String SEPARATOR = ",";
  private static boolean isInitialized = false;
  private static boolean mJNILoaded = false;
  private static long mNativeContext = 0L;
  private static final boolean m_bPrintLog = false;
  
  public static void crash(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Crash", 7, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void crash2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Crash", 7, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
  
  public static void d(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Debug", 3, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void d2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Debug", 3, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
  
  public static void e(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Error", 6, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void e2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Error", 6, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
  
  private static boolean enablePrintLog()
  {
    return false;
  }
  
  private static String getDefaultTag(StackTraceElement paramStackTraceElement)
  {
    return paramStackTraceElement.getFileName().split("\\.")[0];
  }
  
  private static String getLogInfo(StackTraceElement paramStackTraceElement, String paramString1, voLog.FileLevelStatus paramFileLevelStatus, String paramString2)
  {
    paramFileLevelStatus = new StringBuilder();
    long l = Thread.currentThread().getId();
    String str1 = paramStackTraceElement.getFileName();
    String str2 = paramStackTraceElement.getMethodName();
    int i = paramStackTraceElement.getLineNumber();
    paramFileLevelStatus.append(new SimpleDateFormat("HH:mm:ss|SSS ").format(new Date()));
    paramFileLevelStatus.append("@@@VOLOG,");
    paramFileLevelStatus.append(String.format("%7s", new Object[] { paramString1 })).append(",");
    paramFileLevelStatus.append(" ModuleID[090B0000],");
    paramFileLevelStatus.append(" ThreadID[" + l + "]").append(",");
    paramFileLevelStatus.append(" " + str1).append(",");
    paramFileLevelStatus.append(" " + str2);
    paramFileLevelStatus.append(",").append(" Line#" + i);
    if ((paramString2 != null) && (!paramString2.isEmpty())) {
      paramFileLevelStatus.append(",").append(" " + paramString2);
    }
    return paramFileLevelStatus.toString();
  }
  
  public static void i(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Info", 4, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void i2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Info", 4, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
  
  public static int initLogLib(String paramString)
  {
    int i;
    if (isInitialized) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      if (!loadJNI(paramString)) {
        return -2147483633;
      }
      j = nativeInit(mNativeContext, paramString);
      i = j;
    } while (j != 0);
    isInitialized = true;
    return j;
  }
  
  private static boolean loadJNI(String paramString)
  {
    if (mJNILoaded) {
      return mJNILoaded;
    }
    boolean bool = voLoadJNI.loadReachableLib(paramString, "voLogSys");
    mJNILoaded = bool;
    return bool;
  }
  
  private static native int nativeInit(long paramLong, String paramString);
  
  private static native int nativeLog(long paramLong, int paramInt1, int paramInt2, String paramString);
  
  private static native int nativeUninit(long paramLong);
  
  private static void printLog(String paramString1, String paramString2, String paramString3, int paramInt, voLog.FileLevelStatus paramFileLevelStatus, Object... paramVarArgs)
  {
    if (!enablePrintLog()) {
      return;
    }
    String str;
    if (paramString2 == null) {
      str = "No Message.";
    }
    try
    {
      for (;;)
      {
        paramString2 = "" + String.format(paramString2, paramVarArgs);
        int i = Math.min(4, Thread.currentThread().getStackTrace().length - 1);
        paramString1 = getLogInfo(Thread.currentThread().getStackTrace()[i], paramString3, paramFileLevelStatus, paramString1 + " " + paramString2);
        nativeLog(mNativeContext, paramInt, paramFileLevelStatus.getValue(), paramString1);
        return;
        str = paramString2;
      }
    }
    catch (Exception paramString2)
    {
      for (;;)
      {
        paramString2 = str;
      }
    }
  }
  
  public static int uninitLogLib()
  {
    if (!isInitialized) {
      return 0;
    }
    int i = nativeUninit(mNativeContext);
    if (i == 0) {
      isInitialized = false;
    }
    return i;
  }
  
  public static void v(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Verbose", 2, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void v2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Verbose", 2, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
  
  public static void w(String paramString1, String paramString2, Object... paramVarArgs)
  {
    printLog(paramString1, paramString2, "Warning", 5, voLog.FileLevelStatus.LOGFORV1, paramVarArgs);
  }
  
  public static void w2(String paramString, Object... paramVarArgs)
  {
    printLog("", paramString, "Warning", 5, voLog.FileLevelStatus.LOGFORV2, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.visualon.OSMPUtils.voLog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */