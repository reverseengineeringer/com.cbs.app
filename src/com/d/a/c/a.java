package com.d.a.c;

import android.opengl.GLES10;
import com.d.a.b.a.e;
import com.d.a.b.a.h;

public final class a
{
  private static e a;
  
  static
  {
    int[] arrayOfInt = new int[1];
    GLES10.glGetIntegerv(3379, arrayOfInt, 0);
    int i = Math.max(arrayOfInt[0], 2048);
    a = new e(i, i);
  }
  
  public static int a(e parame)
  {
    int i = parame.a();
    int j = parame.b();
    int k = a.a();
    int m = a.b();
    return Math.max((int)Math.ceil(i / k), (int)Math.ceil(j / m));
  }
  
  public static int a(e parame1, e parame2, h paramh, boolean paramBoolean)
  {
    int k = 1;
    int m = parame1.a();
    int n = parame1.b();
    int i1 = parame2.a();
    int i2 = parame2.b();
    int i;
    switch (1.a[paramh.ordinal()])
    {
    default: 
      i = 1;
      if (i <= 0) {
        i = k;
      }
      break;
    }
    for (;;)
    {
      int j = a.a();
      k = a.b();
      for (;;)
      {
        if ((m / i <= j) && (n / i <= k)) {
          break label270;
        }
        if (paramBoolean)
        {
          i *= 2;
          continue;
          int i3;
          int i4;
          if (paramBoolean)
          {
            i3 = m / 2;
            i4 = n / 2;
            j = 1;
            for (;;)
            {
              if (i3 / j <= i1)
              {
                i = j;
                if (i4 / j <= i2) {
                  break;
                }
              }
              j *= 2;
            }
          }
          i = Math.max(m / i1, n / i2);
          break;
          if (paramBoolean)
          {
            i3 = m / 2;
            i4 = n / 2;
            j = 1;
            for (;;)
            {
              i = j;
              if (i3 / j <= i1) {
                break;
              }
              i = j;
              if (i4 / j <= i2) {
                break;
              }
              j *= 2;
            }
          }
          i = Math.min(m / i1, n / i2);
          break;
        }
        i += 1;
      }
      label270:
      return i;
    }
  }
  
  public static e a(com.d.a.b.e.a parama, e parame)
  {
    int j = parama.a();
    int i = j;
    if (j <= 0) {
      i = parame.a();
    }
    int k = parama.b();
    j = k;
    if (k <= 0) {
      j = parame.b();
    }
    return new e(i, j);
  }
  
  public static float b(e parame1, e parame2, h paramh, boolean paramBoolean)
  {
    int m = parame1.a();
    int n = parame1.b();
    int i = parame2.a();
    int j = parame2.b();
    float f1 = m / i;
    float f2 = n / j;
    int k;
    if (((paramh == h.a) && (f1 >= f2)) || ((paramh == h.b) && (f1 < f2)))
    {
      k = (int)(n / f1);
      j = i;
    }
    for (;;)
    {
      f2 = 1.0F;
      if ((paramBoolean) || (j >= m) || (k >= n))
      {
        f1 = f2;
        if (paramBoolean)
        {
          f1 = f2;
          if (j != m)
          {
            f1 = f2;
            if (k == n) {}
          }
        }
      }
      else
      {
        f1 = j / m;
      }
      return f1;
      k = (int)(m / f2);
      i = j;
      j = k;
      k = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */