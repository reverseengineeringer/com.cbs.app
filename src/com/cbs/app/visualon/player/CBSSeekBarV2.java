package com.cbs.app.visualon.player;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import com.cbs.app.R.styleable;
import com.cbs.app.view.utils.Util;
import com.visualon.OSMPPlayer.VOOSMPAdInfo;
import com.visualon.OSMPPlayer.VOOSMPAdPeriod;
import java.util.ArrayList;

public class CBSSeekBarV2
  extends SeekBar
{
  private static final String a = CBSSeekBarV2.class.getSimpleName();
  private VOOSMPAdInfo b = null;
  private boolean[] c = null;
  private long d;
  private Paint e = new Paint(1);
  private Paint f = new Paint(1);
  private Paint g = new Paint(1);
  private Context h;
  
  public CBSSeekBarV2(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public CBSSeekBarV2(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842875);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public CBSSeekBarV2(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    h = paramContext;
    float f1 = Util.a(h, 2.0D);
    int j = Color.parseColor("#4282c3");
    int i = Color.parseColor("#090708");
    if (paramAttributeSet != null) {
      if (paramInt != 0)
      {
        paramContext = h.obtainStyledAttributes(paramAttributeSet, R.styleable.seekBar, 0, 0);
        j = paramContext.getColor(0, j);
        paramInt = paramContext.getColor(2, i);
        i = paramContext.getColor(1, 0);
        f1 = paramContext.getDimension(3, f1);
      }
    }
    for (;;)
    {
      e.setColor(j);
      e.setStyle(Paint.Style.FILL);
      e.setStrokeWidth(f1);
      f.setColor(paramInt);
      f.setStyle(Paint.Style.FILL);
      f.setStrokeWidth(f1);
      g.setColor(i);
      g.setStyle(Paint.Style.FILL);
      g.setStrokeWidth(f1);
      return;
      paramContext = h.obtainStyledAttributes(paramAttributeSet, R.styleable.seekBar);
      break;
      int k = 0;
      paramInt = i;
      i = k;
    }
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    float f1;
    int m;
    float f2;
    float f3;
    label187:
    float f4;
    for (;;)
    {
      Object localObject;
      label206:
      int i4;
      try
      {
        super.onDraw(paramCanvas);
        if ((b == null) || (CBSPlayer.b())) {
          break label461;
        }
        f1 = getPaddingLeft();
        i = 0;
        j = 0;
        localObject = getProgressDrawable();
        int k;
        if (localObject != null)
        {
          k = ((Drawable)localObject).getBounds().height();
          int i1 = (int)Math.round(getHeight() / 2.0D);
          int i2 = getWidth();
          int i3 = getPaddingLeft();
          m = 0;
          if (m >= b.getPeriodList().size()) {
            break label461;
          }
          localObject = (VOOSMPAdPeriod)b.getPeriodList().get(m);
          if (d == 0L) {
            break label464;
          }
          f2 = (float)((VOOSMPAdPeriod)localObject).getStartTime() / (float)d * getMeasuredWidth();
          if (((VOOSMPAdPeriod)localObject).getPeriodType() == 0)
          {
            localObject = g;
            if (CBSPlayer.getTotalDuration() == 0L) {
              break label522;
            }
            f3 = 100.0F * (float)CBSPlayer.getSeekBarCurrentPosition() / (float)CBSPlayer.getTotalDuration();
            if (getWidth() == 0) {
              break label528;
            }
            f4 = 100.0F * f1 / getWidth();
            n = i1 - (int)Math.round(k / 2.0D);
            i4 = (int)Math.round(k / 2.0D) + i1;
            if (f1 >= i2 + i3) {
              break;
            }
            if (!localObject.equals(e)) {
              break label385;
            }
            if (i == 0) {
              continue;
            }
            paramCanvas.drawLine(f1, n, f1, i4, g);
            break label484;
          }
        }
        else
        {
          k = Util.a(h, 4.0D);
          continue;
        }
        if (c[m] != 0)
        {
          localObject = f;
          continue;
        }
        localObject = e;
        continue;
        if (f4 > f3) {
          paramCanvas.drawLine(f1, n, f1, i4, (Paint)localObject);
        }
      }
      finally {}
      f3 = n;
      f4 = i4;
      paramCanvas.drawLine(f1, f3, f1, f4, f);
      break label484;
      label385:
      if (localObject.equals(f))
      {
        if (j != 0)
        {
          paramCanvas.drawLine(f1, n, f1, i4, g);
          break label534;
        }
        paramCanvas.drawLine(f1, n, f1, i4, (Paint)localObject);
        break label534;
      }
      paramCanvas.drawLine(f1, n, f1, i4, (Paint)localObject);
      j = 0;
      i = 0;
      break label495;
      label461:
      return;
      label464:
      f2 = f1;
    }
    int n = i;
    int i = j;
    int j = n;
    break label495;
    label484:
    n = 1;
    i = j;
    j = n;
    for (;;)
    {
      label495:
      n = m + 1;
      m = j;
      f1 = f2;
      j = i;
      i = m;
      m = n;
      break;
      label522:
      f3 = 0.0F;
      break label187;
      label528:
      f4 = 0.0F;
      break label206;
      label534:
      n = 1;
      j = i;
      i = n;
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return (CBSPlayer.x()) || (super.onTouchEvent(paramMotionEvent)) || (CBSPlayer.a());
  }
  
  public final void setAdsInfo(VOOSMPAdInfo paramVOOSMPAdInfo)
  {
    b = paramVOOSMPAdInfo;
    if (b != null)
    {
      paramVOOSMPAdInfo = b.getPeriodList();
      if (paramVOOSMPAdInfo != null)
      {
        i = paramVOOSMPAdInfo.size();
        if (i > 0)
        {
          paramVOOSMPAdInfo = (VOOSMPAdPeriod)paramVOOSMPAdInfo.get(i - 1);
          if (paramVOOSMPAdInfo != null) {
            d = paramVOOSMPAdInfo.getEndTime();
          }
        }
      }
      int j = b.getCount();
      c = new boolean[j];
      int i = 0;
      while (i < j)
      {
        c[i] = false;
        i += 1;
      }
    }
    c = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSSeekBarV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */