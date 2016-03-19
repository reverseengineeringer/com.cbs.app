package com.github.amlcurran.showcaseview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class ShowcaseView
  extends RelativeLayout
  implements View.OnTouchListener
{
  private static final int a = Color.parseColor("#33B5E5");
  private final Button b;
  private final j c;
  private final h d;
  private final g e;
  private final a f;
  private final f g;
  private int h = -1;
  private int i = -1;
  private float j = 1.0F;
  private boolean k = false;
  private boolean l = true;
  private boolean m = false;
  private e n = e.a;
  private boolean o = false;
  private boolean p = false;
  private boolean q;
  private Bitmap r;
  private long s;
  private long t;
  private boolean u;
  private View.OnClickListener v = new ShowcaseView.4(this);
  
  private ShowcaseView(Context paramContext, int paramInt, boolean paramBoolean)
  {
    super(paramContext, null, paramInt);
    new c();
    f = new b();
    e = new g();
    g = new f(paramContext);
    TypedArray localTypedArray;
    if (Build.VERSION.SDK_INT >= 14)
    {
      paramInt = 1;
      if (paramInt != 0) {
        setFitsSystemWindows(true);
      }
      getViewTreeObserver().addOnPreDrawListener(new ShowcaseView.b(this, (byte)0));
      getViewTreeObserver().addOnGlobalLayoutListener(new ShowcaseView.c(this, (byte)0));
      localTypedArray = paramContext.getTheme().obtainStyledAttributes(null, R.styleable.ShowcaseView, R.attr.showcaseViewStyle, R.style.ShowcaseView);
      s = getResources().getInteger(17694721);
      t = getResources().getInteger(17694721);
      b = ((Button)LayoutInflater.from(paramContext).inflate(R.layout.showcase_button, null));
      if (!paramBoolean) {
        break label378;
      }
    }
    label378:
    for (d = new d(getResources());; d = new i(getResources()))
    {
      c = new j(getResources(), e, getContext());
      a(localTypedArray, false);
      setOnTouchListener(this);
      if (b.getParent() == null)
      {
        paramInt = (int)getResources().getDimension(R.dimen.button_margin);
        paramContext = (RelativeLayout.LayoutParams)generateDefaultLayoutParams();
        paramContext.addRule(12);
        paramContext.addRule(11);
        paramContext.setMargins(paramInt, paramInt, paramInt, paramInt);
        b.setLayoutParams(paramContext);
        b.setText(17039370);
        if (!k) {
          b.setOnClickListener(v);
        }
        addView(b);
      }
      return;
      paramInt = 0;
      break;
    }
  }
  
  protected ShowcaseView(Context paramContext, boolean paramBoolean)
  {
    this(paramContext, R.styleable.CustomTheme_showcaseViewStyle, true);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (g.a()) {
      return;
    }
    h = paramInt1;
    i = paramInt2;
    invalidate();
  }
  
  private void a(TypedArray paramTypedArray, boolean paramBoolean)
  {
    int i1 = paramTypedArray.getColor(R.styleable.ShowcaseView_sv_backgroundColor, Color.argb(128, 80, 80, 80));
    int i2 = paramTypedArray.getColor(R.styleable.ShowcaseView_sv_showcaseColor, a);
    String str2 = paramTypedArray.getString(R.styleable.ShowcaseView_sv_buttonText);
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = getResources().getString(17039370);
    }
    boolean bool = paramTypedArray.getBoolean(R.styleable.ShowcaseView_sv_tintButtonColor, true);
    int i3 = paramTypedArray.getResourceId(R.styleable.ShowcaseView_sv_titleTextAppearance, R.style.TextAppearance_ShowcaseView_Title);
    int i4 = paramTypedArray.getResourceId(R.styleable.ShowcaseView_sv_detailTextAppearance, R.style.TextAppearance_ShowcaseView_Detail);
    paramTypedArray.recycle();
    d.a(i2);
    d.b(i1);
    if (bool) {
      b.getBackground().setColorFilter(i2, PorterDuff.Mode.MULTIPLY);
    }
    for (;;)
    {
      b.setText(str1);
      c.a(i3);
      c.b(i4);
      o = true;
      if (paramBoolean) {
        invalidate();
      }
      return;
      b.getBackground().setColorFilter(a, PorterDuff.Mode.MULTIPLY);
    }
  }
  
  final void a(Point paramPoint)
  {
    a(x, y);
  }
  
  public final boolean a()
  {
    return (h != 1000000) && (i != 1000000) && (!p);
  }
  
  public final void b()
  {
    if ((r != null) && (!r.isRecycled()))
    {
      r.recycle();
      r = null;
    }
    g.b();
    n.a();
    f.a(this, t, new ShowcaseView.2(this));
  }
  
  public final void c()
  {
    u = true;
    n.c();
    f.a(this, s, new ShowcaseView.3(this));
  }
  
  public final boolean d()
  {
    return u;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((h < 0) || (i < 0) || (g.a()) || (r == null))
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    d.a(r);
    if (!p)
    {
      d.a(r, h, i);
      d.a(paramCanvas, r);
    }
    c.a(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    float f1 = Math.abs(paramMotionEvent.getRawX() - h);
    float f2 = Math.abs(paramMotionEvent.getRawY() - i);
    double d1 = Math.pow(f1, 2.0D);
    d1 = Math.sqrt(Math.pow(f2, 2.0D) + d1);
    if ((1 == paramMotionEvent.getAction()) && (m) && (d1 > d.c())) {
      b();
    }
    while ((l) && (d1 > d.c())) {
      return true;
    }
    return false;
  }
  
  public void setBlocksTouches(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public void setButtonPosition(RelativeLayout.LayoutParams paramLayoutParams)
  {
    b.setLayoutParams(paramLayoutParams);
  }
  
  public void setButtonText(CharSequence paramCharSequence)
  {
    if (b != null) {
      b.setText(paramCharSequence);
    }
  }
  
  public void setContentText(CharSequence paramCharSequence)
  {
    c.a(paramCharSequence);
  }
  
  public void setContentTitle(CharSequence paramCharSequence)
  {
    c.b(paramCharSequence);
  }
  
  public void setHideOnTouchOutside(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setOnShowcaseEventListener(e parame)
  {
    if (parame != null)
    {
      n = parame;
      return;
    }
    n = e.a;
  }
  
  public void setShouldCentreText(boolean paramBoolean)
  {
    q = paramBoolean;
    o = true;
    invalidate();
  }
  
  public void setShowcase(com.github.amlcurran.showcaseview.a.a parama, boolean paramBoolean)
  {
    postDelayed(new ShowcaseView.1(this, parama, paramBoolean), 100L);
  }
  
  public void setShowcaseX(int paramInt)
  {
    a(paramInt, i);
  }
  
  public void setShowcaseY(int paramInt)
  {
    a(h, paramInt);
  }
  
  public void setStyle(int paramInt)
  {
    a(getContext().obtainStyledAttributes(paramInt, R.styleable.ShowcaseView), true);
  }
  
  public void setTarget(com.github.amlcurran.showcaseview.a.a parama)
  {
    setShowcase(parama, false);
  }
  
  public static final class a
  {
    final ShowcaseView a;
    private final Activity b;
    
    public a(Activity paramActivity)
    {
      b = paramActivity;
      a = new ShowcaseView(paramActivity, true);
      a.setTarget(com.github.amlcurran.showcaseview.a.a.a);
    }
    
    public final a a(com.github.amlcurran.showcaseview.a.a parama)
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
}

/* Location:
 * Qualified Name:     com.github.amlcurran.showcaseview.ShowcaseView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */