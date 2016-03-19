package com.cbs.app.view.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.cbs.app.view.ThumbNailView;
import com.d.a.b.c.a;
import java.net.MalformedURLException;
import java.net.URL;

public class ImageHelper
{
  public static final String a = ImageHelper.class.getSimpleName();
  private static com.d.a.b.d b = com.d.a.b.d.a();
  private static com.d.a.b.c c = new c.a().a(true).b(true).a(Bitmap.Config.ARGB_8888).a(com.d.a.b.a.d.e).d();
  private static com.d.a.b.c d = new c.a().a(true).b(true).a(Bitmap.Config.ARGB_8888).b(2130837988).c(2130837988).a(2130837988).a(com.d.a.b.a.d.e).d();
  
  public static String a(String paramString, double paramDouble, float paramFloat)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramString = new URL(paramString).getPath().replace("base/files/", "");
      int i = (int)Math.round(paramFloat / 160.0F * paramDouble);
      paramString = "/thumbnails/photos/w" + i + paramString;
      localStringBuilder.append("http://wwwimage.cbsstatic.com");
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        new StringBuilder("Thumbnailer Path exception:").append(paramString.getLocalizedMessage());
      }
    }
  }
  
  public static String a(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramString = new URL(paramString).getPath().replace("base/files/", "");
      paramString = "/thumbnails/videos/w" + paramInt + paramString;
      localStringBuilder.append("http://wwwimage.cbsstatic.com");
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        new StringBuilder("Thumbnailer Path exception:").append(paramString.getLocalizedMessage());
      }
    }
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new URL(paramString2).getPath().replace("base/files/", "");
      int i = (int)Math.round(200.0D);
      paramString1 = "http://wwwimage.cbsstatic.com/thumbnails/" + paramString1 + "/w" + i + "-h" + i + "-c1:1" + paramString2;
      return paramString1;
    }
    catch (MalformedURLException paramString1)
    {
      Log.e(a, "error: " + paramString1.getLocalizedMessage());
    }
    return null;
  }
  
  private static String a(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      paramString1 = new URL(paramString1).getPath().replace("base/files/", "");
      paramString1 = "http://wwwimage.cbsstatic.com" + paramString2 + paramInt + paramString1;
      return paramString1;
    }
    catch (MalformedURLException paramString1)
    {
      new StringBuilder("Thumbnailer Path exception:").append(paramString1.getLocalizedMessage());
    }
    return null;
  }
  
  public static void a(String paramString, ImageView paramImageView)
  {
    a(paramString, paramImageView, 2130837990, 2130837990, true);
  }
  
  public static void a(String paramString, ImageView paramImageView, final int paramInt)
  {
    if (b != null) {
      b.a(paramString, c, new com.d.a.b.f.c()
      {
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          if (a != null)
          {
            float f = paramAnonymousBitmap.getHeight() * 1.0F / paramAnonymousBitmap.getWidth();
            a.setImageBitmap(paramAnonymousBitmap);
            paramAnonymousString = a.getLayoutParams();
            width = paramInt;
            height = ((int)(f * paramInt));
          }
        }
      });
    }
  }
  
  public static void a(String paramString, ImageView paramImageView, int paramInt1, int paramInt2)
  {
    a(paramString, paramImageView, paramInt1, paramInt2, true);
  }
  
  public static void a(String paramString, ImageView paramImageView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a(paramString, paramImageView, paramInt1, paramInt2, paramBoolean, null);
  }
  
  private static void a(String paramString, ImageView paramImageView, int paramInt1, int paramInt2, boolean paramBoolean, com.d.a.b.f.c paramc)
  {
    Object localObject2 = new c.a().b(0).a(Bitmap.Config.RGB_565).a(paramBoolean).a(com.d.a.b.a.d.e).b(true);
    Object localObject1 = localObject2;
    if (paramInt1 != -1) {
      localObject1 = ((c.a)localObject2).a(paramInt1);
    }
    localObject2 = localObject1;
    if (paramInt2 != -1) {
      localObject2 = ((c.a)localObject1).c(paramInt2);
    }
    localObject1 = ((c.a)localObject2).d();
    if (paramc != null)
    {
      b.a(paramString, paramImageView, (com.d.a.b.c)localObject1, paramc);
      return;
    }
    b.a(paramString, paramImageView, (com.d.a.b.c)localObject1);
  }
  
  public static void a(String paramString, ImageView paramImageView, com.d.a.b.f.c paramc)
  {
    a(paramString, paramImageView, 2130837990, 2130837990, true, paramc);
  }
  
  public static void a(String paramString, ThumbNailView paramThumbNailView)
  {
    if (b != null)
    {
      a = paramString;
      b.a(paramString, c, new com.d.a.b.f.c()
      {
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          if (paramAnonymousString.equals(a.a)) {
            a.setBitmap(paramAnonymousBitmap);
          }
        }
      });
    }
  }
  
  public static void a(String paramString1, String paramString2, int paramInt, ImageView paramImageView)
  {
    paramString1 = a(paramString1, paramString2, paramInt);
    b.a(paramString1, paramImageView, d);
  }
  
  public static String b(String paramString, double paramDouble, float paramFloat)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramString = new URL(paramString).getPath().replace("base/files/", "");
      int i = (int)Math.round(paramFloat / 160.0F * paramDouble);
      paramString = "/thumbnails/videos/w" + i + paramString;
      localStringBuilder.append("http://wwwimage.cbsstatic.com");
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        new StringBuilder("Thumbnailer Path exception:").append(paramString.getLocalizedMessage());
      }
    }
  }
  
  public static String b(String paramString, int paramInt)
  {
    try
    {
      paramString = new URL(paramString);
      paramString = paramString.getPath().replace("base/", "").replace("files/", "");
      return "http://wwwimage.cbsstatic.com/thumbnails/photos/w" + paramInt + paramString;
    }
    catch (MalformedURLException paramString)
    {
      new StringBuilder("MalformedURLException").append(paramString.getLocalizedMessage());
    }
    return null;
  }
  
  public static void b(String paramString, ImageView paramImageView)
  {
    a(paramString, paramImageView, 2130837990, 2130837990, false);
  }
  
  public static void b(String paramString, ImageView paramImageView, com.d.a.b.f.c paramc)
  {
    a(paramString, paramImageView, 2130837810, 2130837810, false, paramc);
  }
  
  public static String c(String paramString, int paramInt)
  {
    paramString = paramString.replace("files", "");
    return "http://wwwimage.cbsstatic.com/thumbnails/photos/w" + paramInt + paramString;
  }
  
  public static void c(String paramString, ImageView paramImageView)
  {
    a(paramString, paramImageView, 0, 0, false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImageHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */