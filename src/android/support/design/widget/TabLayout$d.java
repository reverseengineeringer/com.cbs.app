package android.support.design.widget;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import java.lang.ref.WeakReference;

public final class TabLayout$d
  implements ViewPager.OnPageChangeListener
{
  private final WeakReference<TabLayout> a;
  private int b;
  private int c;
  
  public TabLayout$d(TabLayout paramTabLayout)
  {
    a = new WeakReference(paramTabLayout);
  }
  
  public final void onPageScrollStateChanged(int paramInt)
  {
    b = c;
    c = paramInt;
  }
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    boolean bool2 = true;
    TabLayout localTabLayout = (TabLayout)a.get();
    if (localTabLayout != null)
    {
      bool1 = bool2;
      if (c != 1) {
        if ((c != 2) || (b != 1)) {
          break label62;
        }
      }
    }
    label62:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localTabLayout.setScrollPosition(paramInt1, paramFloat, bool1);
      return;
    }
  }
  
  public final void onPageSelected(int paramInt)
  {
    TabLayout localTabLayout = (TabLayout)a.get();
    TabLayout.c localc;
    if ((localTabLayout != null) && (localTabLayout.a() != paramInt))
    {
      localc = localTabLayout.a(paramInt);
      if (c != 0) {
        break label47;
      }
    }
    label47:
    for (boolean bool = true;; bool = false)
    {
      localTabLayout.a(localc, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */