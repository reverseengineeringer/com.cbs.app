package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R.id;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Lollipop
  extends ItemTouchUIUtilImpl.Honeycomb
{
  private float findMaxElevation(RecyclerView paramRecyclerView, View paramView)
  {
    int j = paramRecyclerView.getChildCount();
    float f1 = 0.0F;
    int i = 0;
    if (i < j)
    {
      View localView = paramRecyclerView.getChildAt(i);
      if (localView == paramView) {
        break label60;
      }
      float f2 = ViewCompat.getElevation(localView);
      if (f2 <= f1) {
        break label60;
      }
      f1 = f2;
    }
    label60:
    for (;;)
    {
      i += 1;
      break;
      return f1;
    }
  }
  
  public void clearView(View paramView)
  {
    Object localObject = paramView.getTag(R.id.item_touch_helper_previous_elevation);
    if ((localObject != null) && ((localObject instanceof Float))) {
      ViewCompat.setElevation(paramView, ((Float)localObject).floatValue());
    }
    paramView.setTag(R.id.item_touch_helper_previous_elevation, null);
    super.clearView(paramView);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramView.getTag(R.id.item_touch_helper_previous_elevation) == null))
    {
      float f = ViewCompat.getElevation(paramView);
      ViewCompat.setElevation(paramView, 1.0F + findMaxElevation(paramRecyclerView, paramView));
      paramView.setTag(R.id.item_touch_helper_previous_elevation, Float.valueOf(f));
    }
    super.onDraw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchUIUtilImpl.Lollipop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */