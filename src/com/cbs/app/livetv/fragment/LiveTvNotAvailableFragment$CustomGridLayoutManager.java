package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

public class LiveTvNotAvailableFragment$CustomGridLayoutManager
  extends GridLayoutManager
{
  private int[] b = new int[2];
  
  public LiveTvNotAvailableFragment$CustomGridLayoutManager(LiveTvNotAvailableFragment paramLiveTvNotAvailableFragment, Context paramContext, int paramInt)
  {
    super(paramContext, paramInt, 1, false);
  }
  
  public void onMeasure(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int n = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    paramInt2 = 0;
    paramInt1 = 0;
    int j = 0;
    if (j < getItemCount())
    {
      int i = View.MeasureSpec.makeMeasureSpec(j, 0);
      int i2 = View.MeasureSpec.makeMeasureSpec(j, 0);
      paramState = b;
      View localView = paramRecycler.getViewForPosition(j);
      if (localView != null)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        localView.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), width), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), height));
        paramState[0] = (localView.getMeasuredWidth() + leftMargin + rightMargin);
        i = localView.getMeasuredHeight();
        i2 = bottomMargin;
        paramState[1] = (topMargin + (i + i2));
        paramRecycler.recycleView(localView);
      }
      if (getOrientation() == 0)
      {
        i = paramInt2;
        if (j % getSpanCount() == 0) {
          i = paramInt2 + b[0];
        }
        paramInt2 = i;
        if (j == 0)
        {
          paramInt1 = b[1];
          paramInt2 = i;
        }
      }
      for (;;)
      {
        j += 1;
        break;
        i = paramInt1;
        if (j % getSpanCount() == 0) {
          i = paramInt1 + b[1];
        }
        paramInt1 = i;
        if (j == 0)
        {
          paramInt2 = b[0];
          paramInt1 = i;
        }
      }
    }
    switch (i1)
    {
    default: 
      switch (n)
      {
      }
      break;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt2 = m;
      break;
      paramInt1 = k;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvNotAvailableFragment.CustomGridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */