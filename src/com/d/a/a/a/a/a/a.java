package com.d.a.a.a.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class a
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream r = new OutputStream()
  {
    public final void write(int paramAnonymousInt) {}
  };
  final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File c;
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private int i;
  private final int j;
  private long k = 0L;
  private int l = 0;
  private Writer m;
  private final LinkedHashMap<String, b> n = new LinkedHashMap(0, 0.75F, true);
  private int o;
  private long p = 0L;
  private final Callable<Void> q = new Callable()
  {
    private Void a()
    {
      synchronized (a.this)
      {
        if (a.a(a.this) == null) {
          return null;
        }
        a.b(a.this);
        a.c(a.this);
        if (a.d(a.this))
        {
          a.e(a.this);
          a.f(a.this);
        }
        return null;
      }
    }
  };
  
  private a(File paramFile, int paramInt1, int paramInt2, long paramLong, int paramInt3)
  {
    c = paramFile;
    g = 1;
    d = new File(paramFile, "journal");
    e = new File(paramFile, "journal.tmp");
    f = new File(paramFile, "journal.bkp");
    j = 1;
    h = paramLong;
    i = paramInt3;
  }
  
  public static a a(File paramFile, long paramLong, int paramInt)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxFileCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label149;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new a(paramFile, 1, 1, paramLong, paramInt);
      if (!d.exists()) {
        break label215;
      }
      try
      {
        ((a)localObject).b();
        ((a)localObject).c();
        m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), d.a));
        return (a)localObject;
      }
      catch (IOException localIOException)
      {
        label149:
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((a)localObject).close();
        d.a(c);
      }
      a((File)localObject, localFile, false);
    }
    label215:
    paramFile.mkdirs();
    paramFile = new a(paramFile, 1, 1, paramLong, paramInt);
    paramFile.d();
    return paramFile;
  }
  
  private void a(a parama, boolean paramBoolean)
  {
    int i3 = 0;
    b localb;
    try
    {
      localb = a.a(parama);
      if (b.b(localb) != parama) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!b.e(localb))
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= j) {
            break;
          }
          if (a.b(parama)[i1] == 0)
          {
            parama.c();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!localb.b(i1).exists())
          {
            parama.c();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < j)
      {
        parama = localb.b(i2);
        if (paramBoolean)
        {
          if (parama.exists())
          {
            File localFile = localb.a(i2);
            parama.renameTo(localFile);
            l1 = b.c(localb)[i2];
            long l2 = localFile.length();
            b.c(localb)[i2] = l2;
            k = (k - l1 + l2);
            l += 1;
          }
        }
        else {
          a(parama);
        }
      }
      else
      {
        o += 1;
        b.a(localb, null);
        if ((b.e(localb) | paramBoolean))
        {
          b.a(localb);
          m.write("CLEAN " + b.d(localb) + localb.a() + '\n');
          if (paramBoolean)
          {
            l1 = p;
            p = (1L + l1);
            b.a(localb, l1);
          }
        }
        for (;;)
        {
          m.flush();
          if ((k <= h) && (l <= i) && (!e())) {
            break;
          }
          b.submit(q);
          break;
          n.remove(b.d(localb));
          m.write("REMOVE " + b.d(localb) + '\n');
        }
      }
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void b()
  {
    c localc = new c(new FileInputStream(d), d.a);
    int i1;
    label536:
    try
    {
      String str1 = localc.a();
      localObject3 = localc.a();
      localObject4 = localc.a();
      str2 = localc.a();
      String str3 = localc.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(g).equals(localObject4)) || (!Integer.toString(j).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      Object localObject3;
      Object localObject4;
      String str2;
      d.a(localc);
      throw ((Throwable)localObject1);
      i1 = 0;
      int i2;
      try
      {
        str2 = localc.a();
        i2 = str2.indexOf(' ');
        if (i2 == -1) {
          throw new IOException("unexpected journal line: " + str2);
        }
      }
      catch (EOFException localEOFException)
      {
        o = (i1 - n.size());
        d.a(localc);
        return;
      }
      int i3 = i2 + 1;
      int i4 = str2.indexOf(' ', i3);
      Object localObject2;
      if (i4 == -1)
      {
        localObject2 = str2.substring(i3);
        if ((i2 == 6) && (str2.startsWith("REMOVE")))
        {
          n.remove(localObject2);
          break label536;
        }
      }
      else
      {
        localObject2 = str2.substring(i3, i4);
      }
      for (;;)
      {
        localObject4 = (b)n.get(localObject2);
        localObject3 = localObject4;
        if (localObject4 == null)
        {
          localObject3 = new b((String)localObject2, (byte)0);
          n.put(localObject2, localObject3);
        }
        if ((i4 != -1) && (i2 == 5) && (str2.startsWith("CLEAN")))
        {
          localObject2 = str2.substring(i4 + 1).split(" ");
          b.a((b)localObject3);
          b.a((b)localObject3, null);
          b.a((b)localObject3, (String[])localObject2);
          break;
        }
        if ((i4 == -1) && (i2 == 5) && (str2.startsWith("DIRTY")))
        {
          b.a((b)localObject3, new a((b)localObject3, (byte)0));
          break;
        }
        if ((i4 == -1) && (i2 == 4) && (str2.startsWith("READ"))) {
          break;
        }
        throw new IOException("unexpected journal line: " + str2);
      }
    }
  }
  
  private void c()
  {
    a(e);
    Iterator localIterator = n.values().iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      int i1;
      if (b.b(localb) == null)
      {
        i1 = 0;
        while (i1 < j)
        {
          k += b.c(localb)[i1];
          l += 1;
          i1 += 1;
        }
      }
      else
      {
        b.a(localb, null);
        i1 = 0;
        while (i1 < j)
        {
          a(localb.a(i1));
          a(localb.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private a d(String paramString)
  {
    for (;;)
    {
      a locala;
      try
      {
        f();
        e(paramString);
        b localb = (b)n.get(paramString);
        if (-1L != -1L) {
          if (localb != null)
          {
            long l1 = b.f(localb);
            if (l1 == -1L) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localb == null)
        {
          localb = new b(paramString, (byte)0);
          n.put(paramString, localb);
          locala = new a(localb, (byte)0);
          b.a(localb, locala);
          m.write("DIRTY " + paramString + '\n');
          m.flush();
          paramString = locala;
          continue;
        }
        locala = b.b(localb);
      }
      finally {}
      if (locala != null) {
        paramString = null;
      }
    }
  }
  
  private void d()
  {
    for (;;)
    {
      try
      {
        if (m != null) {
          m.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(e), d.a));
        b localb;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(j));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = n.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localb = (b)localIterator.next();
          if (b.b(localb) != null)
          {
            localBufferedWriter.write("DIRTY " + b.d(localb) + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + b.d(localb) + localb.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (d.exists()) {
      a(d, f, true);
    }
    a(e, d, false);
    f.delete();
    m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), d.a));
  }
  
  private static void e(String paramString)
  {
    if (!a.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
    }
  }
  
  private boolean e()
  {
    return (o >= 2000) && (o >= n.size());
  }
  
  private void f()
  {
    if (m == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void g()
  {
    while (k > h) {
      c((String)((Map.Entry)n.entrySet().iterator().next()).getKey());
    }
  }
  
  private void h()
  {
    while (l > i) {
      c((String)((Map.Entry)n.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public final c a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 432	com/d/a/a/a/a/a/a:f	()V
    //   9: aload_1
    //   10: invokestatic 434	com/d/a/a/a/a/a/a:e	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 79	com/d/a/a/a/a/a/a:n	Ljava/util/LinkedHashMap;
    //   17: aload_1
    //   18: invokevirtual 379	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   21: checkcast 17	com/d/a/a/a/a/a/a$b
    //   24: astore 6
    //   26: aload 6
    //   28: ifnonnull +10 -> 38
    //   31: aload 4
    //   33: astore_3
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_3
    //   37: areturn
    //   38: aload 4
    //   40: astore_3
    //   41: aload 6
    //   43: invokestatic 241	com/d/a/a/a/a/a/a$b:e	(Lcom/d/a/a/a/a/a/a$b;)Z
    //   46: ifeq -12 -> 34
    //   49: aload_0
    //   50: getfield 127	com/d/a/a/a/a/a/a:j	I
    //   53: anewarray 110	java/io/File
    //   56: astore_3
    //   57: aload_0
    //   58: getfield 127	com/d/a/a/a/a/a/a:j	I
    //   61: anewarray 482	java/io/InputStream
    //   64: astore 5
    //   66: iconst_0
    //   67: istore_2
    //   68: iload_2
    //   69: aload_0
    //   70: getfield 127	com/d/a/a/a/a/a/a:j	I
    //   73: if_icmpge +74 -> 147
    //   76: aload 6
    //   78: iload_2
    //   79: invokevirtual 256	com/d/a/a/a/a/a/a$b:a	(I)Ljava/io/File;
    //   82: astore 7
    //   84: aload_3
    //   85: iload_2
    //   86: aload 7
    //   88: aastore
    //   89: aload 5
    //   91: iload_2
    //   92: new 318	java/io/FileInputStream
    //   95: dup
    //   96: aload 7
    //   98: invokespecial 320	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   101: aastore
    //   102: iload_2
    //   103: iconst_1
    //   104: iadd
    //   105: istore_2
    //   106: goto -38 -> 68
    //   109: astore_1
    //   110: iconst_0
    //   111: istore_2
    //   112: aload 4
    //   114: astore_3
    //   115: iload_2
    //   116: aload_0
    //   117: getfield 127	com/d/a/a/a/a/a/a:j	I
    //   120: if_icmpge -86 -> 34
    //   123: aload 4
    //   125: astore_3
    //   126: aload 5
    //   128: iload_2
    //   129: aaload
    //   130: ifnull -96 -> 34
    //   133: aload 5
    //   135: iload_2
    //   136: aaload
    //   137: invokestatic 351	com/d/a/a/a/a/a/d:a	(Ljava/io/Closeable;)V
    //   140: iload_2
    //   141: iconst_1
    //   142: iadd
    //   143: istore_2
    //   144: goto -32 -> 112
    //   147: aload_0
    //   148: aload_0
    //   149: getfield 270	com/d/a/a/a/a/a/a:o	I
    //   152: iconst_1
    //   153: iadd
    //   154: putfield 270	com/d/a/a/a/a/a/a:o	I
    //   157: aload_0
    //   158: getfield 178	com/d/a/a/a/a/a/a:m	Ljava/io/Writer;
    //   161: new 189	java/lang/StringBuilder
    //   164: dup
    //   165: ldc_w 484
    //   168: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   171: aload_1
    //   172: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: bipush 10
    //   177: invokevirtual 285	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   180: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokevirtual 487	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   186: pop
    //   187: aload_0
    //   188: invokespecial 298	com/d/a/a/a/a/a/a:e	()Z
    //   191: ifeq +15 -> 206
    //   194: aload_0
    //   195: getfield 99	com/d/a/a/a/a/a/a:b	Ljava/util/concurrent/ThreadPoolExecutor;
    //   198: aload_0
    //   199: getfield 104	com/d/a/a/a/a/a/a:q	Ljava/util/concurrent/Callable;
    //   202: invokevirtual 302	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   205: pop
    //   206: new 20	com/d/a/a/a/a/a/a$c
    //   209: dup
    //   210: aload_0
    //   211: aload_1
    //   212: aload 6
    //   214: invokestatic 439	com/d/a/a/a/a/a/a$b:f	(Lcom/d/a/a/a/a/a/a$b;)J
    //   217: aload_3
    //   218: aload 5
    //   220: aload 6
    //   222: invokestatic 263	com/d/a/a/a/a/a/a$b:c	(Lcom/d/a/a/a/a/a/a$b;)[J
    //   225: iconst_0
    //   226: invokespecial 490	com/d/a/a/a/a/a/a$c:<init>	(Lcom/d/a/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JB)V
    //   229: astore_3
    //   230: goto -196 -> 34
    //   233: astore_1
    //   234: aload_0
    //   235: monitorexit
    //   236: aload_1
    //   237: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	238	0	this	a
    //   0	238	1	paramString	String
    //   67	77	2	i1	int
    //   33	197	3	localObject1	Object
    //   1	123	4	localObject2	Object
    //   64	155	5	arrayOfInputStream	InputStream[]
    //   24	197	6	localb	b
    //   82	15	7	localFile	File
    // Exception table:
    //   from	to	target	type
    //   68	84	109	java/io/FileNotFoundException
    //   89	102	109	java/io/FileNotFoundException
    //   5	26	233	finally
    //   41	66	233	finally
    //   68	84	233	finally
    //   89	102	233	finally
    //   115	123	233	finally
    //   133	140	233	finally
    //   147	206	233	finally
    //   206	230	233	finally
  }
  
  public final a b(String paramString)
  {
    return d(paramString);
  }
  
  public final boolean c(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        f();
        e(paramString);
        b localb = (b)n.get(paramString);
        Object localObject;
        if (localb != null)
        {
          localObject = b.b(localb);
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          k -= b.c(localb)[i1];
          l -= 1;
          b.c(localb)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < j)
        {
          localObject = localb.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      o += 1;
      m.append("REMOVE " + paramString + '\n');
      n.remove(paramString);
      if (e()) {
        b.submit(q);
      }
      boolean bool = true;
    }
  }
  
  public final void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = m;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(n.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          b localb = (b)((Iterator)localObject1).next();
          if (b.b(localb) == null) {
            continue;
          }
          b.b(localb).c();
          continue;
        }
        g();
      }
      finally {}
      h();
      m.close();
      m = null;
    }
  }
  
  public final class a
  {
    private final a.b b;
    private final boolean[] c;
    private boolean d;
    private boolean e;
    
    private a(a.b paramb)
    {
      b = paramb;
      if (a.b.e(paramb)) {}
      for (this$1 = null;; this$1 = new boolean[a.g(a.this)])
      {
        c = a.this;
        return;
      }
    }
    
    public final OutputStream a()
    {
      synchronized (a.this)
      {
        if (a.b.b(b) != this) {
          throw new IllegalStateException();
        }
      }
      if (!a.b.e(b)) {
        c[0] = true;
      }
      File localFile = b.b(0);
      try
      {
        Object localObject2 = new FileOutputStream(localFile);
        localObject2 = new a((OutputStream)localObject2, (byte)0);
        return (OutputStream)localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        for (;;)
        {
          a.h(a.this).mkdirs();
          try
          {
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            OutputStream localOutputStream = a.a();
            return localOutputStream;
          }
        }
      }
    }
    
    public final void b()
    {
      if (d)
      {
        a.a(a.this, this, false);
        c(a.b.d(b));
      }
      for (;;)
      {
        e = true;
        return;
        a.a(a.this, this, true);
      }
    }
    
    public final void c()
    {
      a.a(a.this, this, false);
    }
    
    private final class a
      extends FilterOutputStream
    {
      private a(OutputStream paramOutputStream)
      {
        super();
      }
      
      public final void close()
      {
        try
        {
          out.close();
          return;
        }
        catch (IOException localIOException)
        {
          a.a.c(a.a.this);
        }
      }
      
      public final void flush()
      {
        try
        {
          out.flush();
          return;
        }
        catch (IOException localIOException)
        {
          a.a.c(a.a.this);
        }
      }
      
      public final void write(int paramInt)
      {
        try
        {
          out.write(paramInt);
          return;
        }
        catch (IOException localIOException)
        {
          a.a.c(a.a.this);
        }
      }
      
      public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          out.write(paramArrayOfByte, paramInt1, paramInt2);
          return;
        }
        catch (IOException paramArrayOfByte)
        {
          a.a.c(a.a.this);
        }
      }
    }
  }
  
  private final class b
  {
    private final String b;
    private final long[] c;
    private boolean d;
    private a.a e;
    private long f;
    
    private b(String paramString)
    {
      b = paramString;
      c = new long[a.g(a.this)];
    }
    
    private static IOException a(String[] paramArrayOfString)
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    public final File a(int paramInt)
    {
      return new File(a.h(a.this), b + "." + paramInt);
    }
    
    public final String a()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = c;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        localStringBuilder.append(' ').append(l);
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    public final File b(int paramInt)
    {
      return new File(a.h(a.this), b + "." + paramInt + ".tmp");
    }
  }
  
  public final class c
    implements Closeable
  {
    private final String b;
    private final long c;
    private File[] d;
    private final InputStream[] e;
    private final long[] f;
    
    private c(String paramString, long paramLong, File[] paramArrayOfFile, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
    {
      b = paramString;
      c = paramLong;
      d = paramArrayOfFile;
      e = paramArrayOfInputStream;
      f = paramArrayOfLong;
    }
    
    public final File a()
    {
      return d[0];
    }
    
    public final void close()
    {
      InputStream[] arrayOfInputStream = e;
      int j = arrayOfInputStream.length;
      int i = 0;
      while (i < j)
      {
        d.a(arrayOfInputStream[i]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */