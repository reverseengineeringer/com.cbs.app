package com.d.a.b.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.d.a.b.a.d;
import com.d.a.b.a.e;
import com.d.a.b.a.h;
import com.d.a.b.d.b.a;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public final class a
  implements b
{
  protected final boolean a;
  
  public a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private static a a(String paramString)
  {
    int j = 0;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool1 = true;
    try
    {
      int k = new ExifInterface(b.a.c.c(paramString)).getAttributeInt("Orientation", 1);
      i = j;
      switch (k)
      {
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        int i;
        com.d.a.c.c.c("Can't read EXIF tags from file [%s]", new Object[] { paramString });
      }
    }
    bool1 = false;
    i = j;
    for (;;)
    {
      return new a(i, bool1);
      bool2 = false;
      i = 90;
      bool1 = bool2;
      continue;
      bool3 = false;
      i = 180;
      bool1 = bool3;
      continue;
      bool4 = false;
      i = 270;
      bool1 = bool4;
    }
  }
  
  private static InputStream a(InputStream paramInputStream, c paramc)
  {
    try
    {
      paramInputStream.reset();
      return paramInputStream;
    }
    catch (IOException localIOException)
    {
      com.d.a.c.b.a(paramInputStream);
    }
    return b(paramc);
  }
  
  private static InputStream b(c paramc)
  {
    return paramc.f().a(paramc.b(), paramc.g());
  }
  
  public final Bitmap a(c paramc)
  {
    Object localObject3 = b(paramc);
    Object localObject1 = localObject3;
    Object localObject4;
    Object localObject5;
    for (;;)
    {
      try
      {
        localObject4 = new BitmapFactory.Options();
        localObject1 = localObject3;
        inJustDecodeBounds = true;
        localObject1 = localObject3;
        BitmapFactory.decodeStream((InputStream)localObject3, null, (BitmapFactory.Options)localObject4);
        localObject1 = localObject3;
        localObject2 = paramc.b();
        localObject1 = localObject3;
        if (paramc.h())
        {
          localObject1 = localObject3;
          if ("image/jpeg".equalsIgnoreCase(outMimeType))
          {
            localObject1 = localObject3;
            if (b.a.a((String)localObject2) == b.a.c)
            {
              i = 1;
              if (i == 0) {
                continue;
              }
              localObject1 = localObject3;
              localObject2 = a((String)localObject2);
              localObject1 = localObject3;
              localObject4 = new b(new e(outWidth, outHeight, a), (a)localObject2);
              localObject1 = localObject3;
              localObject2 = a((InputStream)localObject3, paramc);
              localObject1 = localObject2;
              localObject3 = a;
              localObject1 = localObject2;
              localObject5 = paramc.d();
              localObject1 = localObject2;
              if (localObject5 != d.a) {
                break label345;
              }
              i = 1;
              if (i > 1)
              {
                localObject1 = localObject2;
                if (a)
                {
                  localObject1 = localObject2;
                  com.d.a.c.c.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", new Object[] { localObject3, ((e)localObject3).a(i), Integer.valueOf(i), paramc.a() });
                }
              }
              localObject1 = localObject2;
              localObject3 = paramc.i();
              localObject1 = localObject2;
              inSampleSize = i;
              localObject1 = localObject2;
              localObject3 = BitmapFactory.decodeStream((InputStream)localObject2, null, (BitmapFactory.Options)localObject3);
              com.d.a.c.b.a((Closeable)localObject2);
              if (localObject3 != null) {
                break label422;
              }
              com.d.a.c.c.d("Image can't be decoded [%s]", new Object[] { paramc.a() });
              return (Bitmap)localObject3;
            }
          }
          i = 0;
          continue;
        }
        localObject1 = localObject3;
        localObject2 = new a();
        continue;
        localObject1 = localObject2;
      }
      finally
      {
        com.d.a.c.b.a((Closeable)localObject1);
      }
      label345:
      if (localObject5 != d.b) {
        break;
      }
      localObject1 = localObject2;
      i = com.d.a.c.a.a((e)localObject3);
    }
    localObject1 = localObject2;
    Object localObject6 = paramc.c();
    localObject1 = localObject2;
    if (localObject5 == d.c) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject1 = localObject2;
      i = com.d.a.c.a.a((e)localObject3, (e)localObject6, paramc.e(), bool1);
      break;
    }
    label422:
    int i = b.a;
    boolean bool2 = b.b;
    localObject1 = new Matrix();
    Object localObject2 = paramc.d();
    if ((localObject2 == d.e) || (localObject2 == d.f))
    {
      localObject4 = new e(((Bitmap)localObject3).getWidth(), ((Bitmap)localObject3).getHeight(), i);
      localObject5 = paramc.c();
      localObject6 = paramc.e();
      if (localObject2 != d.f) {
        break label699;
      }
    }
    label699:
    for (bool1 = true;; bool1 = false)
    {
      float f = com.d.a.c.a.b((e)localObject4, (e)localObject5, (h)localObject6, bool1);
      if (Float.compare(f, 1.0F) != 0)
      {
        ((Matrix)localObject1).setScale(f, f);
        if (a) {
          com.d.a.c.c.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", new Object[] { localObject4, ((e)localObject4).a(f), Float.valueOf(f), paramc.a() });
        }
      }
      if (bool2)
      {
        ((Matrix)localObject1).postScale(-1.0F, 1.0F);
        if (a) {
          com.d.a.c.c.a("Flip image horizontally [%s]", new Object[] { paramc.a() });
        }
      }
      if (i != 0)
      {
        ((Matrix)localObject1).postRotate(i);
        if (a) {
          com.d.a.c.c.a("Rotate image on %1$d° [%2$s]", new Object[] { Integer.valueOf(i), paramc.a() });
        }
      }
      paramc = Bitmap.createBitmap((Bitmap)localObject3, 0, 0, ((Bitmap)localObject3).getWidth(), ((Bitmap)localObject3).getHeight(), (Matrix)localObject1, true);
      if (paramc != localObject3) {
        ((Bitmap)localObject3).recycle();
      }
      return paramc;
    }
  }
  
  protected static final class a
  {
    public final int a;
    public final boolean b;
    
    protected a()
    {
      a = 0;
      b = false;
    }
    
    protected a(int paramInt, boolean paramBoolean)
    {
      a = paramInt;
      b = paramBoolean;
    }
  }
  
  protected static final class b
  {
    public final e a;
    public final a.a b;
    
    protected b(e parame, a.a parama)
    {
      a = parame;
      b = parama;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */