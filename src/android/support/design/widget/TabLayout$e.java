package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.design.R.layout;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.ActionBar.Tab;
import android.support.v7.widget.TintManager;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

final class TabLayout$e
  extends LinearLayout
  implements View.OnLongClickListener
{
  private final TabLayout.c b;
  private TextView c;
  private ImageView d;
  private View e;
  private TextView f;
  private ImageView g;
  private int h = 2;
  
  public TabLayout$e(TabLayout paramTabLayout, Context paramContext, TabLayout.c paramc)
  {
    super(paramContext);
    b = paramc;
    if (TabLayout.a(paramTabLayout) != 0) {
      setBackgroundDrawable(TintManager.getDrawable(paramContext, TabLayout.a(paramTabLayout)));
    }
    ViewCompat.setPaddingRelative(this, TabLayout.b(paramTabLayout), TabLayout.c(paramTabLayout), TabLayout.d(paramTabLayout), TabLayout.e(paramTabLayout));
    setGravity(17);
    setOrientation(1);
    a();
  }
  
  private void a(TabLayout.c paramc, TextView paramTextView, ImageView paramImageView)
  {
    Drawable localDrawable = paramc.b();
    CharSequence localCharSequence = paramc.d();
    int i;
    if (paramImageView != null)
    {
      if (localDrawable != null)
      {
        paramImageView.setImageDrawable(localDrawable);
        paramImageView.setVisibility(0);
        setVisibility(0);
        paramImageView.setContentDescription(paramc.f());
      }
    }
    else
    {
      if (TextUtils.isEmpty(localCharSequence)) {
        break label178;
      }
      i = 1;
      label56:
      if (paramTextView != null)
      {
        if (i == 0) {
          break label184;
        }
        paramTextView.setText(localCharSequence);
        paramTextView.setContentDescription(paramc.f());
        paramTextView.setVisibility(0);
        setVisibility(0);
      }
      label89:
      if (paramImageView != null)
      {
        paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
        if ((i == 0) || (paramImageView.getVisibility() != 0)) {
          break label209;
        }
      }
    }
    label178:
    label184:
    label209:
    for (int j = TabLayout.b(a, 8);; j = 0)
    {
      if (j != bottomMargin)
      {
        bottomMargin = j;
        paramImageView.requestLayout();
      }
      if ((i == 0) && (!TextUtils.isEmpty(paramc.f())))
      {
        setOnLongClickListener(this);
        return;
        paramImageView.setVisibility(8);
        paramImageView.setImageDrawable(null);
        break;
        i = 0;
        break label56;
        paramTextView.setVisibility(8);
        paramTextView.setText(null);
        break label89;
      }
      setOnLongClickListener(null);
      setLongClickable(false);
      return;
    }
  }
  
  final void a()
  {
    TabLayout.c localc = b;
    Object localObject = localc.a();
    if (localObject != null)
    {
      ViewParent localViewParent = ((View)localObject).getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null) {
          ((ViewGroup)localViewParent).removeView((View)localObject);
        }
        addView((View)localObject);
      }
      e = ((View)localObject);
      if (c != null) {
        c.setVisibility(8);
      }
      if (d != null)
      {
        d.setVisibility(8);
        d.setImageDrawable(null);
      }
      f = ((TextView)((View)localObject).findViewById(16908308));
      if (f != null) {
        h = TextViewCompat.getMaxLines(f);
      }
      g = ((ImageView)((View)localObject).findViewById(16908294));
      if (e != null) {
        break label310;
      }
      if (d == null)
      {
        localObject = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, this, false);
        addView((View)localObject, 0);
        d = ((ImageView)localObject);
      }
      if (c == null)
      {
        localObject = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, this, false);
        addView((View)localObject);
        c = ((TextView)localObject);
        h = TextViewCompat.getMaxLines(c);
      }
      c.setTextAppearance(getContext(), TabLayout.k(a));
      if (TabLayout.l(a) != null) {
        c.setTextColor(TabLayout.l(a));
      }
      a(localc, c, d);
    }
    label310:
    while ((f == null) && (g == null))
    {
      return;
      if (e != null)
      {
        removeView(e);
        e = null;
      }
      f = null;
      g = null;
      break;
    }
    a(localc, f, g);
  }
  
  public final TabLayout.c b()
  {
    return b;
  }
  
  @TargetApi(14)
  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
  }
  
  @TargetApi(14)
  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
  }
  
  public final boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, b.f(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public final void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 1;
    int j = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt1);
    int n = TabLayout.f(a);
    int i = paramInt1;
    if (n > 0) {
      if (m != 0)
      {
        i = paramInt1;
        if (j <= n) {}
      }
      else
      {
        i = View.MeasureSpec.makeMeasureSpec(TabLayout.g(a), m);
      }
    }
    super.onMeasure(i, paramInt2);
    float f2;
    float f1;
    if (c != null)
    {
      getResources();
      f2 = TabLayout.h(a);
      j = h;
      if ((d == null) || (d.getVisibility() != 0)) {
        break label276;
      }
      paramInt1 = 1;
      f1 = f2;
    }
    for (;;)
    {
      f2 = c.getTextSize();
      m = c.getLineCount();
      j = TextViewCompat.getMaxLines(c);
      if ((f1 != f2) || ((j >= 0) && (paramInt1 != j)))
      {
        j = k;
        if (TabLayout.j(a) == 1)
        {
          j = k;
          if (f1 > f2)
          {
            j = k;
            if (m == 1)
            {
              Layout localLayout = c.getLayout();
              if (localLayout != null)
              {
                j = k;
                if (localLayout.getLineWidth(0) * (f1 / localLayout.getPaint().getTextSize()) <= localLayout.getWidth()) {}
              }
              else
              {
                j = 0;
              }
            }
          }
        }
        if (j != 0)
        {
          c.setTextSize(0, f1);
          c.setMaxLines(paramInt1);
          super.onMeasure(i, paramInt2);
        }
      }
      return;
      label276:
      paramInt1 = j;
      f1 = f2;
      if (c != null)
      {
        paramInt1 = j;
        f1 = f2;
        if (c.getLineCount() > 1)
        {
          f1 = TabLayout.i(a);
          paramInt1 = j;
        }
      }
    }
  }
  
  public final void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
      {
        sendAccessibilityEvent(4);
        if (c != null) {
          c.setSelected(paramBoolean);
        }
        if (d != null) {
          d.setSelected(paramBoolean);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */