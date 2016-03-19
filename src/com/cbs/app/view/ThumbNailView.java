package com.cbs.app.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;

public class ThumbNailView
  extends View
{
  private static Drawable b;
  private static Drawable c;
  private static Drawable d;
  private static Drawable e;
  private static float f;
  public String a;
  private int g;
  private Bitmap h;
  private Rect i;
  private Paint j;
  private int k;
  
  public ThumbNailView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ThumbNailView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    Resources localResources = getResources();
    b = localResources.getDrawable(2130837505);
    c = localResources.getDrawable(2130837809);
    d = localResources.getDrawable(2130837990);
    e = localResources.getDrawable(2130837992);
    f = b.getIntrinsicHeight() / b.getIntrinsicWidth();
    i = new Rect();
    j = new Paint();
    j.setAntiAlias(true);
  }
  
  public final int getFlagTopMargin()
  {
    return k;
  }
  
  public final String getUrl()
  {
    try
    {
      String str = a;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (h == null)
    {
      d.draw(paramCanvas);
      switch (g)
      {
      }
    }
    for (;;)
    {
      e.draw(paramCanvas);
      return;
      paramCanvas.drawBitmap(h, null, i, j);
      break;
      b.draw(paramCanvas);
      continue;
      c.draw(paramCanvas);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = (int)(paramInt1 * 0.58F);
    int m = (int)(paramInt1 * 0.16F);
    int n = m / 3;
    e.setBounds(n, paramInt2 - m - n, m + n, paramInt2 - n);
    if (g == 0)
    {
      i.set(0, 0, paramInt1, paramInt2);
      k = 0;
    }
    for (;;)
    {
      d.setBounds(i);
      setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 0));
      return;
      m = (int)(paramInt1 * 0.6F);
      n = (int)(m * f);
      c.setBounds(paramInt1 - m, 0, paramInt1, n);
      b.setBounds(paramInt1 - m, 0, paramInt1, n);
      k = ((int)(n * 0.417F));
      i.set(0, k, (int)(paramInt1 * 0.959F), paramInt2);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt3 > 0) {
      requestLayout();
    }
  }
  
  public final void setBitmap(Bitmap paramBitmap)
  {
    h = paramBitmap;
    invalidate();
  }
  
  public final void setFlagVisibility(int paramInt)
  {
    if ((g == 0) && (paramInt > 0)) {}
    for (int m = 1;; m = 0)
    {
      g = paramInt;
      if (m != 0) {
        requestLayout();
      }
      invalidate();
      return;
    }
  }
  
  public final void setUrl(String paramString)
  {
    try
    {
      a = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ThumbNailView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */