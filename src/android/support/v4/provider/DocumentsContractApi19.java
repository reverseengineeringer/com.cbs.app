package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;

class DocumentsContractApi19
{
  private static final String TAG = "DocumentFile";
  
  public static boolean canRead(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 1) != 0) {}
    while (TextUtils.isEmpty(getRawType(paramContext, paramUri))) {
      return false;
    }
    return true;
  }
  
  public static boolean canWrite(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 2) != 0) {}
    String str;
    int i;
    do
    {
      do
      {
        return false;
        str = getRawType(paramContext, paramUri);
        i = queryForInt(paramContext, paramUri, "flags", 0);
      } while (TextUtils.isEmpty(str));
      if ((i & 0x4) != 0) {
        return true;
      }
      if (("vnd.android.document/directory".equals(str)) && ((i & 0x8) != 0)) {
        return true;
      }
    } while ((TextUtils.isEmpty(str)) || ((i & 0x2) == 0));
    return true;
  }
  
  private static void closeQuietly(AutoCloseable paramAutoCloseable)
  {
    if (paramAutoCloseable != null) {}
    try
    {
      paramAutoCloseable.close();
      return;
    }
    catch (RuntimeException paramAutoCloseable)
    {
      throw paramAutoCloseable;
    }
    catch (Exception paramAutoCloseable) {}
  }
  
  public static boolean delete(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.deleteDocument(paramContext.getContentResolver(), paramUri);
  }
  
  /* Error */
  public static boolean exists(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 62	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 42	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 71
    //   15: aastore
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: invokevirtual 77	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore_1
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: invokeinterface 83 1 0
    //   31: istore_2
    //   32: iload_2
    //   33: ifle +11 -> 44
    //   36: iconst_1
    //   37: istore_3
    //   38: aload_1
    //   39: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   42: iload_3
    //   43: ireturn
    //   44: iconst_0
    //   45: istore_3
    //   46: goto -8 -> 38
    //   49: astore 4
    //   51: aconst_null
    //   52: astore_1
    //   53: aload_1
    //   54: astore_0
    //   55: new 87	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 89
    //   61: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload 4
    //   66: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload_1
    //   71: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   74: iconst_0
    //   75: ireturn
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_0
    //   79: aload_0
    //   80: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: goto -7 -> 79
    //   89: astore 4
    //   91: goto -38 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramContext	Context
    //   0	94	1	paramUri	Uri
    //   31	2	2	i	int
    //   37	9	3	bool	boolean
    //   49	16	4	localException1	Exception
    //   89	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   5	23	49	java/lang/Exception
    //   5	23	76	finally
    //   25	32	85	finally
    //   55	70	85	finally
    //   25	32	89	java/lang/Exception
  }
  
  public static String getName(Context paramContext, Uri paramUri)
  {
    return queryForString(paramContext, paramUri, "_display_name", null);
  }
  
  private static String getRawType(Context paramContext, Uri paramUri)
  {
    return queryForString(paramContext, paramUri, "mime_type", null);
  }
  
  public static String getType(Context paramContext, Uri paramUri)
  {
    paramUri = getRawType(paramContext, paramUri);
    paramContext = paramUri;
    if ("vnd.android.document/directory".equals(paramUri)) {
      paramContext = null;
    }
    return paramContext;
  }
  
  public static boolean isDirectory(Context paramContext, Uri paramUri)
  {
    return "vnd.android.document/directory".equals(getRawType(paramContext, paramUri));
  }
  
  public static boolean isDocumentUri(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.isDocumentUri(paramContext, paramUri);
  }
  
  public static boolean isFile(Context paramContext, Uri paramUri)
  {
    paramContext = getRawType(paramContext, paramUri);
    return (!"vnd.android.document/directory".equals(paramContext)) && (!TextUtils.isEmpty(paramContext));
  }
  
  public static long lastModified(Context paramContext, Uri paramUri)
  {
    return queryForLong(paramContext, paramUri, "last_modified", 0L);
  }
  
  public static long length(Context paramContext, Uri paramUri)
  {
    return queryForLong(paramContext, paramUri, "_size", 0L);
  }
  
  private static int queryForInt(Context paramContext, Uri paramUri, String paramString, int paramInt)
  {
    return (int)queryForLong(paramContext, paramUri, paramString, paramInt);
  }
  
  /* Error */
  private static long queryForLong(Context paramContext, Uri paramUri, String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 62	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 42	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_2
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 77	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_1
    //   22: aload_1
    //   23: astore_0
    //   24: aload_1
    //   25: invokeinterface 126 1 0
    //   30: ifeq +33 -> 63
    //   33: aload_1
    //   34: astore_0
    //   35: aload_1
    //   36: iconst_0
    //   37: invokeinterface 130 2 0
    //   42: ifne +21 -> 63
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: iconst_0
    //   49: invokeinterface 134 2 0
    //   54: lstore 5
    //   56: aload_1
    //   57: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   60: lload 5
    //   62: lreturn
    //   63: aload_1
    //   64: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   67: lload_3
    //   68: lreturn
    //   69: astore_2
    //   70: aconst_null
    //   71: astore_1
    //   72: aload_1
    //   73: astore_0
    //   74: new 87	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 89
    //   80: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_2
    //   84: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload_1
    //   89: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   92: lload_3
    //   93: lreturn
    //   94: astore_1
    //   95: aconst_null
    //   96: astore_0
    //   97: aload_0
    //   98: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   101: aload_1
    //   102: athrow
    //   103: astore_1
    //   104: goto -7 -> 97
    //   107: astore_2
    //   108: goto -36 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	paramContext	Context
    //   0	111	1	paramUri	Uri
    //   0	111	2	paramString	String
    //   0	111	3	paramLong	long
    //   54	7	5	l	long
    // Exception table:
    //   from	to	target	type
    //   5	22	69	java/lang/Exception
    //   5	22	94	finally
    //   24	33	103	finally
    //   35	45	103	finally
    //   47	56	103	finally
    //   74	88	103	finally
    //   24	33	107	java/lang/Exception
    //   35	45	107	java/lang/Exception
    //   47	56	107	java/lang/Exception
  }
  
  /* Error */
  private static String queryForString(Context paramContext, Uri paramUri, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 62	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 42	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_2
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 77	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_1
    //   22: aload_1
    //   23: astore_0
    //   24: aload_1
    //   25: invokeinterface 126 1 0
    //   30: ifeq +31 -> 61
    //   33: aload_1
    //   34: astore_0
    //   35: aload_1
    //   36: iconst_0
    //   37: invokeinterface 130 2 0
    //   42: ifne +19 -> 61
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: iconst_0
    //   49: invokeinterface 138 2 0
    //   54: astore_2
    //   55: aload_1
    //   56: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   59: aload_2
    //   60: areturn
    //   61: aload_1
    //   62: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   65: aload_3
    //   66: areturn
    //   67: astore_2
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_1
    //   71: astore_0
    //   72: new 87	java/lang/StringBuilder
    //   75: dup
    //   76: ldc 89
    //   78: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_2
    //   82: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: aload_1
    //   87: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   90: aload_3
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_0
    //   95: aload_0
    //   96: invokestatic 85	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: goto -7 -> 95
    //   105: astore_2
    //   106: goto -36 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	paramContext	Context
    //   0	109	1	paramUri	Uri
    //   0	109	2	paramString1	String
    //   0	109	3	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   5	22	67	java/lang/Exception
    //   5	22	92	finally
    //   24	33	101	finally
    //   35	45	101	finally
    //   47	55	101	finally
    //   72	86	101	finally
    //   24	33	105	java/lang/Exception
    //   35	45	105	java/lang/Exception
    //   47	55	105	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.DocumentsContractApi19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */