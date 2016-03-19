package android.support.design.widget;

import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import java.util.List;

final class TextInputLayout$a
  extends AccessibilityDelegateCompat
{
  private TextInputLayout$a(TextInputLayout paramTextInputLayout) {}
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
    paramView = TextInputLayout.c(a).e();
    if (!TextUtils.isEmpty(paramView)) {
      paramAccessibilityNodeInfoCompat.setText(paramView);
    }
    if (TextInputLayout.d(a) != null) {
      paramAccessibilityNodeInfoCompat.setLabelFor(TextInputLayout.d(a));
    }
    if (TextInputLayout.e(a) != null) {}
    for (paramView = TextInputLayout.e(a).getText();; paramView = null)
    {
      if (!TextUtils.isEmpty(paramView))
      {
        paramAccessibilityNodeInfoCompat.setContentInvalid(true);
        paramAccessibilityNodeInfoCompat.setError(paramView);
      }
      return;
    }
  }
  
  public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramView = TextInputLayout.c(a).e();
    if (!TextUtils.isEmpty(paramView)) {
      paramAccessibilityEvent.getText().add(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */