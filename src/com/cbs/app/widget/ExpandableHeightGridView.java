package com.cbs.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class ExpandableHeightGridView
  extends GridView
{
  boolean a = false;
  
  public ExpandableHeightGridView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ExpandableHeightGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ExpandableHeightGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if (a)
    {
      super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
      getLayoutParamsheight = getMeasuredHeight();
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ExpandableHeightGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */