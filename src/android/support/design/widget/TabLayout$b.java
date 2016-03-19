package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

final class TabLayout$b
  extends LinearLayout
{
  private int b;
  private final Paint c;
  private int d = -1;
  private float e;
  private int f = -1;
  private int g = -1;
  private q h;
  
  TabLayout$b(TabLayout paramTabLayout, Context paramContext)
  {
    super(paramContext);
    setWillNotDraw(false);
    c = new Paint();
  }
  
  private void a()
  {
    View localView = getChildAt(d);
    int k;
    int i;
    float f1;
    float f2;
    float f3;
    if ((localView != null) && (localView.getWidth() > 0))
    {
      int m = localView.getLeft();
      k = localView.getRight();
      i = m;
      j = k;
      if (e > 0.0F)
      {
        i = m;
        j = k;
        if (d < getChildCount() - 1)
        {
          localView = getChildAt(d + 1);
          f1 = e;
          f2 = localView.getLeft();
          f3 = e;
          i = (int)(m * (1.0F - f3) + f1 * f2);
          f1 = e;
          f2 = localView.getRight();
          f3 = e;
        }
      }
    }
    for (int j = (int)(k * (1.0F - f3) + f2 * f1);; j = -1)
    {
      b(i, j);
      return;
      i = -1;
    }
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != f) || (paramInt2 != g))
    {
      f = paramInt1;
      g = paramInt2;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  final void a(int paramInt)
  {
    if (c.getColor() != paramInt)
    {
      c.setColor(paramInt);
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  final void a(int paramInt, float paramFloat)
  {
    d = paramInt;
    e = paramFloat;
    a();
  }
  
  final void a(final int paramInt1, int paramInt2)
  {
    final int i;
    Object localObject;
    final int k;
    final int m;
    final int j;
    if (ViewCompat.getLayoutDirection(this) == 1)
    {
      i = 1;
      localObject = getChildAt(paramInt1);
      k = ((View)localObject).getLeft();
      m = ((View)localObject).getRight();
      if (Math.abs(paramInt1 - d) > 1) {
        break label152;
      }
      i = f;
      j = g;
    }
    for (;;)
    {
      if ((i != k) || (j != m))
      {
        localObject = TabLayout.a(a, w.a());
        ((q)localObject).a(a.b);
        ((q)localObject).a(paramInt2);
        ((q)localObject).a(0.0F, 1.0F);
        ((q)localObject).a(new q.c()
        {
          public final void a(q paramAnonymousq)
          {
            float f = paramAnonymousq.f();
            TabLayout.b.a(TabLayout.b.this, a.a(i, k, f), a.a(j, m, f));
          }
        });
        ((q)localObject).a(new q.b()
        {
          public final void a()
          {
            TabLayout.b.a(TabLayout.b.this, paramInt1);
            TabLayout.b.a(TabLayout.b.this);
          }
          
          public final void b()
          {
            TabLayout.b.a(TabLayout.b.this, paramInt1);
            TabLayout.b.a(TabLayout.b.this);
          }
        });
        ((q)localObject).a();
        h = ((q)localObject);
      }
      return;
      i = 0;
      break;
      label152:
      j = TabLayout.b(a, 24);
      if (paramInt1 < d)
      {
        if (i == 0)
        {
          j = m + j;
          i = j;
        }
      }
      else if (i != 0)
      {
        j = m + j;
        i = j;
        continue;
      }
      j = k - j;
      i = j;
    }
  }
  
  final void b(int paramInt)
  {
    if (b != paramInt)
    {
      b = paramInt;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((f >= 0) && (g > f)) {
      paramCanvas.drawRect(f, getHeight() - b, g, getHeight(), c);
    }
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((h != null) && (h.b()))
    {
      h.e();
      long l = h.g();
      paramInt1 = d;
      float f1 = h.f();
      a(paramInt1, Math.round((float)l * (1.0F - f1)));
      return;
    }
    a();
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int m = 0;
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      break label18;
    }
    label18:
    while ((TabLayout.j(a) != 1) || (TabLayout.m(a) != 1)) {
      return;
    }
    int n = getChildCount();
    int k = 0;
    int j = 0;
    label53:
    Object localObject;
    if (k < n)
    {
      localObject = getChildAt(k);
      if (((View)localObject).getVisibility() != 0) {
        break label237;
      }
    }
    label136:
    label222:
    label234:
    label237:
    for (int i = Math.max(j, ((View)localObject).getMeasuredWidth());; i = j)
    {
      k += 1;
      j = i;
      break label53;
      if (j <= 0) {
        break;
      }
      i = TabLayout.b(a, 16);
      if (j * n <= getMeasuredWidth() - i * 2)
      {
        k = 0;
        i = m;
        m = i;
        if (k >= n) {
          break label222;
        }
        localObject = (LinearLayout.LayoutParams)getChildAt(k).getLayoutParams();
        if ((width == j) && (weight == 0.0F)) {
          break label234;
        }
        width = j;
        weight = 0.0F;
        i = 1;
      }
      for (;;)
      {
        k += 1;
        break label136;
        TabLayout.n(a);
        TabLayout.o(a);
        m = 1;
        if (m == 0) {
          break;
        }
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */