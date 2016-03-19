package com.cbs.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;

public class ObservableHorizontalScrollView
  extends HorizontalScrollView
{
  private HorizontalScrollViewListener a = null;
  
  public ObservableHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ObservableHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ObservableHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (a != null) {
      a.a(this, paramInt1, paramInt2);
    }
  }
  
  public void setScrollViewListener(HorizontalScrollViewListener paramHorizontalScrollViewListener)
  {
    a = paramHorizontalScrollViewListener;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ObservableHorizontalScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */