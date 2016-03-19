package android.support.v7.widget;

import android.view.View;

final class OrientationHelper$1
  extends OrientationHelper
{
  OrientationHelper$1(RecyclerView.LayoutManager paramLayoutManager)
  {
    super(paramLayoutManager, null);
  }
  
  public final int getDecoratedEnd(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedRight(paramView);
    return rightMargin + i;
  }
  
  public final int getDecoratedMeasurement(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedMeasuredWidth(paramView);
    int j = leftMargin;
    return rightMargin + (i + j);
  }
  
  public final int getDecoratedMeasurementInOther(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i = mLayoutManager.getDecoratedMeasuredHeight(paramView);
    int j = topMargin;
    return bottomMargin + (i + j);
  }
  
  public final int getDecoratedStart(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    return mLayoutManager.getDecoratedLeft(paramView) - leftMargin;
  }
  
  public final int getEnd()
  {
    return mLayoutManager.getWidth();
  }
  
  public final int getEndAfterPadding()
  {
    return mLayoutManager.getWidth() - mLayoutManager.getPaddingRight();
  }
  
  public final int getEndPadding()
  {
    return mLayoutManager.getPaddingRight();
  }
  
  public final int getStartAfterPadding()
  {
    return mLayoutManager.getPaddingLeft();
  }
  
  public final int getTotalSpace()
  {
    return mLayoutManager.getWidth() - mLayoutManager.getPaddingLeft() - mLayoutManager.getPaddingRight();
  }
  
  public final void offsetChild(View paramView, int paramInt)
  {
    paramView.offsetLeftAndRight(paramInt);
  }
  
  public final void offsetChildren(int paramInt)
  {
    mLayoutManager.offsetChildrenHorizontal(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.OrientationHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */