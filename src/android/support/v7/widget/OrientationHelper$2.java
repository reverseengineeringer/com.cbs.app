package android.support.v7.widget;

import android.view.View;

final class OrientationHelper$2
  extends OrientationHelper
{
  OrientationHelper$2(RecyclerView.LayoutManager paramLayoutManager)
  {
    super(paramLayoutManager, null);
  }
  
  public final int getDecoratedEnd(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedBottom(paramView);
    return bottomMargin + i;
  }
  
  public final int getDecoratedMeasurement(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedMeasuredHeight(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public final int getDecoratedMeasurementInOther(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedMeasuredWidth(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public final int getDecoratedStart(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return mLayoutManager.getDecoratedTop(paramView) - topMargin;
  }
  
  public final int getEnd()
  {
    return mLayoutManager.getHeight();
  }
  
  public final int getEndAfterPadding()
  {
    return mLayoutManager.getHeight() - mLayoutManager.getPaddingBottom();
  }
  
  public final int getEndPadding()
  {
    return mLayoutManager.getPaddingBottom();
  }
  
  public final int getStartAfterPadding()
  {
    return mLayoutManager.getPaddingTop();
  }
  
  public final int getTotalSpace()
  {
    return mLayoutManager.getHeight() - mLayoutManager.getPaddingTop() - mLayoutManager.getPaddingBottom();
  }
  
  public final void offsetChild(View paramView, int paramInt)
  {
    paramView.offsetTopAndBottom(paramInt);
  }
  
  public final void offsetChildren(int paramInt)
  {
    mLayoutManager.offsetChildrenVertical(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.OrientationHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */