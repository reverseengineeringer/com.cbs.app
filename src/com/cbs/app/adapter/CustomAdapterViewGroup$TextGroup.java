package com.cbs.app.adapter;

import android.content.Context;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;

public class CustomAdapterViewGroup$TextGroup
  extends ViewGroup
{
  public TextView a;
  public TextView b;
  public TextView c;
  public TextView d;
  
  public CustomAdapterViewGroup$TextGroup(CustomAdapterViewGroup paramCustomAdapterViewGroup, Context paramContext)
  {
    super(paramContext);
    a = new TextView(paramContext);
    b = new TextView(paramContext);
    c = new TextView(paramContext);
    d = new TextView(paramContext);
    if (CustomAdapterViewGroup.a(paramCustomAdapterViewGroup))
    {
      a.setTextAppearance(paramContext, 2131427544);
      b.setTextAppearance(paramContext, 2131427545);
      c.setTextAppearance(paramContext, 2131427545);
      d.setTextAppearance(paramContext, 2131427545);
    }
    for (;;)
    {
      a.setMaxLines(2);
      a.setEllipsize(TextUtils.TruncateAt.END);
      b.setMaxLines(2);
      b.setEllipsize(TextUtils.TruncateAt.END);
      addView(a);
      addView(b);
      addView(c);
      addView(d);
      return;
      a.setTextAppearance(paramContext, 2131427542);
      b.setTextAppearance(paramContext, 2131427546);
      c.setTextAppearance(paramContext, 2131427546);
      d.setTextAppearance(paramContext, 2131427546);
      d.setTextColor(CustomAdapterViewGroup.b(paramCustomAdapterViewGroup));
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = a.getMeasuredHeight();
    int i = b.getMeasuredHeight();
    int j = c.getMeasuredHeight();
    a.layout(0, 0, paramInt3, paramInt2);
    b.layout(0, paramInt2, CustomAdapterViewGroup.c(e) - CustomAdapterViewGroup.d(e), paramInt2 + i);
    if (CustomAdapterViewGroup.a(e))
    {
      c.layout(0, paramInt2 + i, paramInt3, paramInt2 + i + j);
      d.layout(0, paramInt2 + i + j, CustomAdapterViewGroup.c(e), CustomAdapterViewGroup.e(e));
      return;
    }
    c.layout(0, paramInt2 + i, c.getMeasuredWidth(), CustomAdapterViewGroup.e(e));
    paramInt1 = (int)(3.5F * paramInt1);
    d.layout(CustomAdapterViewGroup.c(e) - paramInt1 - d.getMeasuredWidth(), paramInt2 + i, CustomAdapterViewGroup.c(e) - paramInt1, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < 3)
    {
      if (getChildAt(i).getVisibility() == 0) {
        getChildAt(i).measure(paramInt1, paramInt2);
      }
      i += 1;
    }
    i = View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE);
    d.measure(i, paramInt2);
    setMeasuredDimension(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.CustomAdapterViewGroup.TextGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */