package com.comscore.utils;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class h
{
  public static ArrayList<String> a(Context paramContext)
  {
    Object localObject = null;
    File localFile = paramContext.getFilesDir();
    paramContext = (Context)localObject;
    if (localFile != null)
    {
      paramContext = (Context)localObject;
      if (localFile.isDirectory())
      {
        paramContext = localFile.list(new q());
        if (paramContext == null) {
          break label54;
        }
        Arrays.sort(paramContext);
      }
    }
    for (;;)
    {
      return new ArrayList(Arrays.asList(paramContext));
      label54:
      paramContext = new String[0];
    }
  }
  
  public static void a(com.comscore.a.b paramb, String paramString1, int paramInt, String paramString2)
  {
    Object localObject2 = paramb.A();
    l locall = paramb.g();
    Object localObject1 = null;
    paramb = null;
    int i = n.a(locall.b(paramString1), 0);
    for (;;)
    {
      try
      {
        localObject2 = ((Context)localObject2).openFileOutput(paramString1, paramInt);
        paramb = (com.comscore.a.b)localObject2;
        localObject1 = localObject2;
        ((FileOutputStream)localObject2).write(paramString2.getBytes());
        paramb = (com.comscore.a.b)localObject2;
        localObject1 = localObject2;
        locall.a(paramString1, String.valueOf(i + 1));
      }
      catch (Exception paramString1)
      {
        localObject1 = paramb;
        b.a(h.class, "Exception in writeEvent:" + paramString1.getLocalizedMessage());
        localObject1 = paramb;
        b.a(paramString1);
        if (paramb == null) {
          continue;
        }
        try
        {
          paramb.close();
          return;
        }
        catch (IOException paramb)
        {
          b.a(paramb);
          return;
        }
      }
      finally
      {
        if (localObject1 == null) {
          break label152;
        }
      }
      try
      {
        ((FileOutputStream)localObject2).close();
        return;
      }
      catch (IOException paramb)
      {
        b.a(paramb);
        return;
      }
    }
    try
    {
      ((FileOutputStream)localObject1).close();
      label152:
      throw paramb;
    }
    catch (IOException paramString1)
    {
      for (;;)
      {
        b.a(paramString1);
      }
    }
  }
  
  public static boolean a(com.comscore.a.b paramb, String paramString)
  {
    Context localContext = paramb.A();
    paramb = paramb.g();
    boolean bool = localContext.deleteFile(paramString);
    if (bool)
    {
      new StringBuilder("File").append(paramString).append(" was removed");
      b.a(h.class);
      paramb.d(paramString);
    }
    return bool;
  }
  
  /* Error */
  public static String[] a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 143	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 144	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore_2
    //   10: new 146	java/io/BufferedReader
    //   13: dup
    //   14: new 148	java/io/InputStreamReader
    //   17: dup
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 152	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   23: invokespecial 155	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   26: invokespecial 158	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   29: astore_1
    //   30: aload_1
    //   31: astore_0
    //   32: aload_1
    //   33: invokevirtual 161	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   36: astore_2
    //   37: aload_2
    //   38: ifnull +45 -> 83
    //   41: aload_1
    //   42: astore_0
    //   43: aload_3
    //   44: aload_2
    //   45: invokevirtual 165	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: goto -19 -> 30
    //   52: astore_2
    //   53: aload_1
    //   54: astore_0
    //   55: aload_2
    //   56: invokestatic 104	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 166	java/io/BufferedReader:close	()V
    //   67: aload_3
    //   68: invokevirtual 170	java/util/LinkedList:size	()I
    //   71: anewarray 47	java/lang/String
    //   74: astore_0
    //   75: aload_3
    //   76: aload_0
    //   77: invokevirtual 174	java/util/LinkedList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   80: pop
    //   81: aload_0
    //   82: areturn
    //   83: aload_1
    //   84: invokevirtual 166	java/io/BufferedReader:close	()V
    //   87: goto -20 -> 67
    //   90: astore_0
    //   91: aload_0
    //   92: invokestatic 104	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   95: goto -28 -> 67
    //   98: astore_0
    //   99: aload_0
    //   100: invokestatic 104	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   103: goto -36 -> 67
    //   106: astore_0
    //   107: aload_2
    //   108: astore_1
    //   109: aload_1
    //   110: ifnull +7 -> 117
    //   113: aload_1
    //   114: invokevirtual 166	java/io/BufferedReader:close	()V
    //   117: aload_0
    //   118: athrow
    //   119: astore_1
    //   120: aload_1
    //   121: invokestatic 104	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   124: goto -7 -> 117
    //   127: astore_2
    //   128: aload_0
    //   129: astore_1
    //   130: aload_2
    //   131: astore_0
    //   132: goto -23 -> 109
    //   135: astore_2
    //   136: aconst_null
    //   137: astore_1
    //   138: goto -85 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	141	0	paramContext	Context
    //   0	141	1	paramString	String
    //   9	36	2	str	String
    //   52	56	2	localException1	Exception
    //   127	4	2	localObject	Object
    //   135	1	2	localException2	Exception
    //   7	69	3	localLinkedList	java.util.LinkedList
    // Exception table:
    //   from	to	target	type
    //   32	37	52	java/lang/Exception
    //   43	49	52	java/lang/Exception
    //   83	87	90	java/io/IOException
    //   63	67	98	java/io/IOException
    //   10	30	106	finally
    //   113	117	119	java/io/IOException
    //   32	37	127	finally
    //   43	49	127	finally
    //   55	59	127	finally
    //   10	30	135	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */