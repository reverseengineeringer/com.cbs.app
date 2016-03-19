package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.ColorUtils;

class b
  extends Drawable
{
  final Paint a = new Paint(1);
  final Rect b = new Rect();
  final RectF c = new RectF();
  float d;
  private int e;
  private int f;
  private int g;
  private int h;
  private ColorStateList i;
  private int j;
  private boolean k = true;
  private float l;
  
  public b()
  {
    a.setStyle(Paint.Style.STROKE);
  }
  
  final void a(float paramFloat)
  {
    if (d != paramFloat)
    {
      d = paramFloat;
      a.setStrokeWidth(1.3333F * paramFloat);
      k = true;
      invalidateSelf();
    }
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    e = paramInt1;
    f = paramInt2;
    g = paramInt3;
    h = paramInt4;
  }
  
  final void a(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null) {
      j = paramColorStateList.getColorForState(getState(), j);
    }
    i = paramColorStateList;
    k = true;
    invalidateSelf();
  }
  
  final void b(float paramFloat)
  {
    if (paramFloat != l)
    {
      l = paramFloat;
      invalidateSelf();
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (k)
    {
      localObject1 = a;
      Object localObject2 = b;
      copyBounds((Rect)localObject2);
      f1 = d / ((Rect)localObject2).height();
      int m = ColorUtils.compositeColors(e, j);
      int n = ColorUtils.compositeColors(f, j);
      int i1 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(f, 0), j);
      int i2 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(h, 0), j);
      int i3 = ColorUtils.compositeColors(h, j);
      int i4 = ColorUtils.compositeColors(g, j);
      float f2 = top;
      float f3 = bottom;
      localObject2 = Shader.TileMode.CLAMP;
      ((Paint)localObject1).setShader(new LinearGradient(0.0F, f2, 0.0F, f3, new int[] { m, n, i1, i2, i3, i4 }, new float[] { 0.0F, f1, 0.5F, 0.5F, 1.0F - f1, 1.0F }, (Shader.TileMode)localObject2));
      k = false;
    }
    float f1 = a.getStrokeWidth() / 2.0F;
    Object localObject1 = c;
    copyBounds(b);
    ((RectF)localObject1).set(b);
    left += f1;
    top += f1;
    right -= f1;
    bottom -= f1;
    paramCanvas.save();
    paramCanvas.rotate(l, ((RectF)localObject1).centerX(), ((RectF)localObject1).centerY());
    paramCanvas.drawOval((RectF)localObject1, a);
    paramCanvas.restore();
  }
  
  public int getOpacity()
  {
    if (d > 0.0F) {
      return -3;
    }
    return -2;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int m = Math.round(d);
    paramRect.set(m, m, m, m);
    return true;
  }
  
  public boolean isStateful()
  {
    return ((i != null) && (i.isStateful())) || (super.isStateful());
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    k = true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (i != null)
    {
      int m = i.getColorForState(paramArrayOfInt, j);
      if (m != j)
      {
        k = true;
        j = m;
      }
    }
    if (k) {
      invalidateSelf();
    }
    return k;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */