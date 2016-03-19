package android.support.design.widget;

import android.graphics.drawable.Drawable;
import android.view.View;

public final class TabLayout$c
{
  private Drawable a;
  private CharSequence b;
  private CharSequence c;
  private int d = -1;
  private View e;
  private final TabLayout f;
  
  TabLayout$c(TabLayout paramTabLayout)
  {
    f = paramTabLayout;
  }
  
  public final c a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    if (d >= 0) {
      TabLayout.a(f, d);
    }
    return this;
  }
  
  public final View a()
  {
    return e;
  }
  
  final void a(int paramInt)
  {
    d = paramInt;
  }
  
  public final Drawable b()
  {
    return a;
  }
  
  public final int c()
  {
    return d;
  }
  
  public final CharSequence d()
  {
    return b;
  }
  
  public final void e()
  {
    f.a(this);
  }
  
  public final CharSequence f()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */