package a.a.a.a.a;

import java.util.Set;

public class c
{
  private static final ThreadLocal<Set<d>> a = new ThreadLocal();
  private final int b = 37;
  private int c = 0;
  
  public c() {}
  
  private c(int paramInt1, int paramInt2) {}
  
  public static int a(Object paramObject, String... paramVarArgs)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("The object to build a hash code for must not be null");
    }
    c localc = new c(17, 37);
    Class localClass = paramObject.getClass();
    a(paramObject, localClass, localc, false, paramVarArgs);
    while ((localClass.getSuperclass() != null) && (localClass != null))
    {
      localClass = localClass.getSuperclass();
      a(paramObject, localClass, localc, false, paramVarArgs);
    }
    return c;
  }
  
  private c a(long paramLong)
  {
    c = (c * b + (int)(paramLong >> 32 ^ paramLong));
    return this;
  }
  
  private static Set<d> a()
  {
    return (Set)a.get();
  }
  
  private static void a(Object paramObject)
  {
    Set localSet = a();
    if (localSet != null)
    {
      localSet.remove(new d(paramObject));
      try
      {
        paramObject = a();
        if ((paramObject != null) && (((Set)paramObject).isEmpty())) {
          a.remove();
        }
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  private static void a(Object paramObject, Class<?> paramClass, c paramc, boolean paramBoolean, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: iconst_0
    //   4: istore 6
    //   6: invokestatic 62	a/a/a/a/a/c:a	()Ljava/util/Set;
    //   9: astore 8
    //   11: aload 8
    //   13: ifnull +27 -> 40
    //   16: aload 8
    //   18: new 64	a/a/a/a/a/d
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 66	a/a/a/a/a/d:<init>	(Ljava/lang/Object;)V
    //   26: invokeinterface 81 2 0
    //   31: ifeq +9 -> 40
    //   34: iload 5
    //   36: ifeq +10 -> 46
    //   39: return
    //   40: iconst_0
    //   41: istore 5
    //   43: goto -9 -> 34
    //   46: ldc 2
    //   48: monitorenter
    //   49: invokestatic 62	a/a/a/a/a/c:a	()Ljava/util/Set;
    //   52: ifnonnull +16 -> 68
    //   55: getstatic 20	a/a/a/a/a/c:a	Ljava/lang/ThreadLocal;
    //   58: new 83	java/util/HashSet
    //   61: dup
    //   62: invokespecial 84	java/util/HashSet:<init>	()V
    //   65: invokevirtual 87	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   68: ldc 2
    //   70: monitorexit
    //   71: invokestatic 62	a/a/a/a/a/c:a	()Ljava/util/Set;
    //   74: new 64	a/a/a/a/a/d
    //   77: dup
    //   78: aload_0
    //   79: invokespecial 66	a/a/a/a/a/d:<init>	(Ljava/lang/Object;)V
    //   82: invokeinterface 90 2 0
    //   87: pop
    //   88: aload_1
    //   89: invokevirtual 94	java/lang/Class:getDeclaredFields	()[Ljava/lang/reflect/Field;
    //   92: astore_1
    //   93: aload_1
    //   94: iconst_1
    //   95: invokestatic 100	java/lang/reflect/AccessibleObject:setAccessible	([Ljava/lang/reflect/AccessibleObject;Z)V
    //   98: aload_1
    //   99: arraylength
    //   100: istore 7
    //   102: iload 6
    //   104: istore 5
    //   106: iload 5
    //   108: iload 7
    //   110: if_icmpge +104 -> 214
    //   113: aload_1
    //   114: iload 5
    //   116: aaload
    //   117: astore 8
    //   119: aload 4
    //   121: aload 8
    //   123: invokevirtual 106	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   126: invokestatic 111	a/a/a/a/a:a	([Ljava/lang/Object;Ljava/lang/Object;)Z
    //   129: ifne +52 -> 181
    //   132: aload 8
    //   134: invokevirtual 106	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   137: bipush 36
    //   139: invokevirtual 117	java/lang/String:indexOf	(I)I
    //   142: iconst_m1
    //   143: if_icmpne +38 -> 181
    //   146: aload 8
    //   148: invokevirtual 121	java/lang/reflect/Field:getModifiers	()I
    //   151: invokestatic 127	java/lang/reflect/Modifier:isTransient	(I)Z
    //   154: ifne +27 -> 181
    //   157: aload 8
    //   159: invokevirtual 121	java/lang/reflect/Field:getModifiers	()I
    //   162: invokestatic 130	java/lang/reflect/Modifier:isStatic	(I)Z
    //   165: istore_3
    //   166: iload_3
    //   167: ifne +14 -> 181
    //   170: aload_2
    //   171: aload 8
    //   173: aload_0
    //   174: invokevirtual 133	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   177: invokespecial 136	a/a/a/a/a/c:b	(Ljava/lang/Object;)La/a/a/a/a/c;
    //   180: pop
    //   181: iload 5
    //   183: iconst_1
    //   184: iadd
    //   185: istore 5
    //   187: goto -81 -> 106
    //   190: astore_1
    //   191: ldc 2
    //   193: monitorexit
    //   194: aload_1
    //   195: athrow
    //   196: astore_1
    //   197: aload_0
    //   198: invokestatic 138	a/a/a/a/a/c:a	(Ljava/lang/Object;)V
    //   201: aload_1
    //   202: athrow
    //   203: astore_1
    //   204: new 140	java/lang/InternalError
    //   207: dup
    //   208: ldc -114
    //   210: invokespecial 143	java/lang/InternalError:<init>	(Ljava/lang/String;)V
    //   213: athrow
    //   214: aload_0
    //   215: invokestatic 138	a/a/a/a/a/c:a	(Ljava/lang/Object;)V
    //   218: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	paramObject	Object
    //   0	219	1	paramClass	Class<?>
    //   0	219	2	paramc	c
    //   0	219	3	paramBoolean	boolean
    //   0	219	4	paramArrayOfString	String[]
    //   1	185	5	i	int
    //   4	99	6	j	int
    //   100	11	7	k	int
    //   9	163	8	localSet	Set
    // Exception table:
    //   from	to	target	type
    //   49	68	190	finally
    //   68	71	190	finally
    //   191	194	190	finally
    //   46	49	196	finally
    //   71	102	196	finally
    //   119	166	196	finally
    //   170	181	196	finally
    //   194	196	196	finally
    //   204	214	196	finally
    //   170	181	203	java/lang/IllegalAccessException
  }
  
  private c b(Object paramObject)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i = 0;
    if (paramObject == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      if (!paramObject.getClass().isArray()) {
        break;
      }
      if ((paramObject instanceof long[]))
      {
        paramObject = (long[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        while (i < j)
        {
          a(paramObject[i]);
          i += 1;
        }
      }
      else if ((paramObject instanceof int[]))
      {
        paramObject = (int[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        k = paramObject.length;
        i = j;
        while (i < k)
        {
          c = (paramObject[i] + c * b);
          i += 1;
        }
      }
      else if ((paramObject instanceof short[]))
      {
        paramObject = (short[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = k;
        while (i < j)
        {
          c = (paramObject[i] + c * b);
          i += 1;
        }
      }
      else if ((paramObject instanceof char[]))
      {
        paramObject = (char[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = m;
        while (i < j)
        {
          c = (paramObject[i] + c * b);
          i += 1;
        }
      }
      else if ((paramObject instanceof byte[]))
      {
        paramObject = (byte[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = n;
        while (i < j)
        {
          c = (paramObject[i] + c * b);
          i += 1;
        }
      }
      else if ((paramObject instanceof double[]))
      {
        paramObject = (double[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = i1;
        while (i < j)
        {
          a(Double.doubleToLongBits(paramObject[i]));
          i += 1;
        }
      }
      else if ((paramObject instanceof float[]))
      {
        paramObject = (float[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = i2;
        while (i < j)
        {
          float f = paramObject[i];
          k = c;
          m = b;
          c = (Float.floatToIntBits(f) + k * m);
          i += 1;
        }
      }
      else
      {
        if ((paramObject instanceof boolean[]))
        {
          paramObject = (boolean[])paramObject;
          if (paramObject == null)
          {
            c *= b;
            return this;
          }
          k = paramObject.length;
          i = 0;
          label560:
          if (i < k)
          {
            int i4 = paramObject[i];
            m = c;
            n = b;
            if (i4 == 0) {
              break label610;
            }
          }
          label610:
          for (j = 0;; j = 1)
          {
            c = (j + m * n);
            i += 1;
            break label560;
            break;
          }
        }
        paramObject = (Object[])paramObject;
        if (paramObject == null)
        {
          c *= b;
          return this;
        }
        j = paramObject.length;
        i = i3;
        while (i < j)
        {
          b(paramObject[i]);
          i += 1;
        }
      }
    }
    c = (c * b + paramObject.hashCode());
    return this;
  }
  
  public int hashCode()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */