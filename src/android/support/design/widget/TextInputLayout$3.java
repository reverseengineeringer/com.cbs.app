package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class TextInputLayout$3
  extends ViewPropertyAnimatorListenerAdapter
{
  TextInputLayout$3(TextInputLayout paramTextInputLayout) {}
  
  public final void onAnimationEnd(View paramView)
  {
    paramView.setVisibility(4);
    TextInputLayout.a(a);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */