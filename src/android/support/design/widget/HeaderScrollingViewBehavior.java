package android.support.design.widget;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import java.util.List;

abstract class HeaderScrollingViewBehavior
  extends ViewOffsetBehavior<View>
{
  public HeaderScrollingViewBehavior() {}
  
  public HeaderScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  abstract View a(List<View> paramList);
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = getLayoutParamsheight;
    Object localObject;
    if ((j == -1) || (j == -2))
    {
      localObject = paramCoordinatorLayout.c(paramView);
      if (!((List)localObject).isEmpty()) {
        break label41;
      }
    }
    label41:
    do
    {
      return false;
      localObject = a((List)localObject);
    } while ((localObject == null) || (!ViewCompat.isLaidOut((View)localObject)));
    if (ViewCompat.getFitsSystemWindows((View)localObject)) {
      ViewCompat.setFitsSystemWindows(paramView, true);
    }
    int i = View.MeasureSpec.getSize(paramInt3);
    paramInt3 = i;
    if (i == 0) {
      paramInt3 = paramCoordinatorLayout.getHeight();
    }
    int k = ((View)localObject).getMeasuredHeight();
    int m = b((View)localObject);
    if (j == -1) {}
    for (i = 1073741824;; i = Integer.MIN_VALUE)
    {
      paramCoordinatorLayout.a(paramView, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(m + (paramInt3 - k), i), paramInt4);
      return true;
    }
  }
  
  int b(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.HeaderScrollingViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */