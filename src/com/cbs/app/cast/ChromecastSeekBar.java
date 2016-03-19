package com.cbs.app.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.SeekBar;
import com.cbs.app.R.styleable;
import com.cbs.app.pid.CBSAd;
import com.cbs.app.view.utils.Util;
import java.util.Iterator;
import java.util.List;

public class ChromecastSeekBar
  extends SeekBar
{
  float a = 2.0F;
  private Paint b = new Paint(1);
  private Paint c = new Paint(1);
  private boolean d;
  private List<CBSAd> e;
  
  public ChromecastSeekBar(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public ChromecastSeekBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public ChromecastSeekBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  @TargetApi(21)
  public ChromecastSeekBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet, paramInt1);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    a = Util.a(paramContext, 2.0D);
    int m = Color.parseColor("#666666");
    int k = Color.parseColor("#cccccc");
    int j = k;
    int i = m;
    if (paramAttributeSet != null)
    {
      j = k;
      i = m;
      if (paramContext != null) {
        if (paramInt == 0) {
          break label157;
        }
      }
    }
    label157:
    for (paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.seekBar, 0, 0);; paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.seekBar))
    {
      i = paramContext.getColor(0, m);
      j = paramContext.getColor(2, k);
      a = paramContext.getDimension(3, a);
      b.setColor(i);
      b.setStyle(Paint.Style.FILL);
      b.setStrokeWidth(a);
      c.setColor(j);
      c.setStyle(Paint.Style.FILL);
      c.setStrokeWidth(a);
      return;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    for (;;)
    {
      int i;
      int k;
      int j;
      float f1;
      try
      {
        super.onDraw(paramCanvas);
        if ((e == null) || (e.size() <= 0)) {
          break;
        }
        Object localObject = getProgressDrawable();
        i = Util.a(getContext(), 4.0D);
        if (localObject != null) {
          i = ((Drawable)localObject).getBounds().height();
        }
        k = (int)Math.round(getHeight() / 2.0D);
        j = k - (int)Math.round(i / 2.0D);
        i = k + (int)Math.round(i / 2.0D);
        localObject = e.iterator();
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        CBSAd localCBSAd = (CBSAd)((Iterator)localObject).next();
        Integer localInteger = Integer.valueOf(localCBSAd.getStartTime());
        double d1 = localInteger.intValue();
        k = getWidth();
        int m = getPaddingLeft();
        int n = getPaddingRight();
        getMeasuredHeight();
        int i1 = getMax();
        k = (int)(localInteger.intValue() * 1000.0D * (k - m - n) / i1);
        f1 = getResourcesgetDisplayMetricsdensity;
        k = getPaddingLeft() + k;
        if ((localCBSAd.a()) || (d1 * 1000.0D < getProgress()))
        {
          paramCanvas.drawLine(k, j, k, i, c);
          continue;
        }
        f1 = k;
      }
      finally {}
      float f2 = j;
      float f3 = k;
      float f4 = i;
      paramCanvas.drawLine(f1, f2, f3, f4, b);
    }
  }
  
  public void setAdAsWatched(CBSAd paramCBSAd)
  {
    try
    {
      if ((e != null) && (e.size() > 0))
      {
        Iterator localIterator = e.iterator();
        while (localIterator.hasNext())
        {
          CBSAd localCBSAd = (CBSAd)localIterator.next();
          if ((paramCBSAd.getStartTime() == localCBSAd.getStartTime()) && (paramCBSAd.getId().equals(localCBSAd.getId()))) {
            localCBSAd.setWatched(true);
          }
        }
      }
      invalidate();
    }
    finally {}
  }
  
  public void setAds(List<CBSAd> paramList)
  {
    try
    {
      e = paramList;
      if ((e != null) && (e.size() > 0))
      {
        paramList = e.iterator();
        while (paramList.hasNext()) {
          ((CBSAd)paramList.next()).setWatched(false);
        }
      }
      invalidate();
    }
    finally {}
  }
  
  public void setPaused(boolean paramBoolean)
  {
    d = paramBoolean;
    if (paramBoolean) {
      setEnabled(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.ChromecastSeekBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */