package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

final class GridLayout$5
  extends GridLayout.Alignment
{
  GridLayout$5(GridLayout.Alignment paramAlignment1, GridLayout.Alignment paramAlignment2) {}
  
  public final int getAlignmentValue(View paramView, int paramInt1, int paramInt2)
  {
    int i = 1;
    if (ViewCompat.getLayoutDirection(paramView) == 1) {
      if (i != 0) {
        break label37;
      }
    }
    label37:
    for (GridLayout.Alignment localAlignment = val$ltr;; localAlignment = val$rtl)
    {
      return localAlignment.getAlignmentValue(paramView, paramInt1, paramInt2);
      i = 0;
      break;
    }
  }
  
  final String getDebugString()
  {
    return "SWITCHING[L:" + val$ltr.getDebugString() + ", R:" + val$rtl.getDebugString() + "]";
  }
  
  final int getGravityOffset(View paramView, int paramInt)
  {
    int i = 1;
    if (ViewCompat.getLayoutDirection(paramView) == 1) {
      if (i != 0) {
        break label33;
      }
    }
    label33:
    for (GridLayout.Alignment localAlignment = val$ltr;; localAlignment = val$rtl)
    {
      return localAlignment.getGravityOffset(paramView, paramInt);
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayout.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */