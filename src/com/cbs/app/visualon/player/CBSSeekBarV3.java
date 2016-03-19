package com.cbs.app.visualon.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.widget.SeekBar;
import com.cbs.app.R.styleable;
import com.cbs.app.view.utils.Util;
import com.visualon.OSMPPlayer.VOOSMPAdInfo;
import com.visualon.OSMPPlayer.VOOSMPAdPeriod;
import java.util.ArrayList;
import java.util.Iterator;

public class CBSSeekBarV3
  extends SeekBar
{
  private ArrayList<AdPeriod> a = new ArrayList();
  private Paint b;
  private int c = -65536;
  private int d = -16711936;
  private float e;
  private long f;
  private SparseBooleanArray g = new SparseBooleanArray();
  private float h;
  private boolean i = true;
  
  public CBSSeekBarV3(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public CBSSeekBarV3(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public CBSSeekBarV3(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  @TargetApi(21)
  public CBSSeekBarV3(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet, paramInt1);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    if (paramAttributeSet != null) {
      if (paramInt == 0) {
        break label137;
      }
    }
    label137:
    for (paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AdPodProgressBar, 0, 0);; paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AdPodProgressBar))
    {
      c = paramContext.getColor(0, -65536);
      d = paramContext.getColor(1, -16711936);
      paramAttributeSet = getResources();
      float f1 = TypedValue.applyDimension(1, 4.0F, paramAttributeSet.getDisplayMetrics());
      float f2 = TypedValue.applyDimension(1, 4.0F, paramAttributeSet.getDisplayMetrics());
      h = paramContext.getDimension(2, f1);
      e = paramContext.getDimension(3, f2);
      b = new Paint(1);
      b.setColor(c);
      b.setStrokeWidth(h);
      b.setStyle(Paint.Style.FILL);
      return;
    }
  }
  
  private void a(Canvas paramCanvas, float paramFloat, int paramInt)
  {
    float f1 = (getHeight() - e) / 2.0F;
    float f2 = e;
    b.setColor(paramInt);
    paramCanvas.drawLine(paramFloat, f1, paramFloat, f1 + f2, b);
  }
  
  public final void a(int paramInt)
  {
    if (a != null)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        if (((AdPeriod)localIterator.next()).getId() == paramInt) {
          g.put(paramInt, true);
        }
      }
    }
    invalidate();
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = getProgressDrawable();
    if ((!isEnabled()) && (localDrawable != null)) {
      localDrawable.setAlpha(255);
    }
  }
  
  public ArrayList<AdPeriod> getAdPeriods()
  {
    return a;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int m;
    int k;
    label262:
    int j;
    for (;;)
    {
      int i1;
      Object localObject2;
      float f1;
      try
      {
        super.onDraw(paramCanvas);
        if ((getWidth() <= 0) || (a == null) || (a.size() <= 0) || (i)) {
          break label477;
        }
        i1 = paramCanvas.save();
        paramCanvas.translate(2.0F, 0.0F);
        localObject2 = getProgressDrawable();
        if (localObject2 != null)
        {
          e = ((Drawable)localObject2).getBounds().height();
          break label495;
          if (m >= a.size()) {
            break label471;
          }
          localObject2 = (AdPeriod)a.get(m);
          if (localObject2 == null) {
            break label492;
          }
          if (!((AdPeriod)localObject2).a()) {
            break label262;
          }
          bool = g.get(((AdPeriod)localObject2).getId());
          Object localObject1;
          f1 = (float)localObject1;
          l = ((float)(((AdPeriod)localObject2).getEndTime() - ((AdPeriod)localObject2).getStartTime()) - b.getStrokeWidth() + f1);
          if (m != a.size() - 1) {
            break label522;
          }
          f1 = getWidth();
          float f2 = b.getStrokeWidth();
          float f3 = getPaddingRight();
          if (bool)
          {
            k = d;
            a(paramCanvas, f1 - f2 - f3 - 6.0F, k);
            k = 0;
            bool = false;
            break;
          }
        }
        else
        {
          e = Util.a(getContext(), 4.0D);
        }
      }
      finally {}
      k = c;
      continue;
      if (k != 0)
      {
        if (j != 0)
        {
          localObject2 = (AdPeriod)a.get(0);
          if (f == 0L) {
            break label486;
          }
          f1 = getWidth() - (getPaddingRight() + getPaddingLeft() + 12);
        }
        label471:
        label477:
        label486:
        for (j = (int)((float)((AdPeriod)localObject2).getStartTime() / (float)f * f1) + getPaddingLeft();; j = 0)
        {
          f1 = j;
          if (bool) {}
          for (j = d;; j = c)
          {
            a(paramCanvas, f1, j);
            j = 0;
            bool = false;
            break;
          }
          if (f != 0L) {
            f1 = getWidth() - (getPaddingRight() + getPaddingLeft() + 12);
          }
          for (j = (int)((float)(((AdPeriod)localObject2).getStartTime() - l) / getMax() * f1) + getPaddingLeft() + 6;; j = 0)
          {
            f1 = j;
            if (bool) {}
            for (j = d;; j = c)
            {
              a(paramCanvas, f1, j);
              j = k;
              break;
            }
            paramCanvas.restoreToCount(i1);
            return;
          }
        }
      }
      label492:
      break;
      label495:
      k = 0;
      boolean bool = false;
      j = 1;
      long l = 0L;
      m = 0;
    }
    for (;;)
    {
      m += 1;
      break;
      label522:
      k = 1;
      continue;
      int n = 0;
      k = j;
      j = n;
    }
  }
  
  public void setAdPeriods(ArrayList<AdPeriod> paramArrayList)
  {
    a = paramArrayList;
    if ((a != null) && (!a.isEmpty())) {
      f = ((AdPeriod)a.get(a.size() - 1)).getEndTime();
    }
  }
  
  public final void setAdsInfo(VOOSMPAdInfo paramVOOSMPAdInfo)
  {
    a.clear();
    if (paramVOOSMPAdInfo != null)
    {
      paramVOOSMPAdInfo = paramVOOSMPAdInfo.getPeriodList();
      if ((paramVOOSMPAdInfo != null) && (paramVOOSMPAdInfo.size() > 0))
      {
        paramVOOSMPAdInfo = paramVOOSMPAdInfo.iterator();
        while (paramVOOSMPAdInfo.hasNext())
        {
          VOOSMPAdPeriod localVOOSMPAdPeriod = (VOOSMPAdPeriod)paramVOOSMPAdInfo.next();
          if (localVOOSMPAdPeriod != null)
          {
            ArrayList localArrayList = a;
            int j = localVOOSMPAdPeriod.getID();
            long l1 = localVOOSMPAdPeriod.getStartTime();
            long l2 = localVOOSMPAdPeriod.getEndTime();
            if (localVOOSMPAdPeriod.getPeriodType() == 1) {}
            for (boolean bool = true;; bool = false)
            {
              localArrayList.add(new AdPeriod(j, l1, l2, bool));
              break;
            }
          }
        }
      }
    }
    if (!a.isEmpty()) {
      f = ((AdPeriod)a.get(a.size() - 1)).getEndTime();
    }
  }
  
  public void setHideAds(boolean paramBoolean)
  {
    i = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSSeekBarV3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */