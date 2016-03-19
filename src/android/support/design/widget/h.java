package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;

class h
  extends g
{
  private boolean j;
  
  h(View paramView, m paramm)
  {
    super(paramView, paramm);
  }
  
  final void b()
  {
    if ((j) || (h.getVisibility() != 0)) {
      return;
    }
    if ((!ViewCompat.isLaidOut(h)) || (h.isInEditMode()))
    {
      h.setVisibility(8);
      return;
    }
    h.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator(a.b).setListener(new AnimatorListenerAdapter()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        h.a(h.this, false);
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        h.a(h.this, false);
        h.setVisibility(8);
      }
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        h.a(h.this, true);
        h.setVisibility(0);
      }
    });
  }
  
  final void c()
  {
    if (h.getVisibility() != 0)
    {
      if ((ViewCompat.isLaidOut(h)) && (!h.isInEditMode()))
      {
        h.setAlpha(0.0F);
        h.setScaleY(0.0F);
        h.setScaleX(0.0F);
        h.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator(a.b).setListener(new AnimatorListenerAdapter()
        {
          public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationStart(Animator paramAnonymousAnimator)
          {
            h.setVisibility(0);
          }
        });
      }
    }
    else {
      return;
    }
    h.setVisibility(0);
    h.setAlpha(1.0F);
    h.setScaleY(1.0F);
    h.setScaleX(1.0F);
  }
  
  boolean d()
  {
    return true;
  }
  
  final void e()
  {
    float f = h.getRotation();
    if (d != null) {
      d.a(-f);
    }
    if (c != null) {
      c.b(-f);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */