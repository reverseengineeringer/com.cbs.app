package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  private static final String a = "code_cache" + File.separator + "secondary-dexes";
  private static final Set<String> b = new HashSet();
  private static final boolean c = a(System.getProperty("java.vm.version"));
  
  private static Method a(Object paramObject, String paramString, Class<?>... paramVarArgs)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null) {
      try
      {
        Method localMethod = localClass.getDeclaredMethod(paramString, paramVarArgs);
        if (!localMethod.isAccessible()) {
          localMethod.setAccessible(true);
        }
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localClass = localClass.getSuperclass();
      }
    }
    throw new NoSuchMethodException("Method " + paramString + " with parameters " + Arrays.asList(paramVarArgs) + " not found in " + paramObject.getClass());
  }
  
  public static void a(Context paramContext)
  {
    if (c) {}
    ApplicationInfo localApplicationInfo;
    Object localObject;
    for (;;)
    {
      return;
      if (Build.VERSION.SDK_INT < 4) {
        throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
      }
      try
      {
        localApplicationInfo = b(paramContext);
        if (localApplicationInfo != null)
        {
          synchronized (b)
          {
            localObject = sourceDir;
            if (b.contains(localObject)) {
              return;
            }
          }
          b.add(localObject);
        }
      }
      catch (Exception paramContext)
      {
        Log.e("MultiDex", "Multidex installation failure", paramContext);
        throw new RuntimeException("Multi dex installation failed (" + paramContext.getMessage() + ").");
      }
    }
    if (Build.VERSION.SDK_INT > 20) {
      new StringBuilder("MultiDex is not guaranteed to work in SDK version ").append(Build.VERSION.SDK_INT).append(": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the ").append("case here: java.vm.version=\"").append(System.getProperty("java.vm.version")).append("\"");
    }
    try
    {
      localObject = paramContext.getClassLoader();
      if (localObject == null)
      {
        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
        return;
      }
    }
    catch (RuntimeException paramContext)
    {
      return;
    }
    try
    {
      c(paramContext);
      File localFile = new File(dataDir, a);
      List localList = b.a(paramContext, localApplicationInfo, localFile, false);
      if (a(localList)) {
        a((ClassLoader)localObject, localFile, localList);
      }
      for (;;)
      {
        return;
        paramContext = b.a(paramContext, localApplicationInfo, localFile, true);
        if (!a(paramContext)) {
          break;
        }
        a((ClassLoader)localObject, localFile, paramContext);
      }
      throw new RuntimeException("Zip files were not valid.");
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  private static void a(ClassLoader paramClassLoader, File paramFile, List<File> paramList)
  {
    Object localObject;
    ArrayList localArrayList;
    if (!paramList.isEmpty())
    {
      if (Build.VERSION.SDK_INT < 19) {
        break label213;
      }
      localObject = b(paramClassLoader, "pathList").get(paramClassLoader);
      localArrayList = new ArrayList();
      paramList = new ArrayList(paramList);
      a(localObject, "dexElements", (Object[])a(localObject, "makeDexElements", new Class[] { ArrayList.class, File.class, ArrayList.class }).invoke(localObject, new Object[] { paramList, paramFile, localArrayList }));
      if (localArrayList.size() > 0)
      {
        paramFile = localArrayList.iterator();
        while (paramFile.hasNext()) {
          paramFile.next();
        }
        paramList = b(paramClassLoader, "dexElementsSuppressedExceptions");
        localObject = (IOException[])paramList.get(paramClassLoader);
        if (localObject != null) {
          break label178;
        }
        paramFile = (IOException[])localArrayList.toArray(new IOException[localArrayList.size()]);
      }
    }
    for (;;)
    {
      paramList.set(paramClassLoader, paramFile);
      return;
      label178:
      paramFile = new IOException[localArrayList.size() + localObject.length];
      localArrayList.toArray(paramFile);
      System.arraycopy(localObject, 0, paramFile, localArrayList.size(), localObject.length);
    }
    label213:
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramClassLoader = b(paramClassLoader, "pathList").get(paramClassLoader);
      paramList = new ArrayList(paramList);
      a(paramClassLoader, "dexElements", (Object[])a(paramClassLoader, "makeDexElements", new Class[] { ArrayList.class, File.class }).invoke(paramClassLoader, new Object[] { paramList, paramFile }));
      return;
    }
    a.a(paramClassLoader, paramList);
  }
  
  private static boolean a(String paramString)
  {
    bool2 = false;
    bool1 = bool2;
    if (paramString != null)
    {
      localObject = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(paramString);
      bool1 = bool2;
      if (!((Matcher)localObject).matches()) {}
    }
    try
    {
      int i = Integer.parseInt(((Matcher)localObject).group(1));
      int j = Integer.parseInt(((Matcher)localObject).group(2));
      if (i <= 2)
      {
        bool1 = bool2;
        if (i == 2)
        {
          bool1 = bool2;
          if (j <= 0) {}
        }
      }
      else
      {
        bool1 = true;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        bool1 = bool2;
      }
    }
    Object localObject = new StringBuilder("VM with version ").append(paramString);
    if (bool1) {}
    for (paramString = " has multidex support";; paramString = " does not have multidex support")
    {
      ((StringBuilder)localObject).append(paramString);
      return bool1;
    }
  }
  
  private static boolean a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (!b.a((File)paramList.next())) {
        return false;
      }
    }
    return true;
  }
  
  private static ApplicationInfo b(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = paramContext.getPackageName();
      if ((localPackageManager == null) || (paramContext == null)) {
        return null;
      }
      return localPackageManager.getApplicationInfo(paramContext, 128);
    }
    catch (RuntimeException paramContext) {}
    return null;
  }
  
  private static Field b(Object paramObject, String paramString)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null) {
      try
      {
        Field localField = localClass.getDeclaredField(paramString);
        if (!localField.isAccessible()) {
          localField.setAccessible(true);
        }
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localClass = localClass.getSuperclass();
      }
    }
    throw new NoSuchFieldException("Field " + paramString + " not found in " + paramObject.getClass());
  }
  
  private static void c(Context paramContext)
  {
    paramContext = new File(paramContext.getFilesDir(), "secondary-dexes");
    File[] arrayOfFile;
    if (paramContext.isDirectory())
    {
      new StringBuilder("Clearing old secondary dex dir (").append(paramContext.getPath()).append(").");
      arrayOfFile = paramContext.listFiles();
      if (arrayOfFile == null) {
        new StringBuilder("Failed to list secondary dex dir content (").append(paramContext.getPath()).append(").");
      }
    }
    else
    {
      return;
    }
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = arrayOfFile[i];
      new StringBuilder("Trying to delete old file ").append(localFile.getPath()).append(" of size ").append(localFile.length());
      if (!localFile.delete()) {
        new StringBuilder("Failed to delete old file ").append(localFile.getPath());
      }
      for (;;)
      {
        i += 1;
        break;
        new StringBuilder("Deleted old file ").append(localFile.getPath());
      }
    }
    if (!paramContext.delete())
    {
      new StringBuilder("Failed to delete secondary dex dir ").append(paramContext.getPath());
      return;
    }
    new StringBuilder("Deleted old secondary dex dir ").append(paramContext.getPath());
  }
  
  private static final class a {}
}

/* Location:
 * Qualified Name:     android.support.multidex.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */