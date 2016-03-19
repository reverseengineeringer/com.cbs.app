package ru.truba.touchgallery.GalleryWidget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.PointF;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import ru.truba.touchgallery.TouchView.TouchImageView;

public class GalleryViewPager
  extends ViewPager
{
  PointF a;
  public TouchImageView b;
  protected GalleryViewPager.a c;
  private float d;
  private float e;
  
  public GalleryViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public GalleryViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static boolean a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 = Math.abs(paramFloat1 - paramFloat2);
    paramFloat2 = Math.abs(paramFloat3 - paramFloat4);
    return (paramFloat1 <= 5.0F) && (paramFloat2 <= 5.0F);
  }
  
  @TargetApi(5)
  private float[] a(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
    case 0: 
      for (;;)
      {
        return null;
        a = new PointF(paramMotionEvent.getX(0), paramMotionEvent.getY(0));
      }
    }
    paramMotionEvent = new PointF(paramMotionEvent.getX(0), paramMotionEvent.getY(0));
    return new float[] { x - a.x, y - a.y };
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if ((paramMotionEvent.getAction() & 0xFF) == 1)
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if (!a(d, f1, e, f2)) {
        break label107;
      }
      if (c != null) {
        getCurrentItem();
      }
    }
    if ((paramMotionEvent.getAction() & 0xFF) == 0)
    {
      d = paramMotionEvent.getX();
      e = paramMotionEvent.getY();
    }
    float[] arrayOfFloat = a(paramMotionEvent);
    boolean bool1;
    if (b.a()) {
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
    }
    label107:
    do
    {
      do
      {
        return bool1;
        super.onInterceptTouchEvent(paramMotionEvent);
        break;
        if ((arrayOfFloat != null) && (b.E) && (arrayOfFloat[0] < 0.0F)) {
          return super.onInterceptTouchEvent(paramMotionEvent);
        }
        if ((arrayOfFloat != null) && (b.C) && (arrayOfFloat[0] > 0.0F)) {
          return super.onInterceptTouchEvent(paramMotionEvent);
        }
        bool1 = bool2;
      } while (arrayOfFloat != null);
      if (b.C) {
        break label209;
      }
      bool1 = bool2;
    } while (!b.E);
    label209:
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if ((paramMotionEvent.getAction() & 0xFF) == 1)
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if (!a(d, f1, e, f2)) {
        break label107;
      }
      if (c != null) {
        getCurrentItem();
      }
    }
    if ((paramMotionEvent.getAction() & 0xFF) == 0)
    {
      d = paramMotionEvent.getX();
      e = paramMotionEvent.getY();
    }
    float[] arrayOfFloat = a(paramMotionEvent);
    boolean bool1;
    if (b.a()) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    label107:
    do
    {
      do
      {
        return bool1;
        super.onTouchEvent(paramMotionEvent);
        break;
        if ((arrayOfFloat != null) && (b.E) && (arrayOfFloat[0] < 0.0F)) {
          return super.onTouchEvent(paramMotionEvent);
        }
        if ((arrayOfFloat != null) && (b.C) && (arrayOfFloat[0] > 0.0F)) {
          return super.onTouchEvent(paramMotionEvent);
        }
        bool1 = bool2;
      } while (arrayOfFloat != null);
      if (b.C) {
        break label209;
      }
      bool1 = bool2;
    } while (!b.E);
    label209:
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setOnItemClickListener(GalleryViewPager.a parama)
  {
    c = parama;
  }
}

/* Location:
 * Qualified Name:     ru.truba.touchgallery.GalleryWidget.GalleryViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */