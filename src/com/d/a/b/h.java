package com.d.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import com.d.a.b.a.d;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

final class h
  implements com.d.a.c.b.a, Runnable
{
  final String a;
  final com.d.a.b.e.a b;
  final c c;
  final com.d.a.b.f.a d;
  final com.d.a.b.f.b e;
  private final f f;
  private final g g;
  private final Handler h;
  private final e i;
  private final com.d.a.b.d.b j;
  private final com.d.a.b.d.b k;
  private final com.d.a.b.d.b l;
  private final com.d.a.b.b.b m;
  private final String n;
  private final com.d.a.b.a.e o;
  private final boolean p;
  private com.d.a.b.a.f q = com.d.a.b.a.f.a;
  
  public h(f paramf, g paramg, Handler paramHandler)
  {
    f = paramf;
    g = paramg;
    h = paramHandler;
    i = a;
    j = i.p;
    k = i.s;
    l = i.t;
    m = i.q;
    a = a;
    n = b;
    b = c;
    o = d;
    c = e;
    d = f;
    e = g;
    p = c.s();
  }
  
  private Bitmap a(String paramString)
  {
    com.d.a.b.a.h localh = b.c();
    paramString = new com.d.a.b.b.c(n, paramString, a, o, localh, e(), c);
    return m.a(paramString);
  }
  
  private void a(final com.d.a.b.a.b.a parama, final Throwable paramThrowable)
  {
    if ((p) || (k()) || (g())) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        if (c.c()) {
          b.a(c.c(aa));
        }
        com.d.a.b.f.a locala = d;
        b.d();
        new com.d.a.b.a.b(parama, paramThrowable);
        locala.a();
      }
    }, false, h, f);
  }
  
  static void a(Runnable paramRunnable, boolean paramBoolean, Handler paramHandler, f paramf)
  {
    if (paramBoolean)
    {
      paramRunnable.run();
      return;
    }
    if (paramHandler == null)
    {
      paramf.a(paramRunnable);
      return;
    }
    paramHandler.post(paramRunnable);
  }
  
  private boolean a()
  {
    AtomicBoolean localAtomicBoolean = f.a();
    if (localAtomicBoolean.get()) {}
    synchronized (f.b())
    {
      if (localAtomicBoolean.get()) {
        com.d.a.c.c.a("ImageLoader is paused. Waiting...  [%s]", new Object[] { n });
      }
      try
      {
        f.b().wait();
        com.d.a.c.c.a(".. Resume loading [%s]", new Object[] { n });
        return g();
      }
      catch (InterruptedException localInterruptedException)
      {
        com.d.a.c.c.d("Task was interrupted [%s]", new Object[] { n });
        return true;
      }
    }
  }
  
  private boolean b()
  {
    if (c.f())
    {
      com.d.a.c.c.a("Delay %d ms before loading...  [%s]", new Object[] { Integer.valueOf(c.l()), n });
      try
      {
        Thread.sleep(c.l());
        return g();
      }
      catch (InterruptedException localInterruptedException)
      {
        com.d.a.c.c.d("Task was interrupted [%s]", new Object[] { n });
        return true;
      }
    }
    return false;
  }
  
  private Bitmap c()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = i.o.a(a);
        Object localObject3;
        Object localObject4;
        Object localObject5;
        Object localObject6;
        if ((localObject1 != null) && (((File)localObject1).exists()))
        {
          com.d.a.c.c.a("Load image from disk cache [%s]", new Object[] { n });
          q = com.d.a.b.a.f.b;
          f();
          localObject1 = a(com.d.a.b.d.b.a.c.b(((File)localObject1).getAbsolutePath()));
          if (localObject1 != null)
          {
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
          }
        }
        Object localObject7;
        String str;
        File localFile;
        Object localObject2 = null;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        try
        {
          if (((Bitmap)localObject1).getWidth() > 0)
          {
            localObject7 = localObject1;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            if (((Bitmap)localObject1).getHeight() > 0) {}
          }
          else
          {
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            com.d.a.c.c.a("Load image from network [%s]", new Object[] { n });
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            q = com.d.a.b.a.f.a;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            str = a;
            localObject7 = str;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            if (c.i())
            {
              localObject7 = str;
              localObject3 = localObject1;
              localObject4 = localObject1;
              localObject5 = localObject1;
              localObject6 = localObject1;
              if (d())
              {
                localObject3 = localObject1;
                localObject4 = localObject1;
                localObject5 = localObject1;
                localObject6 = localObject1;
                localFile = i.o.a(a);
                localObject7 = str;
                if (localFile != null)
                {
                  localObject3 = localObject1;
                  localObject4 = localObject1;
                  localObject5 = localObject1;
                  localObject6 = localObject1;
                  localObject7 = com.d.a.b.d.b.a.c.b(localFile.getAbsolutePath());
                }
              }
            }
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            f();
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            localObject1 = a((String)localObject7);
            if (localObject1 != null)
            {
              localObject3 = localObject1;
              localObject4 = localObject1;
              localObject5 = localObject1;
              localObject6 = localObject1;
              if (((Bitmap)localObject1).getWidth() > 0)
              {
                localObject7 = localObject1;
                localObject3 = localObject1;
                localObject4 = localObject1;
                localObject5 = localObject1;
                localObject6 = localObject1;
                if (((Bitmap)localObject1).getHeight() > 0) {
                  continue;
                }
              }
            }
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            a(com.d.a.b.a.b.a.b, null);
            localObject7 = localObject1;
          }
          return (Bitmap)localObject7;
        }
        catch (Throwable localThrowable2)
        {
          continue;
        }
        catch (OutOfMemoryError localOutOfMemoryError2)
        {
          continue;
        }
        catch (IOException localIOException2)
        {
          continue;
        }
        catch (IllegalStateException localIllegalStateException2)
        {
          continue;
        }
        localIllegalStateException1 = localIllegalStateException1;
        localObject6 = null;
        a(com.d.a.b.a.b.a.c, null);
        return (Bitmap)localObject6;
      }
      catch (a locala)
      {
        throw locala;
      }
      catch (IOException localIOException1)
      {
        localObject5 = null;
        com.d.a.c.c.a(localIOException1);
        a(com.d.a.b.a.b.a.a, localIOException1);
        return (Bitmap)localObject5;
      }
      catch (OutOfMemoryError localOutOfMemoryError1)
      {
        localObject4 = null;
        com.d.a.c.c.a(localOutOfMemoryError1);
        a(com.d.a.b.a.b.a.d, localOutOfMemoryError1);
        return (Bitmap)localObject4;
      }
      catch (Throwable localThrowable1)
      {
        localObject3 = null;
        com.d.a.c.c.a(localThrowable1);
        a(com.d.a.b.a.b.a.e, localThrowable1);
        return (Bitmap)localObject3;
      }
    }
  }
  
  private boolean d()
  {
    com.d.a.c.c.a("Cache image on disk [%s]", new Object[] { n });
    try
    {
      Object localObject1 = e().a(a, c.n());
      boolean bool = i.o.a(a, (InputStream)localObject1, this);
      if (bool)
      {
        int i1 = i.d;
        int i2 = i.e;
        if ((i1 > 0) || (i2 > 0))
        {
          com.d.a.c.c.a("Resize image in disk cache [%s]", new Object[] { n });
          localObject1 = i.o.a(a);
          if ((localObject1 != null) && (((File)localObject1).exists()))
          {
            Object localObject2 = new com.d.a.b.a.e(i1, i2);
            c localc = new c.a().a(c).a(d.d).d();
            localObject1 = new com.d.a.b.b.c(n, com.d.a.b.d.b.a.c.b(((File)localObject1).getAbsolutePath()), a, (com.d.a.b.a.e)localObject2, com.d.a.b.a.h.a, e(), localc);
            localObject2 = m.a((com.d.a.b.b.c)localObject1);
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              localObject1 = localObject2;
              if (i.f != null)
              {
                com.d.a.c.c.a("Process image before cache on disk [%s]", new Object[] { n });
                localObject2 = i.f.a();
                localObject1 = localObject2;
                if (localObject2 == null)
                {
                  com.d.a.c.c.d("Bitmap processor for disk cache returned null [%s]", new Object[] { n });
                  localObject1 = localObject2;
                }
              }
            }
            if (localObject1 != null)
            {
              i.o.a(a, (Bitmap)localObject1);
              ((Bitmap)localObject1).recycle();
            }
          }
        }
      }
      return bool;
    }
    catch (IOException localIOException)
    {
      com.d.a.c.c.a(localIOException);
    }
    return false;
  }
  
  private com.d.a.b.d.b e()
  {
    if (f.c()) {
      return k;
    }
    if (f.d()) {
      return l;
    }
    return j;
  }
  
  private void f()
  {
    if (h()) {
      throw new a();
    }
    if (i()) {
      throw new a();
    }
  }
  
  private boolean g()
  {
    return (h()) || (i());
  }
  
  private boolean h()
  {
    if (b.e())
    {
      com.d.a.c.c.a("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { n });
      return true;
    }
    return false;
  }
  
  private boolean i()
  {
    String str = f.a(b);
    if (!n.equals(str)) {}
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      com.d.a.c.c.a("ImageAware is reused for another image. Task is cancelled. [%s]", new Object[] { n });
      return true;
    }
    return false;
  }
  
  private void j()
  {
    if (k()) {
      throw new a();
    }
  }
  
  private boolean k()
  {
    if (Thread.interrupted())
    {
      com.d.a.c.c.a("Task was interrupted [%s]", new Object[] { n });
      return true;
    }
    return false;
  }
  
  public final boolean a(final int paramInt1, final int paramInt2)
  {
    boolean bool = false;
    if (!p) {
      if ((!k()) && (!g())) {
        break label33;
      }
    }
    for (paramInt1 = 0;; paramInt1 = 1)
    {
      if (paramInt1 != 0) {
        bool = true;
      }
      return bool;
      label33:
      if (e != null) {
        a(new Runnable()
        {
          public final void run()
          {
            b.d();
          }
        }, false, h, f);
      }
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 388	com/d/a/b/h:a	()Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokespecial 390	com/d/a/b/h:b	()Z
    //   12: ifne -5 -> 7
    //   15: aload_0
    //   16: getfield 62	com/d/a/b/h:g	Lcom/d/a/b/g;
    //   19: getfield 393	com/d/a/b/g:h	Ljava/util/concurrent/locks/ReentrantLock;
    //   22: astore 4
    //   24: ldc_w 395
    //   27: iconst_1
    //   28: anewarray 4	java/lang/Object
    //   31: dup
    //   32: iconst_0
    //   33: aload_0
    //   34: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   37: aastore
    //   38: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload 4
    //   43: invokevirtual 400	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   46: ifeq +20 -> 66
    //   49: ldc_w 402
    //   52: iconst_1
    //   53: anewarray 4	java/lang/Object
    //   56: dup
    //   57: iconst_0
    //   58: aload_0
    //   59: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   62: aastore
    //   63: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   66: aload 4
    //   68: invokevirtual 405	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   71: aload_0
    //   72: invokespecial 246	com/d/a/b/h:f	()V
    //   75: aload_0
    //   76: getfield 70	com/d/a/b/h:i	Lcom/d/a/b/e;
    //   79: getfield 408	com/d/a/b/e:n	Lcom/d/a/a/b/a;
    //   82: aload_0
    //   83: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   86: invokeinterface 413 2 0
    //   91: checkcast 262	android/graphics/Bitmap
    //   94: astore_3
    //   95: aload_3
    //   96: ifnull +10 -> 106
    //   99: aload_3
    //   100: invokevirtual 416	android/graphics/Bitmap:isRecycled	()Z
    //   103: ifeq +268 -> 371
    //   106: aload_0
    //   107: invokespecial 418	com/d/a/b/h:c	()Landroid/graphics/Bitmap;
    //   110: astore_2
    //   111: aload_2
    //   112: ifnonnull +9 -> 121
    //   115: aload 4
    //   117: invokevirtual 421	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   120: return
    //   121: aload_0
    //   122: invokespecial 246	com/d/a/b/h:f	()V
    //   125: aload_0
    //   126: invokespecial 423	com/d/a/b/h:j	()V
    //   129: aload_0
    //   130: getfield 111	com/d/a/b/h:c	Lcom/d/a/b/c;
    //   133: invokevirtual 424	com/d/a/b/c:d	()Z
    //   136: ifeq +58 -> 194
    //   139: ldc_w 426
    //   142: iconst_1
    //   143: anewarray 4	java/lang/Object
    //   146: dup
    //   147: iconst_0
    //   148: aload_0
    //   149: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   152: aastore
    //   153: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   156: aload_0
    //   157: getfield 111	com/d/a/b/h:c	Lcom/d/a/b/c;
    //   160: invokevirtual 429	com/d/a/b/c:o	()Lcom/d/a/b/g/a;
    //   163: invokeinterface 347 1 0
    //   168: astore_3
    //   169: aload_3
    //   170: astore_2
    //   171: aload_3
    //   172: ifnonnull +22 -> 194
    //   175: ldc_w 431
    //   178: iconst_1
    //   179: anewarray 4	java/lang/Object
    //   182: dup
    //   183: iconst_0
    //   184: aload_0
    //   185: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   188: aastore
    //   189: invokestatic 199	com/d/a/c/c:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   192: aload_3
    //   193: astore_2
    //   194: aload_2
    //   195: astore_3
    //   196: aload_2
    //   197: ifnull +52 -> 249
    //   200: aload_2
    //   201: astore_3
    //   202: aload_0
    //   203: getfield 111	com/d/a/b/h:c	Lcom/d/a/b/c;
    //   206: invokevirtual 432	com/d/a/b/c:h	()Z
    //   209: ifeq +40 -> 249
    //   212: ldc_w 434
    //   215: iconst_1
    //   216: anewarray 4	java/lang/Object
    //   219: dup
    //   220: iconst_0
    //   221: aload_0
    //   222: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   225: aastore
    //   226: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   229: aload_0
    //   230: getfield 70	com/d/a/b/h:i	Lcom/d/a/b/e;
    //   233: getfield 408	com/d/a/b/e:n	Lcom/d/a/a/b/a;
    //   236: aload_0
    //   237: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   240: aload_2
    //   241: invokeinterface 437 3 0
    //   246: pop
    //   247: aload_2
    //   248: astore_3
    //   249: aload_3
    //   250: astore_2
    //   251: aload_3
    //   252: ifnull +70 -> 322
    //   255: aload_3
    //   256: astore_2
    //   257: aload_0
    //   258: getfield 111	com/d/a/b/h:c	Lcom/d/a/b/c;
    //   261: invokevirtual 438	com/d/a/b/c:e	()Z
    //   264: ifeq +58 -> 322
    //   267: ldc_w 440
    //   270: iconst_1
    //   271: anewarray 4	java/lang/Object
    //   274: dup
    //   275: iconst_0
    //   276: aload_0
    //   277: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   280: aastore
    //   281: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   284: aload_0
    //   285: getfield 111	com/d/a/b/h:c	Lcom/d/a/b/c;
    //   288: invokevirtual 442	com/d/a/b/c:p	()Lcom/d/a/b/g/a;
    //   291: invokeinterface 347 1 0
    //   296: astore_3
    //   297: aload_3
    //   298: astore_2
    //   299: aload_3
    //   300: ifnonnull +22 -> 322
    //   303: ldc_w 444
    //   306: iconst_1
    //   307: anewarray 4	java/lang/Object
    //   310: dup
    //   311: iconst_0
    //   312: aload_0
    //   313: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   316: aastore
    //   317: invokestatic 199	com/d/a/c/c:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   320: aload_3
    //   321: astore_2
    //   322: aload_0
    //   323: invokespecial 246	com/d/a/b/h:f	()V
    //   326: aload_0
    //   327: invokespecial 423	com/d/a/b/h:j	()V
    //   330: aload 4
    //   332: invokevirtual 421	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   335: new 446	com/d/a/b/b
    //   338: dup
    //   339: aload_2
    //   340: aload_0
    //   341: getfield 62	com/d/a/b/h:g	Lcom/d/a/b/g;
    //   344: aload_0
    //   345: getfield 60	com/d/a/b/h:f	Lcom/d/a/b/f;
    //   348: aload_0
    //   349: getfield 58	com/d/a/b/h:q	Lcom/d/a/b/a/f;
    //   352: invokespecial 449	com/d/a/b/b:<init>	(Landroid/graphics/Bitmap;Lcom/d/a/b/g;Lcom/d/a/b/f;Lcom/d/a/b/a/f;)V
    //   355: aload_0
    //   356: getfield 126	com/d/a/b/h:p	Z
    //   359: aload_0
    //   360: getfield 64	com/d/a/b/h:h	Landroid/os/Handler;
    //   363: aload_0
    //   364: getfield 60	com/d/a/b/h:f	Lcom/d/a/b/f;
    //   367: invokestatic 158	com/d/a/b/h:a	(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/f;)V
    //   370: return
    //   371: aload_0
    //   372: getstatic 451	com/d/a/b/a/f:c	Lcom/d/a/b/a/f;
    //   375: putfield 58	com/d/a/b/h:q	Lcom/d/a/b/a/f;
    //   378: ldc_w 453
    //   381: iconst_1
    //   382: anewarray 4	java/lang/Object
    //   385: dup
    //   386: iconst_0
    //   387: aload_0
    //   388: getfield 99	com/d/a/b/h:n	Ljava/lang/String;
    //   391: aastore
    //   392: invokestatic 190	com/d/a/c/c:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   395: goto -146 -> 249
    //   398: astore_2
    //   399: aload_0
    //   400: getfield 126	com/d/a/b/h:p	Z
    //   403: ifne +12 -> 415
    //   406: aload_0
    //   407: invokespecial 150	com/d/a/b/h:k	()Z
    //   410: istore_1
    //   411: iload_1
    //   412: ifeq +9 -> 421
    //   415: aload 4
    //   417: invokevirtual 421	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   420: return
    //   421: new 14	com/d/a/b/h$3
    //   424: dup
    //   425: aload_0
    //   426: invokespecial 454	com/d/a/b/h$3:<init>	(Lcom/d/a/b/h;)V
    //   429: iconst_0
    //   430: aload_0
    //   431: getfield 64	com/d/a/b/h:h	Landroid/os/Handler;
    //   434: aload_0
    //   435: getfield 60	com/d/a/b/h:f	Lcom/d/a/b/f;
    //   438: invokestatic 158	com/d/a/b/h:a	(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/f;)V
    //   441: goto -26 -> 415
    //   444: astore_2
    //   445: aload 4
    //   447: invokevirtual 421	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   450: aload_2
    //   451: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	452	0	this	h
    //   410	2	1	bool	boolean
    //   110	230	2	localObject1	Object
    //   398	1	2	locala	a
    //   444	7	2	localObject2	Object
    //   94	227	3	localObject3	Object
    //   22	424	4	localReentrantLock	java.util.concurrent.locks.ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   71	95	398	com/d/a/b/h$a
    //   99	106	398	com/d/a/b/h$a
    //   106	111	398	com/d/a/b/h$a
    //   121	129	398	com/d/a/b/h$a
    //   129	169	398	com/d/a/b/h$a
    //   175	192	398	com/d/a/b/h$a
    //   202	247	398	com/d/a/b/h$a
    //   257	297	398	com/d/a/b/h$a
    //   303	320	398	com/d/a/b/h$a
    //   322	330	398	com/d/a/b/h$a
    //   371	395	398	com/d/a/b/h$a
    //   71	95	444	finally
    //   99	106	444	finally
    //   106	111	444	finally
    //   121	129	444	finally
    //   129	169	444	finally
    //   175	192	444	finally
    //   202	247	444	finally
    //   257	297	444	finally
    //   303	320	444	finally
    //   322	330	444	finally
    //   371	395	444	finally
    //   399	411	444	finally
    //   421	441	444	finally
  }
  
  final class a
    extends Exception
  {
    a() {}
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */