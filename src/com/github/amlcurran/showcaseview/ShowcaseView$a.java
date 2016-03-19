package com.github.amlcurran.showcaseview;

import android.app.Activity;
import com.github.amlcurran.showcaseview.a.a;

public final class ShowcaseView$a
{
  final ShowcaseView a;
  private final Activity b;
  
  public ShowcaseView$a(Activity paramActivity)
  {
    b = paramActivity;
    a = new ShowcaseView(paramActivity, true);
    a.setTarget(a.a);
  }
  
  public final a a(a parama)
  {
    a.setTarget(parama);
    return this;
  }
  
  public final a a(CharSequence paramCharSequence)
  {
    a.setContentText(paramCharSequence);
    return this;
  }
  
  public final ShowcaseView a()
  {
    ShowcaseView.a(a, b);
    return a;
  }
  
  public final a b()
  {
    a.setStyle(2131427560);
    return this;
  }
  
  public final a c()
  {
    a.setBlocksTouches(true);
    a.setHideOnTouchOutside(true);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.github.amlcurran.showcaseview.ShowcaseView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */