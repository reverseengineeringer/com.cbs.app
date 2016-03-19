package ru.truba.touchgallery.TouchView;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.ScaleGestureDetector;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.Timer;

@SuppressLint({"NewApi"})
public class TouchImageView
  extends ImageView
{
  long A = 0L;
  boolean B = false;
  public boolean C = false;
  public boolean D = false;
  public boolean E = false;
  public boolean F = false;
  private int G = -1;
  private Context H;
  private Timer I;
  private View.OnClickListener J;
  private Object K;
  private Handler L = null;
  private boolean M = false;
  Matrix a = new Matrix();
  Matrix b = new Matrix();
  int c = 0;
  float d;
  float e;
  float f;
  float g;
  float h;
  float i;
  float j;
  float k;
  float l;
  float m;
  PointF n = new PointF();
  PointF o = new PointF();
  PointF p = new PointF();
  float[] q;
  float r;
  float s;
  float t = 1.0F;
  float u = 1.0F;
  float v = 3.0F;
  float w = 1.0F;
  PointF x = new PointF(0.0F, 0.0F);
  float y = 0.0F;
  long z = 0L;
  
  public TouchImageView(Context paramContext)
  {
    super(paramContext);
    super.setClickable(true);
    H = paramContext;
    b();
  }
  
  public TouchImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    super.setClickable(true);
    H = paramContext;
    b();
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    float f1 = Math.round(h * t);
    float f2 = Math.round(i * t);
    e();
    if (f1 < l) {
      if (s + paramFloat2 > 0.0F)
      {
        paramFloat1 = -s;
        f1 = 0.0F;
      }
    }
    for (;;)
    {
      a.postTranslate(f1, paramFloat1);
      c();
      return;
      if (s + paramFloat2 < -g)
      {
        paramFloat1 = -(s + g);
        f1 = 0.0F;
        continue;
        if (f2 < m)
        {
          if (r + paramFloat1 > 0.0F)
          {
            f1 = -r;
            paramFloat1 = 0.0F;
            continue;
          }
          if (r + paramFloat1 < -f)
          {
            f1 = -(r + f);
            paramFloat1 = 0.0F;
          }
        }
        else
        {
          if (r + paramFloat1 > 0.0F) {
            f2 = -r;
          }
          for (;;)
          {
            if (s + paramFloat2 <= 0.0F) {
              break label244;
            }
            paramFloat1 = -s;
            f1 = f2;
            break;
            f2 = paramFloat1;
            if (r + paramFloat1 < -f) {
              f2 = -(r + f);
            }
          }
          label244:
          f1 = f2;
          paramFloat1 = paramFloat2;
          if (s + paramFloat2 >= -g) {
            continue;
          }
          paramFloat1 = -(s + g);
          f1 = f2;
          continue;
        }
        paramFloat2 = 0.0F;
        f1 = paramFloat1;
        paramFloat1 = paramFloat2;
      }
      else
      {
        f1 = 0.0F;
        paramFloat1 = paramFloat2;
      }
    }
  }
  
  private void b()
  {
    L = new TouchImageView.c(this);
    a.setTranslate(1.0F, 1.0F);
    q = new float[9];
    setImageMatrix(a);
    setScaleType(ImageView.ScaleType.MATRIX);
    if (Build.VERSION.SDK_INT >= 8) {
      K = new ScaleGestureDetector(H, new TouchImageView.a(this, (byte)0));
    }
    setOnTouchListener(new TouchImageView.1(this));
  }
  
  private void c()
  {
    e();
    float f1 = Math.round(h * t);
    float f2 = Math.round(i * t);
    F = false;
    D = false;
    E = false;
    C = false;
    if (-r < 10.0F) {
      C = true;
    }
    if (((f1 >= l) && (r + f1 - l < 10.0F)) || ((f1 <= l) && (f1 + -r <= l))) {
      E = true;
    }
    if (-s < 10.0F) {
      D = true;
    }
    if (Math.abs(-s + m - f2) < 10.0F) {
      F = true;
    }
  }
  
  private void d()
  {
    f = (l * t - l - d * 2.0F * t);
    g = (m * t - m - e * 2.0F * t);
  }
  
  private void e()
  {
    a.getValues(q);
    r = q[2];
    s = q[5];
  }
  
  public final boolean a()
  {
    if (c != 0) {}
    while (t != u) {
      return false;
    }
    return true;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (!B) {}
    float f1;
    float f2;
    do
    {
      do
      {
        return;
        f1 = x.x * y;
        f2 = x.y * y;
      } while ((f1 > l) || (f2 > m));
      y *= 0.9F;
    } while ((Math.abs(f1) < 0.1D) && (Math.abs(f2) < 0.1D));
    a(f1, f2);
    setImageMatrix(a);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    l = View.MeasureSpec.getSize(paramInt1);
    m = View.MeasureSpec.getSize(paramInt2);
    float f1 = Math.min(l / j, m / k);
    a.setScale(f1, f1);
    setImageMatrix(a);
    t = 1.0F;
    e = (m - k * f1);
    d = (l - f1 * j);
    e /= 2.0F;
    d /= 2.0F;
    a.postTranslate(d, e);
    h = (l - d * 2.0F);
    i = (m - e * 2.0F);
    d();
    setImageMatrix(a);
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    j = paramBitmap.getWidth();
    k = paramBitmap.getHeight();
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    J = paramOnClickListener;
  }
  
  public void setZoomToOriginalSize(boolean paramBoolean)
  {
    M = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     ru.truba.touchgallery.TouchView.TouchImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */