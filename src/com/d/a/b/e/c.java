package com.d.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.d.a.b.a.e;
import com.d.a.b.a.h;

public final class c
  implements a
{
  protected final String a;
  protected final e b;
  protected final h c;
  
  public c(String paramString, e parame, h paramh)
  {
    if (parame == null) {
      throw new IllegalArgumentException("imageSize must not be null");
    }
    if (paramh == null) {
      throw new IllegalArgumentException("scaleType must not be null");
    }
    a = paramString;
    b = parame;
    c = paramh;
  }
  
  public final int a()
  {
    return b.a();
  }
  
  public final boolean a(Bitmap paramBitmap)
  {
    return true;
  }
  
  public final boolean a(Drawable paramDrawable)
  {
    return true;
  }
  
  public final int b()
  {
    return b.b();
  }
  
  public final h c()
  {
    return c;
  }
  
  public final View d()
  {
    return null;
  }
  
  public final boolean e()
  {
    return false;
  }
  
  public final int f()
  {
    if (TextUtils.isEmpty(a)) {
      return super.hashCode();
    }
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */