package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Snackbar$SnackbarLayout
  extends LinearLayout
{
  private TextView a;
  private Button b;
  private int c;
  private int d;
  private b e;
  private a f;
  
  public Snackbar$SnackbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
    c = paramAttributeSet.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
    d = paramAttributeSet.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
    if (paramAttributeSet.hasValue(R.styleable.SnackbarLayout_elevation)) {
      ViewCompat.setElevation(this, paramAttributeSet.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
    }
    paramAttributeSet.recycle();
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(R.layout.design_layout_snackbar_include, this);
    ViewCompat.setAccessibilityLiveRegion(this, 1);
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    TextView localTextView;
    if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
    {
      localTextView = a;
      if (!ViewCompat.isPaddingRelative(localTextView)) {
        break label78;
      }
      ViewCompat.setPaddingRelative(localTextView, ViewCompat.getPaddingStart(localTextView), paramInt2, ViewCompat.getPaddingEnd(localTextView), paramInt3);
    }
    for (;;)
    {
      bool = true;
      return bool;
      label78:
      localTextView.setPadding(localTextView.getPaddingLeft(), paramInt2, localTextView.getPaddingRight(), paramInt3);
    }
  }
  
  final TextView a()
  {
    return a;
  }
  
  final void a(a parama)
  {
    f = parama;
  }
  
  final void a(b paramb)
  {
    e = paramb;
  }
  
  final void b()
  {
    ViewCompat.setAlpha(a, 0.0F);
    ViewCompat.animate(a).alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    if (b.getVisibility() == 0)
    {
      ViewCompat.setAlpha(b, 0.0F);
      ViewCompat.animate(b).alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    }
  }
  
  final void c()
  {
    ViewCompat.setAlpha(a, 1.0F);
    ViewCompat.animate(a).alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    if (b.getVisibility() == 0)
    {
      ViewCompat.setAlpha(b, 1.0F);
      ViewCompat.animate(b).alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (f != null) {
      f.a();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(R.id.snackbar_text));
    b = ((Button)findViewById(R.id.snackbar_action));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramBoolean) && (e != null)) {
      e.a();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (c > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > c)
      {
        i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int j = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
    int k = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
    if (a.getLayout().getLineCount() > 1)
    {
      paramInt1 = 1;
      if ((paramInt1 == 0) || (d <= 0) || (b.getMeasuredWidth() <= d)) {
        break label142;
      }
      if (!a(1, j, j - k)) {
        break label170;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        super.onMeasure(i, paramInt2);
      }
      return;
      paramInt1 = 0;
      break;
      label142:
      if (paramInt1 != 0) {}
      for (paramInt1 = j;; paramInt1 = k)
      {
        if (!a(0, paramInt1, paramInt1)) {
          break label170;
        }
        paramInt1 = 1;
        break;
      }
      label170:
      paramInt1 = 0;
    }
  }
  
  static abstract interface a
  {
    public abstract void a();
  }
  
  static abstract interface b
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.SnackbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */