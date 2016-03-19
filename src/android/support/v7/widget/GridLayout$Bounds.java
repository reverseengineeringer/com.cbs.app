package android.support.v7.widget;

import android.support.v4.view.ViewGroupCompat;
import android.view.View;

class GridLayout$Bounds
{
  public int after;
  public int before;
  public int flexibility;
  
  private GridLayout$Bounds()
  {
    reset();
  }
  
  protected int getOffset(GridLayout paramGridLayout, View paramView, GridLayout.Alignment paramAlignment, int paramInt, boolean paramBoolean)
  {
    return before - paramAlignment.getAlignmentValue(paramView, paramInt, ViewGroupCompat.getLayoutMode(paramGridLayout));
  }
  
  protected void include(int paramInt1, int paramInt2)
  {
    before = Math.max(before, paramInt1);
    after = Math.max(after, paramInt2);
  }
  
  protected final void include(GridLayout paramGridLayout, View paramView, GridLayout.Spec paramSpec, GridLayout.Axis paramAxis, int paramInt)
  {
    flexibility &= paramSpec.getFlexibility();
    int i = paramSpec.getAbsoluteAlignment(horizontal).getAlignmentValue(paramView, paramInt, ViewGroupCompat.getLayoutMode(paramGridLayout));
    include(i, paramInt - i);
  }
  
  protected void reset()
  {
    before = Integer.MIN_VALUE;
    after = Integer.MIN_VALUE;
    flexibility = 2;
  }
  
  protected int size(boolean paramBoolean)
  {
    if ((!paramBoolean) && (GridLayout.canStretch(flexibility))) {
      return 100000;
    }
    return before + after;
  }
  
  public String toString()
  {
    return "Bounds{before=" + before + ", after=" + after + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.Bounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */