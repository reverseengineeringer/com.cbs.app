package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.design.R.styleable;
import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextDirectionHeuristicsCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;

final class d
{
  private static final boolean a;
  private static final Paint b;
  private boolean A;
  private Bitmap B;
  private Paint C;
  private float D;
  private float E;
  private float F;
  private float G;
  private boolean H;
  private final TextPaint I;
  private Interpolator J;
  private Interpolator K;
  private float L;
  private float M;
  private float N;
  private int O;
  private float P;
  private float Q;
  private float R;
  private int S;
  private final View c;
  private boolean d;
  private float e;
  private final Rect f;
  private final Rect g;
  private final RectF h;
  private int i = 16;
  private int j = 16;
  private float k = 15.0F;
  private float l = 15.0F;
  private int m;
  private int n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private Typeface u;
  private Typeface v;
  private Typeface w;
  private CharSequence x;
  private CharSequence y;
  private boolean z;
  
  static
  {
    if (Build.VERSION.SDK_INT < 18) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = null;
      return;
    }
  }
  
  public d(View paramView)
  {
    c = paramView;
    I = new TextPaint();
    I.setAntiAlias(true);
    g = new Rect();
    f = new Rect();
    h = new RectF();
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator)
  {
    float f1 = paramFloat3;
    if (paramInterpolator != null) {
      f1 = paramInterpolator.getInterpolation(paramFloat3);
    }
    return a.a(paramFloat1, paramFloat2, f1);
  }
  
  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f1 * f8 + f9 * paramFloat));
  }
  
  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }
  
  private static boolean a(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (left == paramInt1) && (top == paramInt2) && (right == paramInt3) && (bottom == paramInt4);
  }
  
  private void c(float paramFloat)
  {
    h.left = a(f.left, g.left, paramFloat, J);
    h.top = a(o, p, paramFloat, J);
    h.right = a(f.right, g.right, paramFloat, J);
    h.bottom = a(f.bottom, g.bottom, paramFloat, J);
    s = a(q, r, paramFloat, J);
    t = a(o, p, paramFloat, J);
    d(a(k, l, paramFloat, K));
    if (n != m) {
      I.setColor(a(m, n, paramFloat));
    }
    for (;;)
    {
      I.setShadowLayer(a(P, L, paramFloat, null), a(Q, M, paramFloat, null), a(R, N, paramFloat, null), a(S, O, paramFloat));
      ViewCompat.postInvalidateOnAnimation(c);
      return;
      I.setColor(n);
    }
  }
  
  private void d(float paramFloat)
  {
    e(paramFloat);
    boolean bool;
    if ((a) && (F != 1.0F))
    {
      bool = true;
      A = bool;
      if ((A) && (B == null) && (!f.isEmpty()) && (!TextUtils.isEmpty(y))) {
        break label77;
      }
    }
    for (;;)
    {
      ViewCompat.postInvalidateOnAnimation(c);
      return;
      bool = false;
      break;
      label77:
      c(0.0F);
      D = I.ascent();
      E = I.descent();
      int i1 = Math.round(I.measureText(y, 0, y.length()));
      int i2 = Math.round(E - D);
      if ((i1 > 0) && (i2 > 0))
      {
        B = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
        new Canvas(B).drawText(y, 0, y.length(), 0.0F, i2 - I.descent(), I);
        if (C == null) {
          C = new Paint(3);
        }
      }
    }
  }
  
  private void e(float paramFloat)
  {
    int i3 = 1;
    if (x == null) {
      return;
    }
    float f1;
    int i1;
    if (a(paramFloat, l))
    {
      f1 = g.width();
      paramFloat = l;
      F = 1.0F;
      if (w == u) {
        break label332;
      }
      w = u;
      i1 = 1;
    }
    for (;;)
    {
      int i2 = i1;
      label97:
      Object localObject;
      label202:
      label212:
      float f2;
      if (f1 > 0.0F)
      {
        if ((G != paramFloat) || (H) || (i1 != 0))
        {
          i1 = 1;
          G = paramFloat;
          H = false;
          i2 = i1;
        }
      }
      else
      {
        if ((y != null) && (i2 == 0)) {
          break;
        }
        I.setTextSize(G);
        I.setTypeface(w);
        localObject = TextUtils.ellipsize(x, I, f1, TextUtils.TruncateAt.END);
        if (TextUtils.equals((CharSequence)localObject, y)) {
          break;
        }
        y = ((CharSequence)localObject);
        CharSequence localCharSequence = y;
        if (ViewCompat.getLayoutDirection(c) != 1) {
          break label312;
        }
        i1 = i3;
        if (i1 == 0) {
          break label318;
        }
        localObject = TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL;
        z = ((TextDirectionHeuristicCompat)localObject).isRtl(localCharSequence, 0, localCharSequence.length());
        return;
        f1 = f.width();
        f2 = k;
        if (w == v) {
          break label326;
        }
        w = v;
      }
      label312:
      label318:
      label326:
      for (i1 = 1;; i1 = 0)
      {
        if (a(paramFloat, k))
        {
          F = 1.0F;
          paramFloat = f2;
          break;
        }
        F = (paramFloat / k);
        paramFloat = f2;
        break;
        i1 = 0;
        break label97;
        i1 = 0;
        break label202;
        localObject = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        break label212;
      }
      label332:
      i1 = 0;
    }
  }
  
  private Typeface g(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, new int[] { 16843692 });
    try
    {
      Object localObject1 = localTypedArray.getString(0);
      if (localObject1 != null)
      {
        localObject1 = Typeface.create((String)localObject1, 0);
        return (Typeface)localObject1;
      }
      return null;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private void g()
  {
    if ((g.width() > 0) && (g.height() > 0) && (f.width() > 0) && (f.height() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  private void h()
  {
    c(e);
  }
  
  private void i()
  {
    if (B != null)
    {
      B.recycle();
      B = null;
    }
  }
  
  final Typeface a()
  {
    if (u != null) {
      return u;
    }
    return Typeface.DEFAULT;
  }
  
  final void a(float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      d();
    }
  }
  
  final void a(int paramInt)
  {
    if (n != paramInt)
    {
      n = paramInt;
      d();
    }
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(f, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      f.set(paramInt1, paramInt2, paramInt3, paramInt4);
      H = true;
      g();
    }
  }
  
  public final void a(Canvas paramCanvas)
  {
    int i2 = paramCanvas.save();
    float f4;
    int i1;
    float f1;
    label75:
    float f2;
    if ((y != null) && (d))
    {
      f4 = s;
      float f3 = t;
      if ((!A) || (B == null)) {
        break label139;
      }
      i1 = 1;
      I.setTextSize(G);
      if (i1 == 0) {
        break label145;
      }
      f1 = D * F;
      f2 = f3;
      if (i1 != 0) {
        f2 = f3 + f1;
      }
      if (F != 1.0F) {
        paramCanvas.scale(F, F, f4, f2);
      }
      if (i1 == 0) {
        break label166;
      }
      paramCanvas.drawBitmap(B, f4, f2, C);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i2);
      return;
      label139:
      i1 = 0;
      break;
      label145:
      I.ascent();
      f1 = 0.0F;
      I.descent();
      break label75;
      label166:
      paramCanvas.drawText(y, 0, y.length(), f4, f2, I);
    }
  }
  
  final void a(Typeface paramTypeface)
  {
    if (u != paramTypeface)
    {
      u = paramTypeface;
      d();
    }
  }
  
  final void a(Interpolator paramInterpolator)
  {
    K = paramInterpolator;
    d();
  }
  
  final void a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(x)))
    {
      x = paramCharSequence;
      y = null;
      i();
      d();
    }
  }
  
  final float b()
  {
    return e;
  }
  
  final void b(float paramFloat)
  {
    float f1;
    if (paramFloat < 0.0F) {
      f1 = 0.0F;
    }
    for (;;)
    {
      if (f1 != e)
      {
        e = f1;
        h();
      }
      return;
      f1 = paramFloat;
      if (paramFloat > 1.0F) {
        f1 = 1.0F;
      }
    }
  }
  
  final void b(int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      d();
    }
  }
  
  final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(g, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      g.set(paramInt1, paramInt2, paramInt3, paramInt4);
      H = true;
      g();
    }
  }
  
  final void b(Typeface paramTypeface)
  {
    if (v != paramTypeface)
    {
      v = paramTypeface;
      d();
    }
  }
  
  final void b(Interpolator paramInterpolator)
  {
    J = paramInterpolator;
    d();
  }
  
  final float c()
  {
    return l;
  }
  
  final void c(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      d();
    }
  }
  
  final void c(Typeface paramTypeface)
  {
    v = paramTypeface;
    u = paramTypeface;
    d();
  }
  
  public final void d()
  {
    int i2 = 1;
    float f2 = 0.0F;
    float f3;
    float f1;
    int i1;
    if ((c.getHeight() > 0) && (c.getWidth() > 0))
    {
      f3 = G;
      e(l);
      if (y == null) {
        break label394;
      }
      f1 = I.measureText(y, 0, y.length());
      int i3 = j;
      if (!z) {
        break label399;
      }
      i1 = 1;
      label83:
      i1 = GravityCompat.getAbsoluteGravity(i3, i1);
      switch (i1 & 0x70)
      {
      default: 
        p = ((I.descent() - I.ascent()) / 2.0F - I.descent() + g.centerY());
        label162:
        switch (i1 & 0x7)
        {
        default: 
          r = g.left;
          label204:
          e(k);
          f1 = f2;
          if (y != null) {
            f1 = I.measureText(y, 0, y.length());
          }
          i3 = i;
          if (z)
          {
            i1 = i2;
            label260:
            i1 = GravityCompat.getAbsoluteGravity(i3, i1);
            switch (i1 & 0x70)
            {
            default: 
              o = ((I.descent() - I.ascent()) / 2.0F - I.descent() + f.centerY());
              label338:
              switch (i1 & 0x7)
              {
              default: 
                q = f.left;
              }
              break;
            }
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      i();
      d(f3);
      h();
      return;
      label394:
      f1 = 0.0F;
      break;
      label399:
      i1 = 0;
      break label83;
      p = g.bottom;
      break label162;
      p = (g.top - I.ascent());
      break label162;
      r = (g.centerX() - f1 / 2.0F);
      break label204;
      r = (g.right - f1);
      break label204;
      i1 = 0;
      break label260;
      o = f.bottom;
      break label338;
      o = (f.top - I.ascent());
      break label338;
      q = (f.centerX() - f1 / 2.0F);
      continue;
      q = (f.right - f1);
    }
  }
  
  final void d(int paramInt)
  {
    if (j != paramInt)
    {
      j = paramInt;
      d();
    }
  }
  
  final CharSequence e()
  {
    return x;
  }
  
  final void e(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      n = localTypedArray.getColor(R.styleable.TextAppearance_android_textColor, n);
    }
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
      l = localTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)l);
    }
    O = localTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    M = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    N = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    L = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      u = g(paramInt);
    }
    d();
  }
  
  final int f()
  {
    return n;
  }
  
  final void f(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, R.styleable.TextAppearance);
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textColor)) {
      m = localTypedArray.getColor(R.styleable.TextAppearance_android_textColor, m);
    }
    if (localTypedArray.hasValue(R.styleable.TextAppearance_android_textSize)) {
      k = localTypedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, (int)k);
    }
    S = localTypedArray.getInt(R.styleable.TextAppearance_android_shadowColor, 0);
    Q = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0F);
    R = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0F);
    P = localTypedArray.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0F);
    localTypedArray.recycle();
    if (Build.VERSION.SDK_INT >= 16) {
      v = g(paramInt);
    }
    d();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */