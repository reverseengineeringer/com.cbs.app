package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;

public final class g
{
  private final Map<String, String> a = new HashMap();
  private int b;
  private String c;
  private long d;
  private boolean e;
  private boolean f;
  private long g;
  
  public g(int paramInt, String paramString, Map<String, String> paramMap, long paramLong, boolean paramBoolean)
  {
    b = paramInt;
    c = paramString;
    if (paramMap != null) {
      a.putAll(paramMap);
    }
    d = paramLong;
    e = false;
    if (e)
    {
      f = false;
      return;
    }
    f = true;
  }
  
  public final void a(long paramLong)
  {
    f = true;
    g = (paramLong - d);
    am.a(3, "FlurryAgent", "Ended event '" + c + "' (" + d + ") after " + g + "ms");
  }
  
  public final boolean a()
  {
    return e;
  }
  
  public final boolean b()
  {
    return f;
  }
  
  /* Error */
  public final byte[] c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 86	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 87	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_1
    //   10: new 89	java/io/DataOutputStream
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 92	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 29	com/flurry/sdk/g:b	I
    //   24: invokevirtual 96	java/io/DataOutputStream:writeShort	(I)V
    //   27: aload_2
    //   28: aload_0
    //   29: getfield 31	com/flurry/sdk/g:c	Ljava/lang/String;
    //   32: invokevirtual 99	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   35: aload_2
    //   36: aload_0
    //   37: getfield 27	com/flurry/sdk/g:a	Ljava/util/Map;
    //   40: invokeinterface 103 1 0
    //   45: invokevirtual 96	java/io/DataOutputStream:writeShort	(I)V
    //   48: aload_0
    //   49: getfield 27	com/flurry/sdk/g:a	Ljava/util/Map;
    //   52: invokeinterface 107 1 0
    //   57: invokeinterface 113 1 0
    //   62: astore_3
    //   63: aload_3
    //   64: invokeinterface 118 1 0
    //   69: ifeq +68 -> 137
    //   72: aload_3
    //   73: invokeinterface 122 1 0
    //   78: checkcast 124	java/util/Map$Entry
    //   81: astore 4
    //   83: aload_2
    //   84: aload 4
    //   86: invokeinterface 127 1 0
    //   91: checkcast 129	java/lang/String
    //   94: invokestatic 134	com/flurry/sdk/bs:b	(Ljava/lang/String;)Ljava/lang/String;
    //   97: invokevirtual 99	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   100: aload_2
    //   101: aload 4
    //   103: invokeinterface 137 1 0
    //   108: checkcast 129	java/lang/String
    //   111: invokestatic 134	com/flurry/sdk/bs:b	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual 99	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   117: goto -54 -> 63
    //   120: astore_1
    //   121: aload_2
    //   122: astore_1
    //   123: iconst_0
    //   124: newarray <illegal type>
    //   126: astore_2
    //   127: aload_1
    //   128: invokestatic 140	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   131: aload_2
    //   132: astore_1
    //   133: aload_0
    //   134: monitorexit
    //   135: aload_1
    //   136: areturn
    //   137: aload_2
    //   138: aload_0
    //   139: getfield 39	com/flurry/sdk/g:d	J
    //   142: invokevirtual 143	java/io/DataOutputStream:writeLong	(J)V
    //   145: aload_2
    //   146: aload_0
    //   147: getfield 49	com/flurry/sdk/g:g	J
    //   150: invokevirtual 143	java/io/DataOutputStream:writeLong	(J)V
    //   153: aload_2
    //   154: invokevirtual 146	java/io/DataOutputStream:flush	()V
    //   157: aload_1
    //   158: invokevirtual 149	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   161: astore_1
    //   162: aload_2
    //   163: invokestatic 140	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   166: goto -33 -> 133
    //   169: astore_1
    //   170: aload_0
    //   171: monitorexit
    //   172: aload_1
    //   173: athrow
    //   174: astore_1
    //   175: aconst_null
    //   176: astore_2
    //   177: aload_2
    //   178: invokestatic 140	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   181: aload_1
    //   182: athrow
    //   183: astore_1
    //   184: goto -7 -> 177
    //   187: astore_3
    //   188: aload_1
    //   189: astore_2
    //   190: aload_3
    //   191: astore_1
    //   192: goto -15 -> 177
    //   195: astore_1
    //   196: aconst_null
    //   197: astore_1
    //   198: goto -75 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	201	0	this	g
    //   9	6	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   120	1	1	localIOException1	java.io.IOException
    //   122	40	1	localObject1	Object
    //   169	4	1	localObject2	Object
    //   174	8	1	localObject3	Object
    //   183	6	1	localObject4	Object
    //   191	1	1	localObject5	Object
    //   195	1	1	localIOException2	java.io.IOException
    //   197	1	1	localObject6	Object
    //   18	172	2	localObject7	Object
    //   62	11	3	localIterator	java.util.Iterator
    //   187	4	3	localObject8	Object
    //   81	21	4	localEntry	java.util.Map.Entry
    // Exception table:
    //   from	to	target	type
    //   19	63	120	java/io/IOException
    //   63	117	120	java/io/IOException
    //   137	162	120	java/io/IOException
    //   127	131	169	finally
    //   162	166	169	finally
    //   177	183	169	finally
    //   2	19	174	finally
    //   19	63	183	finally
    //   63	117	183	finally
    //   137	162	183	finally
    //   123	127	187	finally
    //   2	19	195	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */