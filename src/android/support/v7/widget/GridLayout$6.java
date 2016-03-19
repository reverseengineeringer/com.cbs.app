package android.support.v7.widget;

import android.view.View;

final class GridLayout$6
  extends GridLayout.Alignment
{
  public final int getAlignmentValue(View paramView, int paramInt1, int paramInt2)
  {
    return paramInt1 >> 1;
  }
  
  final String getDebugString()
  {
    return "CENTER";
  }
  
  final int getGravityOffset(View paramView, int paramInt)
  {
    return paramInt >> 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */