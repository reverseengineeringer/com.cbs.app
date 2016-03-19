package com.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;

public abstract class d
  implements c
{
  protected MotionEvent a;
  protected DisplayMetrics b;
  protected i c;
  private j d;
  
  protected d(Context paramContext, i parami, j paramj)
  {
    c = parami;
    d = paramj;
    try
    {
      b = paramContext.getResources().getDisplayMetrics();
      return;
    }
    catch (UnsupportedOperationException paramContext)
    {
      b = new DisplayMetrics();
      b.density = 1.0F;
    }
  }
  
  /* Error */
  private String a(Context paramContext, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 56	com/a/a/a/d:b	()V
    //   6: iload_3
    //   7: ifeq +28 -> 35
    //   10: aload_0
    //   11: invokevirtual 58	com/a/a/a/d:a	()V
    //   14: aload_0
    //   15: invokespecial 61	com/a/a/a/d:c	()[B
    //   18: astore 4
    //   20: aload_0
    //   21: monitorexit
    //   22: aload 4
    //   24: arraylength
    //   25: ifne +30 -> 55
    //   28: iconst_5
    //   29: invokestatic 67	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   32: astore_1
    //   33: aload_1
    //   34: areturn
    //   35: aload_0
    //   36: aload_1
    //   37: invokevirtual 70	com/a/a/a/d:b	(Landroid/content/Context;)V
    //   40: goto -26 -> 14
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: bipush 7
    //   51: invokestatic 67	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   54: areturn
    //   55: aload 4
    //   57: astore_1
    //   58: aload 4
    //   60: arraylength
    //   61: sipush 239
    //   64: if_icmple +19 -> 83
    //   67: aload_0
    //   68: invokespecial 56	com/a/a/a/d:b	()V
    //   71: aload_0
    //   72: bipush 20
    //   74: lconst_1
    //   75: invokevirtual 73	com/a/a/a/d:a	(IJ)V
    //   78: aload_0
    //   79: invokespecial 61	com/a/a/a/d:c	()[B
    //   82: astore_1
    //   83: aload_1
    //   84: arraylength
    //   85: sipush 239
    //   88: if_icmpge +169 -> 257
    //   91: sipush 239
    //   94: aload_1
    //   95: arraylength
    //   96: isub
    //   97: newarray <illegal type>
    //   99: astore 4
    //   101: new 75	java/security/SecureRandom
    //   104: dup
    //   105: invokespecial 76	java/security/SecureRandom:<init>	()V
    //   108: aload 4
    //   110: invokevirtual 80	java/security/SecureRandom:nextBytes	([B)V
    //   113: sipush 240
    //   116: invokestatic 86	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   119: aload_1
    //   120: arraylength
    //   121: i2b
    //   122: invokevirtual 90	java/nio/ByteBuffer:put	(B)Ljava/nio/ByteBuffer;
    //   125: aload_1
    //   126: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   129: aload 4
    //   131: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   134: invokevirtual 96	java/nio/ByteBuffer:array	()[B
    //   137: astore_1
    //   138: ldc 98
    //   140: invokestatic 104	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   143: astore 4
    //   145: aload 4
    //   147: aload_1
    //   148: invokevirtual 107	java/security/MessageDigest:update	([B)V
    //   151: aload 4
    //   153: invokevirtual 110	java/security/MessageDigest:digest	()[B
    //   156: astore 4
    //   158: sipush 256
    //   161: invokestatic 86	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   164: aload 4
    //   166: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   169: aload_1
    //   170: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   173: invokevirtual 96	java/nio/ByteBuffer:array	()[B
    //   176: astore_1
    //   177: sipush 256
    //   180: newarray <illegal type>
    //   182: astore 4
    //   184: new 112	com/a/a/a/b
    //   187: dup
    //   188: invokespecial 113	com/a/a/a/b:<init>	()V
    //   191: aload_1
    //   192: aload 4
    //   194: invokevirtual 116	com/a/a/a/b:a	([B[B)V
    //   197: aload_2
    //   198: ifnull +47 -> 245
    //   201: aload_2
    //   202: invokevirtual 122	java/lang/String:length	()I
    //   205: ifle +40 -> 245
    //   208: aload_2
    //   209: astore_1
    //   210: aload_2
    //   211: invokevirtual 122	java/lang/String:length	()I
    //   214: bipush 32
    //   216: if_icmple +11 -> 227
    //   219: aload_2
    //   220: iconst_0
    //   221: bipush 32
    //   223: invokevirtual 126	java/lang/String:substring	(II)Ljava/lang/String;
    //   226: astore_1
    //   227: new 128	com/a/b/a/a
    //   230: dup
    //   231: aload_1
    //   232: ldc -126
    //   234: invokevirtual 134	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   237: invokespecial 136	com/a/b/a/a:<init>	([B)V
    //   240: aload 4
    //   242: invokevirtual 138	com/a/b/a/a:a	([B)V
    //   245: aload_0
    //   246: getfield 23	com/a/a/a/d:c	Lcom/a/a/a/i;
    //   249: aload 4
    //   251: invokeinterface 143 2 0
    //   256: areturn
    //   257: sipush 240
    //   260: invokestatic 86	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   263: aload_1
    //   264: arraylength
    //   265: i2b
    //   266: invokevirtual 90	java/nio/ByteBuffer:put	(B)Ljava/nio/ByteBuffer;
    //   269: aload_1
    //   270: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   273: invokevirtual 96	java/nio/ByteBuffer:array	()[B
    //   276: astore_1
    //   277: goto -139 -> 138
    //   280: astore_1
    //   281: bipush 7
    //   283: invokestatic 67	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   286: areturn
    //   287: astore_1
    //   288: iconst_3
    //   289: invokestatic 67	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   292: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	d
    //   0	293	1	paramContext	Context
    //   0	293	2	paramString	String
    //   0	293	3	paramBoolean	boolean
    //   18	232	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	6	43	finally
    //   10	14	43	finally
    //   14	22	43	finally
    //   35	40	43	finally
    //   44	46	43	finally
    //   0	2	48	java/security/NoSuchAlgorithmException
    //   22	33	48	java/security/NoSuchAlgorithmException
    //   46	48	48	java/security/NoSuchAlgorithmException
    //   58	83	48	java/security/NoSuchAlgorithmException
    //   83	138	48	java/security/NoSuchAlgorithmException
    //   138	197	48	java/security/NoSuchAlgorithmException
    //   201	208	48	java/security/NoSuchAlgorithmException
    //   210	227	48	java/security/NoSuchAlgorithmException
    //   227	245	48	java/security/NoSuchAlgorithmException
    //   245	257	48	java/security/NoSuchAlgorithmException
    //   257	277	48	java/security/NoSuchAlgorithmException
    //   0	2	280	java/io/UnsupportedEncodingException
    //   22	33	280	java/io/UnsupportedEncodingException
    //   46	48	280	java/io/UnsupportedEncodingException
    //   58	83	280	java/io/UnsupportedEncodingException
    //   83	138	280	java/io/UnsupportedEncodingException
    //   138	197	280	java/io/UnsupportedEncodingException
    //   201	208	280	java/io/UnsupportedEncodingException
    //   210	227	280	java/io/UnsupportedEncodingException
    //   227	245	280	java/io/UnsupportedEncodingException
    //   245	257	280	java/io/UnsupportedEncodingException
    //   257	277	280	java/io/UnsupportedEncodingException
    //   0	2	287	java/io/IOException
    //   22	33	287	java/io/IOException
    //   46	48	287	java/io/IOException
    //   58	83	287	java/io/IOException
    //   83	138	287	java/io/IOException
    //   138	197	287	java/io/IOException
    //   201	208	287	java/io/IOException
    //   210	227	287	java/io/IOException
    //   227	245	287	java/io/IOException
    //   245	257	287	java/io/IOException
    //   257	277	287	java/io/IOException
  }
  
  private void b()
  {
    d.a();
  }
  
  private byte[] c()
  {
    return d.b();
  }
  
  public final String a(Context paramContext)
  {
    return a(paramContext, null, false);
  }
  
  public final String a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, true);
  }
  
  protected abstract void a();
  
  protected final void a(int paramInt, long paramLong)
  {
    d.a(paramInt, paramLong);
  }
  
  protected final void a(int paramInt, String paramString)
  {
    d.a(paramInt, paramString);
  }
  
  protected abstract void b(Context paramContext);
}

/* Location:
 * Qualified Name:     com.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */