package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.design.R.anim;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class Snackbar
{
  private static final Handler a = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public final boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      case 0: 
        ((Snackbar)obj).c();
        return true;
      }
      ((Snackbar)obj).a(arg1);
      return true;
    }
  });
  private final ViewGroup b;
  private final Context c;
  private final SnackbarLayout d;
  private int e;
  private b f;
  private final n.a g = new n.a()
  {
    public final void a()
    {
      Snackbar.d().sendMessage(Snackbar.d().obtainMessage(0, Snackbar.this));
    }
    
    public final void a(int paramAnonymousInt)
    {
      Snackbar.d().sendMessage(Snackbar.d().obtainMessage(1, paramAnonymousInt, 0, Snackbar.this));
    }
  };
  
  private Snackbar(ViewGroup paramViewGroup)
  {
    b = paramViewGroup;
    c = paramViewGroup.getContext();
    p.a(c);
    d = ((SnackbarLayout)LayoutInflater.from(c).inflate(R.layout.design_layout_snackbar, b, false));
  }
  
  public static Snackbar a(View paramView, CharSequence paramCharSequence)
  {
    paramView = new Snackbar(a(paramView));
    d.a().setText(paramCharSequence);
    e = 0;
    return paramView;
  }
  
  private static ViewGroup a(View paramView)
  {
    Object localObject2 = null;
    View localView = paramView;
    if ((localView instanceof CoordinatorLayout)) {
      return (ViewGroup)localView;
    }
    Object localObject1 = localObject2;
    if ((localView instanceof FrameLayout))
    {
      if (localView.getId() == 16908290) {
        return (ViewGroup)localView;
      }
      localObject1 = (ViewGroup)localView;
    }
    paramView = localView;
    if (localView != null)
    {
      paramView = localView.getParent();
      if (!(paramView instanceof View)) {
        break label77;
      }
    }
    label77:
    for (paramView = (View)paramView;; paramView = null)
    {
      localView = paramView;
      localObject2 = localObject1;
      if (paramView != null) {
        break;
      }
      return (ViewGroup)localObject1;
    }
  }
  
  private void e()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      ViewCompat.setTranslationY(d, d.getHeight());
      ViewCompat.animate(d).translationY(0.0F).setInterpolator(a.b).setDuration(250L).setListener(new ViewPropertyAnimatorListenerAdapter()
      {
        public final void onAnimationEnd(View paramAnonymousView)
        {
          if (Snackbar.e(Snackbar.this) != null) {
            Snackbar.e(Snackbar.this);
          }
          n.a().b(Snackbar.b(Snackbar.this));
        }
        
        public final void onAnimationStart(View paramAnonymousView)
        {
          Snackbar.d(Snackbar.this).b();
        }
      }).start();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(d.getContext(), R.anim.design_snackbar_in);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (Snackbar.e(Snackbar.this) != null) {
          Snackbar.e(Snackbar.this);
        }
        n.a().b(Snackbar.b(Snackbar.this));
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    d.startAnimation(localAnimation);
  }
  
  private void f()
  {
    n.a().a(g);
    ViewParent localViewParent = d.getParent();
    if ((localViewParent instanceof ViewGroup)) {
      ((ViewGroup)localViewParent).removeView(d);
    }
  }
  
  public final void a()
  {
    n.a().a(e, g);
  }
  
  final void a(final int paramInt)
  {
    int i;
    if (d.getVisibility() == 0)
    {
      localObject = d.getLayoutParams();
      if (!(localObject instanceof CoordinatorLayout.d)) {
        break label66;
      }
      localObject = a;
      if (!(localObject instanceof SwipeDismissBehavior)) {
        break label66;
      }
      if (((SwipeDismissBehavior)localObject).d() == 0) {
        break label61;
      }
      i = 1;
    }
    while (i != 0)
    {
      f();
      return;
      label61:
      i = 0;
      continue;
      label66:
      i = 0;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ViewCompat.animate(d).translationY(d.getHeight()).setInterpolator(a.b).setDuration(250L).setListener(new ViewPropertyAnimatorListenerAdapter()
      {
        public final void onAnimationEnd(View paramAnonymousView)
        {
          Snackbar.a(Snackbar.this, paramInt);
        }
        
        public final void onAnimationStart(View paramAnonymousView)
        {
          Snackbar.d(Snackbar.this).c();
        }
      }).start();
      return;
    }
    Object localObject = AnimationUtils.loadAnimation(d.getContext(), R.anim.design_snackbar_out);
    ((Animation)localObject).setInterpolator(a.b);
    ((Animation)localObject).setDuration(250L);
    ((Animation)localObject).setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        Snackbar.a(Snackbar.this, paramInt);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    d.startAnimation((Animation)localObject);
  }
  
  public final boolean b()
  {
    return n.a().e(g);
  }
  
  final void c()
  {
    if (d.getParent() == null)
    {
      ViewGroup.LayoutParams localLayoutParams = d.getLayoutParams();
      if ((localLayoutParams instanceof CoordinatorLayout.d))
      {
        a locala = new a();
        locala.b();
        locala.c();
        locala.a();
        locala.a(new SwipeDismissBehavior.a()
        {
          public final void a()
          {
            Snackbar.a(Snackbar.this);
          }
          
          public final void a(int paramAnonymousInt)
          {
            switch (paramAnonymousInt)
            {
            default: 
              return;
            case 1: 
            case 2: 
              n.a().c(Snackbar.b(Snackbar.this));
              return;
            }
            n.a().d(Snackbar.b(Snackbar.this));
          }
        });
        ((CoordinatorLayout.d)localLayoutParams).a(locala);
      }
      b.addView(d);
    }
    d.a(new Snackbar.SnackbarLayout.a()
    {
      public final void a()
      {
        if (b()) {
          Snackbar.d().post(new Runnable()
          {
            public final void run()
            {
              Snackbar.a(Snackbar.this, 3);
            }
          });
        }
      }
    });
    if (ViewCompat.isLaidOut(d))
    {
      e();
      return;
    }
    d.a(new Snackbar.SnackbarLayout.b()
    {
      public final void a()
      {
        Snackbar.c(Snackbar.this);
        Snackbar.d(Snackbar.this).a(null);
      }
    });
  }
  
  public static class SnackbarLayout
    extends LinearLayout
  {
    private TextView a;
    private Button b;
    private int c;
    private int d;
    private b e;
    private a f;
    
    public SnackbarLayout(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
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
  
  final class a
    extends SwipeDismissBehavior<Snackbar.SnackbarLayout>
  {
    a() {}
    
    public final boolean b(View paramView)
    {
      return paramView instanceof Snackbar.SnackbarLayout;
    }
  }
  
  public static abstract class b {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */