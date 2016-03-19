package android.support.v7.widget;

import android.view.View;

class GridLayout$7$1
  extends GridLayout.Bounds
{
  private int size;
  
  GridLayout$7$1(GridLayout.7 param7)
  {
    super(null);
  }
  
  protected int getOffset(GridLayout paramGridLayout, View paramView, GridLayout.Alignment paramAlignment, int paramInt, boolean paramBoolean)
  {
    return Math.max(0, super.getOffset(paramGridLayout, paramView, paramAlignment, paramInt, paramBoolean));
  }
  
  protected void include(int paramInt1, int paramInt2)
  {
    super.include(paramInt1, paramInt2);
    size = Math.max(size, paramInt1 + paramInt2);
  }
  
  protected void reset()
  {
    super.reset();
    size = Integer.MIN_VALUE;
  }
  
  protected int size(boolean paramBoolean)
  {
    return Math.max(super.size(paramBoolean), size);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */