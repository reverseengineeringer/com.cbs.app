package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R.styleable;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

public class AppBarLayout$ScrollingViewBehavior
  extends HeaderScrollingViewBehavior
{
  private int a;
  
  public AppBarLayout$ScrollingViewBehavior() {}
  
  public AppBarLayout$ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ScrollingViewBehavior_Params);
    a = paramContext.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Params_behavior_overlapTop, 0);
    paramContext.recycle();
  }
  
  private boolean c(View paramView)
  {
    boolean bool = false;
    CoordinatorLayout.Behavior localBehavior = getLayoutParamsa;
    int j;
    int k;
    int i;
    int m;
    if ((localBehavior instanceof AppBarLayout.Behavior))
    {
      j = ((AppBarLayout.Behavior)localBehavior).a();
      k = paramView.getHeight();
      if ((a == 0) || (!(paramView instanceof AppBarLayout))) {
        break label137;
      }
      paramView = (AppBarLayout)paramView;
      i = paramView.a();
      m = AppBarLayout.b(paramView);
      if ((m == 0) || (i + j > m)) {
        break label100;
      }
      i = 0;
    }
    for (;;)
    {
      super.a(k + j - i);
      bool = true;
      return bool;
      label100:
      i -= m;
      if (i != 0) {
        i = k.a(Math.round((j / i + 1.0F) * a), 0, a);
      } else {
        label137:
        i = a;
      }
    }
  }
  
  final View a(List<View> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramList.get(i);
      if ((localView instanceof AppBarLayout)) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt)
  {
    super.a(paramCoordinatorLayout, paramView, paramInt);
    paramCoordinatorLayout = paramCoordinatorLayout.c(paramView);
    int i = paramCoordinatorLayout.size();
    paramInt = 0;
    while ((paramInt < i) && (!c((View)paramCoordinatorLayout.get(paramInt)))) {
      paramInt += 1;
    }
    return true;
  }
  
  public final boolean a_(View paramView)
  {
    return paramView instanceof AppBarLayout;
  }
  
  final int b(View paramView)
  {
    if ((paramView instanceof AppBarLayout)) {
      return ((AppBarLayout)paramView).a();
    }
    return super.b(paramView);
  }
  
  public final boolean b(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    c(paramView2);
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.ScrollingViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */