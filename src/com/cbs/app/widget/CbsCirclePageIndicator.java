package com.cbs.app.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import com.viewpagerindicator.R.styleable;
import com.viewpagerindicator.c;

public class CbsCirclePageIndicator
  extends View
  implements c
{
  private int a = -1;
  private final Paint b = new Paint(1);
  private final Paint c = new Paint(1);
  private final Paint d = new Paint(1);
  private float e;
  private ViewPager f;
  private ViewPager.OnPageChangeListener g;
  private int h;
  private int i;
  private float j;
  private int k;
  private int l;
  private boolean m;
  private boolean n;
  private int o;
  private float p = -1.0F;
  private boolean q;
  
  public CbsCirclePageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CbsCirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772361);
  }
  
  public CbsCirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int i1 = ((Resources)localObject).getColor(2131558481);
    int i2 = ((Resources)localObject).getColor(2131558480);
    int i3 = ((Resources)localObject).getInteger(2131492873);
    int i4 = ((Resources)localObject).getColor(2131558482);
    float f1 = ((Resources)localObject).getDimension(2131362023);
    float f2 = ((Resources)localObject).getDimension(2131362022);
    boolean bool1 = ((Resources)localObject).getBoolean(2131296265);
    boolean bool2 = ((Resources)localObject).getBoolean(2131296266);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CirclePageIndicator, paramInt, 0);
    m = paramAttributeSet.getBoolean(2, bool1);
    l = paramAttributeSet.getInt(0, i3);
    b.setStyle(Paint.Style.FILL);
    b.setColor(paramAttributeSet.getColor(5, i1));
    c.setStyle(Paint.Style.STROKE);
    c.setColor(paramAttributeSet.getColor(8, i4));
    c.setStrokeWidth(paramAttributeSet.getDimension(3, f1));
    d.setStyle(Paint.Style.FILL);
    d.setColor(paramAttributeSet.getColor(4, i2));
    e = paramAttributeSet.getDimension(6, f2);
    n = paramAttributeSet.getBoolean(7, bool2);
    localObject = paramAttributeSet.getDrawable(1);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    o = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(paramContext));
  }
  
  private int a(int paramInt)
  {
    int i3 = View.MeasureSpec.getMode(paramInt);
    int i1 = View.MeasureSpec.getSize(paramInt);
    if ((i3 == 1073741824) || (f == null)) {
      paramInt = i1;
    }
    int i2;
    do
    {
      return paramInt;
      i2 = (int)(getPaddingLeft() + getPaddingRight() + 10.0F * e + 4.0F * e + 1.0F);
      paramInt = i2;
    } while (i3 != Integer.MIN_VALUE);
    return Math.min(i2, i1);
  }
  
  private int b(int paramInt)
  {
    int i1 = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    if (i1 == 1073741824) {
      return paramInt;
    }
    int i2 = (int)(2.0F * e + getPaddingTop() + getPaddingBottom() + 1.0F);
    if (i1 == Integer.MIN_VALUE) {
      return Math.min(i2, paramInt);
    }
    return i2;
  }
  
  public int getFillColor()
  {
    return d.getColor();
  }
  
  public int getOrientation()
  {
    return l;
  }
  
  public int getPageColor()
  {
    return b.getColor();
  }
  
  public float getRadius()
  {
    return e;
  }
  
  public int getStrokeColor()
  {
    return c.getColor();
  }
  
  public float getStrokeWidth()
  {
    return c.getStrokeWidth();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i5 = 0;
    super.onDraw(paramCanvas);
    if (f == null) {
      return;
    }
    if (h >= 5)
    {
      setCurrentItem(0);
      return;
    }
    int i4;
    int i3;
    int i2;
    int i1;
    float f6;
    float f1;
    float f3;
    float f2;
    float f4;
    label168:
    float f5;
    if (l == 0)
    {
      i4 = getWidth();
      i3 = getPaddingLeft();
      i2 = getPaddingRight();
      i1 = getPaddingTop();
      f6 = 3.0F * e;
      f1 = i1;
      f1 = e + f1;
      f3 = i3 + e;
      f2 = f3;
      if (m) {
        f2 = f3 + ((i4 - i3 - i2) / 2.0F - 5.0F * f6 / 2.0F);
      }
      f4 = e;
      f3 = f4;
      i1 = i5;
      if (c.getStrokeWidth() > 0.0F)
      {
        f3 = f4 - c.getStrokeWidth() / 2.0F;
        i1 = i5;
      }
      if (i1 >= 5) {
        break label290;
      }
      f4 = i1 * f6 + f2;
      if (l != 0) {
        break label284;
      }
      f5 = f4;
      f4 = f1;
    }
    for (;;)
    {
      if (b.getAlpha() > 0) {
        paramCanvas.drawCircle(f5, f4, f3, b);
      }
      if (f3 != e) {
        paramCanvas.drawCircle(f5, f4, e, c);
      }
      i1 += 1;
      break label168;
      i4 = getHeight();
      i3 = getPaddingTop();
      i2 = getPaddingBottom();
      i1 = getPaddingLeft();
      break;
      label284:
      f5 = f1;
    }
    label290:
    if (n)
    {
      i1 = i;
      f4 = i1 * f6;
      f3 = f4;
      if (!n) {
        f3 = f4 + j * f6;
      }
      if (l != 0) {
        break label376;
      }
      f3 = f2 + f3;
      f2 = f1;
      f1 = f3;
    }
    for (;;)
    {
      paramCanvas.drawCircle(f1, f2, e, d);
      return;
      i1 = h;
      break;
      label376:
      f2 += f3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (l == 0)
    {
      setMeasuredDimension(a(paramInt1), b(paramInt2));
      return;
    }
    setMeasuredDimension(b(paramInt1), a(paramInt2));
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    k = paramInt;
    if (g != null) {
      g.onPageScrollStateChanged(paramInt);
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    j = paramFloat;
    h = (paramInt1 % 5);
    invalidate();
    if (g != null) {
      g.onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public void onPageSelected(int paramInt)
  {
    h = (paramInt % 5);
    i = (paramInt % 5);
    invalidate();
    if (g != null) {
      g.onPageSelected(paramInt);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    h = a;
    i = a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = h;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (super.onTouchEvent(paramMotionEvent)) {}
    label316:
    do
    {
      do
      {
        float f1;
        float f2;
        do
        {
          do
          {
            do
            {
              do
              {
                return true;
                if ((f == null) || (f.getAdapter().getCount() == 0)) {
                  return false;
                }
                i2 = paramMotionEvent.getAction() & 0xFF;
                switch (i2)
                {
                case 4: 
                default: 
                  return true;
                case 0: 
                  a = MotionEventCompat.getPointerId(paramMotionEvent, 0);
                  p = paramMotionEvent.getX();
                  return true;
                case 2: 
                  f1 = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, a));
                  f2 = f1 - p;
                  if ((!q) && (Math.abs(f2) > o)) {
                    q = true;
                  }
                  break;
                }
              } while (!q);
              p = f1;
            } while ((!f.isFakeDragging()) && (!f.beginFakeDrag()));
            f.fakeDragBy(f2);
            return true;
            if (q) {
              break label316;
            }
            i1 = getWidth();
            f1 = i1 / 2.0F;
            f2 = i1 / 6.0F;
            if ((h <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
              break;
            }
          } while (i2 == 3);
          f.setCurrentItem(h - 1);
        } while (h - 1 != 0);
        onPageSelected(0);
        return true;
        if ((h >= 4) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (i2 == 3);
      f.setCurrentItem(h + 1);
      return true;
      q = false;
      a = -1;
    } while (!f.isFakeDragging());
    f.endFakeDrag();
    return true;
    i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    p = MotionEventCompat.getX(paramMotionEvent, i1);
    a = MotionEventCompat.getPointerId(paramMotionEvent, i1);
    return true;
    int i2 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i2) == a)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      a = MotionEventCompat.getPointerId(paramMotionEvent, i1);
    }
    p = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, a));
    return true;
  }
  
  public void setCentered(boolean paramBoolean)
  {
    m = paramBoolean;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (f == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    f.setCurrentItem(paramInt);
    h = paramInt;
    if (paramInt == 0) {
      onPageSelected(0);
    }
  }
  
  public void setFillColor(int paramInt)
  {
    d.setColor(paramInt);
    invalidate();
  }
  
  public void setOnPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    g = paramOnPageChangeListener;
  }
  
  public void setOrientation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }
    l = paramInt;
    requestLayout();
  }
  
  public void setPageColor(int paramInt)
  {
    b.setColor(paramInt);
    invalidate();
  }
  
  public void setRadius(float paramFloat)
  {
    e = paramFloat;
    invalidate();
  }
  
  public void setSnap(boolean paramBoolean)
  {
    n = paramBoolean;
    invalidate();
  }
  
  public void setStrokeColor(int paramInt)
  {
    c.setColor(paramInt);
    invalidate();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    c.setStrokeWidth(paramFloat);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (f == paramViewPager) {
      return;
    }
    if (f != null) {
      f.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    f = paramViewPager;
    f.setOnPageChangeListener(this);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager, int paramInt)
  {
    setViewPager(paramViewPager);
    setCurrentItem(paramInt);
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    int a;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.CbsCirclePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */