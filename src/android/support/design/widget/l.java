package android.support.design.widget;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.design.R.color;
import android.support.v7.graphics.drawable.DrawableWrapper;

final class l
  extends DrawableWrapper
{
  static final double a = Math.cos(Math.toRadians(45.0D));
  final Paint b;
  final Paint c;
  final RectF d;
  float e;
  Path f;
  float g;
  float h;
  float i;
  float j;
  private boolean k = true;
  private final int l;
  private final int m;
  private final int n;
  private boolean o = true;
  private float p;
  private boolean q = false;
  
  public l(Resources paramResources, Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramDrawable);
    l = paramResources.getColor(R.color.design_fab_shadow_start_color);
    m = paramResources.getColor(R.color.design_fab_shadow_mid_color);
    n = paramResources.getColor(R.color.design_fab_shadow_end_color);
    b = new Paint(5);
    b.setStyle(Paint.Style.FILL);
    e = Math.round(paramFloat1);
    d = new RectF();
    c = new Paint(b);
    c.setAntiAlias(false);
    a(paramFloat2, paramFloat3);
  }
  
  private static int b(float paramFloat)
  {
    int i2 = Math.round(paramFloat);
    int i1 = i2;
    if (i2 % 2 == 1) {
      i1 = i2 - 1;
    }
    return i1;
  }
  
  public final void a()
  {
    o = false;
    invalidateSelf();
  }
  
  final void a(float paramFloat)
  {
    if (p != paramFloat)
    {
      p = paramFloat;
      invalidateSelf();
    }
  }
  
  final void a(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 < 0.0F) || (paramFloat2 < 0.0F)) {
      throw new IllegalArgumentException("invalid shadow size");
    }
    float f1 = b(paramFloat1);
    paramFloat2 = b(paramFloat2);
    paramFloat1 = f1;
    if (f1 > paramFloat2)
    {
      if (!q) {
        q = true;
      }
      paramFloat1 = paramFloat2;
    }
    if ((j == paramFloat1) && (h == paramFloat2)) {
      return;
    }
    j = paramFloat1;
    h = paramFloat2;
    i = Math.round(paramFloat1 * 1.5F);
    g = paramFloat2;
    k = true;
    invalidateSelf();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    float f1;
    float f2;
    float f3;
    int i1;
    int i3;
    if (k)
    {
      Object localObject = getBounds();
      f1 = h * 1.5F;
      d.set(left + h, top + f1, right - h, bottom - f1);
      getWrappedDrawable().setBounds((int)d.left, (int)d.top, (int)d.right, (int)d.bottom);
      localObject = new RectF(-e, -e, e, e);
      RectF localRectF = new RectF((RectF)localObject);
      localRectF.inset(-i, -i);
      if (f == null)
      {
        f = new Path();
        f.setFillType(Path.FillType.EVEN_ODD);
        f.moveTo(-e, 0.0F);
        f.rLineTo(-i, 0.0F);
        f.arcTo(localRectF, 180.0F, 90.0F, false);
        f.arcTo((RectF)localObject, 270.0F, -90.0F, false);
        f.close();
        f1 = -top;
        if (f1 > 0.0F)
        {
          f2 = e / f1;
          f3 = (1.0F - f2) / 2.0F;
          localPaint = b;
          i1 = l;
          i2 = m;
          i3 = n;
          Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
          localPaint.setShader(new RadialGradient(0.0F, 0.0F, f1, new int[] { 0, i1, i2, i3 }, new float[] { 0.0F, f2, f2 + f3, 1.0F }, localTileMode));
        }
        Paint localPaint = c;
        f1 = top;
        f2 = top;
        i1 = l;
        i2 = m;
        i3 = n;
        localObject = Shader.TileMode.CLAMP;
        localPaint.setShader(new LinearGradient(0.0F, f1, 0.0F, f2, new int[] { i1, i2, i3 }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject));
        c.setAntiAlias(false);
        k = false;
      }
    }
    else
    {
      i3 = paramCanvas.save();
      paramCanvas.rotate(p, d.centerX(), d.centerY());
      f1 = -e - i;
      f2 = e;
      if (d.width() - 2.0F * f2 <= 0.0F) {
        break label1061;
      }
      i1 = 1;
      label535:
      if (d.height() - 2.0F * f2 <= 0.0F) {
        break label1067;
      }
    }
    label1061:
    label1067:
    for (int i2 = 1;; i2 = 0)
    {
      float f6 = j;
      float f7 = j;
      f3 = j;
      float f8 = j;
      float f4 = j;
      float f5 = j;
      f3 = f2 / (f3 - f8 * 0.5F + f2);
      f6 = f2 / (f6 - f7 * 0.25F + f2);
      f4 = f2 / (f2 + (f4 - f5 * 1.0F));
      int i4 = paramCanvas.save();
      paramCanvas.translate(d.left + f2, d.top + f2);
      paramCanvas.scale(f3, f6);
      paramCanvas.drawPath(f, b);
      if (i1 != 0)
      {
        paramCanvas.scale(1.0F / f3, 1.0F);
        paramCanvas.drawRect(0.0F, f1, d.width() - 2.0F * f2, -e, c);
      }
      paramCanvas.restoreToCount(i4);
      i4 = paramCanvas.save();
      paramCanvas.translate(d.right - f2, d.bottom - f2);
      paramCanvas.scale(f3, f4);
      paramCanvas.rotate(180.0F);
      paramCanvas.drawPath(f, b);
      if (i1 != 0)
      {
        paramCanvas.scale(1.0F / f3, 1.0F);
        f5 = d.width();
        f7 = -e;
        paramCanvas.drawRect(0.0F, f1, f5 - 2.0F * f2, i + f7, c);
      }
      paramCanvas.restoreToCount(i4);
      i1 = paramCanvas.save();
      paramCanvas.translate(d.left + f2, d.bottom - f2);
      paramCanvas.scale(f3, f4);
      paramCanvas.rotate(270.0F);
      paramCanvas.drawPath(f, b);
      if (i2 != 0)
      {
        paramCanvas.scale(1.0F / f4, 1.0F);
        paramCanvas.drawRect(0.0F, f1, d.height() - 2.0F * f2, -e, c);
      }
      paramCanvas.restoreToCount(i1);
      i1 = paramCanvas.save();
      paramCanvas.translate(d.right - f2, d.top + f2);
      paramCanvas.scale(f3, f6);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawPath(f, b);
      if (i2 != 0)
      {
        paramCanvas.scale(1.0F / f6, 1.0F);
        paramCanvas.drawRect(0.0F, f1, d.height() - 2.0F * f2, -e, c);
      }
      paramCanvas.restoreToCount(i1);
      paramCanvas.restoreToCount(i3);
      super.draw(paramCanvas);
      return;
      f.reset();
      break;
      i1 = 0;
      break label535;
    }
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean getPadding(Rect paramRect)
  {
    float f1 = h;
    float f2 = e;
    double d1;
    double d2;
    if (o)
    {
      d1 = f1 * 1.5F;
      d2 = a;
    }
    for (f1 = (float)(f2 * (1.0D - d2) + d1);; f1 *= 1.5F)
    {
      int i1 = (int)Math.ceil(f1);
      f2 = h;
      float f3 = e;
      f1 = f2;
      if (o)
      {
        d1 = f2;
        d2 = a;
        f1 = (float)(f3 * (1.0D - d2) + d1);
      }
      int i2 = (int)Math.ceil(f1);
      paramRect.set(i2, i1, i2, i1);
      return true;
    }
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    k = true;
  }
  
  public final void setAlpha(int paramInt)
  {
    super.setAlpha(paramInt);
    b.setAlpha(paramInt);
    c.setAlpha(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */