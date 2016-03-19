package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.support.design.R.drawable;
import android.support.design.R.string;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.Space;
import android.support.v7.widget.TintManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.List;

public class TextInputLayout
  extends LinearLayout
{
  private EditText a;
  private CharSequence b;
  private Paint c;
  private LinearLayout d;
  private boolean e;
  private TextView f;
  private int g;
  private boolean h;
  private boolean i;
  private TextView j;
  private int k;
  private int l;
  private int m;
  private boolean n;
  private ColorStateList o;
  private ColorStateList p;
  private final d q = new d(this);
  private boolean r;
  private q s;
  
  public TextInputLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    p.a(paramContext);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    q.a(a.b);
    q.b(new AccelerateInterpolator());
    q.d(8388659);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TextInputLayout, paramInt, R.style.Widget_Design_TextInputLayout);
    setHint(paramContext.getText(R.styleable.TextInputLayout_android_hint));
    r = paramContext.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
    if (paramContext.hasValue(R.styleable.TextInputLayout_android_textColorHint))
    {
      paramAttributeSet = paramContext.getColorStateList(R.styleable.TextInputLayout_android_textColorHint);
      p = paramAttributeSet;
      o = paramAttributeSet;
    }
    if (paramContext.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
      setHintTextAppearance(paramContext.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, 0));
    }
    g = paramContext.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
    boolean bool1 = paramContext.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
    boolean bool2 = paramContext.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(paramContext.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
    l = paramContext.getResourceId(R.styleable.TextInputLayout_counterTextAppearance, 0);
    m = paramContext.getResourceId(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
    paramContext.recycle();
    setErrorEnabled(bool1);
    setCounterEnabled(bool2);
    if (ViewCompat.getImportantForAccessibility(this) == 0) {
      ViewCompat.setImportantForAccessibility(this, 1);
    }
    ViewCompat.setAccessibilityDelegate(this, new a((byte)0));
  }
  
  private LinearLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {}
    for (paramLayoutParams = (LinearLayout.LayoutParams)paramLayoutParams;; paramLayoutParams = new LinearLayout.LayoutParams(paramLayoutParams))
    {
      if (c == null) {
        c = new Paint();
      }
      c.setTypeface(q.a());
      c.setTextSize(q.c());
      topMargin = ((int)-c.ascent());
      return paramLayoutParams;
    }
  }
  
  private void a(float paramFloat)
  {
    if (q.b() == paramFloat) {
      return;
    }
    if (s == null)
    {
      s = w.a();
      s.a(a.a);
      s.a(200);
      s.a(new q.c()
      {
        public final void a(q paramAnonymousq)
        {
          TextInputLayout.c(TextInputLayout.this).b(paramAnonymousq.d());
        }
      });
    }
    s.a(q.b(), paramFloat);
    s.a();
  }
  
  private void a(int paramInt)
  {
    boolean bool2 = n;
    if (k == -1)
    {
      j.setText(String.valueOf(paramInt));
      n = false;
      if ((a != null) && (bool2 != n))
      {
        a(false);
        c();
      }
      return;
    }
    boolean bool1;
    label66:
    TextView localTextView;
    Context localContext;
    if (paramInt > k)
    {
      bool1 = true;
      n = bool1;
      if (bool2 != n)
      {
        localTextView = j;
        localContext = getContext();
        if (!n) {
          break label158;
        }
      }
    }
    label158:
    for (int i1 = m;; i1 = l)
    {
      localTextView.setTextAppearance(localContext, i1);
      j.setText(getContext().getString(R.string.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(k) }));
      break;
      bool1 = false;
      break label66;
    }
  }
  
  private void a(TextView paramTextView)
  {
    if (d != null)
    {
      d.removeView(paramTextView);
      if (d.getChildCount() == 0) {
        d.setVisibility(8);
      }
    }
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    if (d == null)
    {
      d = new LinearLayout(getContext());
      d.setOrientation(0);
      addView(d, -1, -2);
      Space localSpace = new Space(getContext());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, 0, 1.0F);
      d.addView(localSpace, localLayoutParams);
      if (a != null) {
        b();
      }
    }
    d.setVisibility(0);
    d.addView(paramTextView, paramInt);
  }
  
  private void a(boolean paramBoolean)
  {
    int i3 = 1;
    int i1;
    Object localObject;
    int i2;
    if ((a != null) && (!TextUtils.isEmpty(a.getText())))
    {
      i1 = 1;
      localObject = getDrawableState();
      int i4 = localObject.length;
      i2 = 0;
      label38:
      if (i2 >= i4) {
        break label212;
      }
      if (localObject[i2] != 16842908) {
        break label205;
      }
      i2 = 1;
      label56:
      if ((!e) || (f == null) || (f.getVisibility() != 0)) {
        break label217;
      }
      localObject = f.getText();
      label89:
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        break label223;
      }
      label97:
      if (o != null) {
        q.b(o.getDefaultColor());
      }
      if ((!n) || (j == null)) {
        break label229;
      }
      q.a(j.getCurrentTextColor());
    }
    for (;;)
    {
      if ((i1 != 0) || (i2 != 0) || (i3 != 0))
      {
        if ((s != null) && (s.b())) {
          s.e();
        }
        if ((paramBoolean) && (r))
        {
          a(1.0F);
          return;
          i1 = 0;
          break;
          label205:
          i2 += 1;
          break label38;
          label212:
          i2 = 0;
          break label56;
          label217:
          localObject = null;
          break label89;
          label223:
          i3 = 0;
          break label97;
          label229:
          if ((i3 != 0) && (f != null))
          {
            q.a(f.getCurrentTextColor());
            continue;
          }
          if ((i2 != 0) && (p != null))
          {
            q.a(p.getDefaultColor());
            continue;
          }
          if (o == null) {
            continue;
          }
          q.a(o.getDefaultColor());
          continue;
        }
        q.b(1.0F);
        return;
      }
    }
    if ((s != null) && (s.b())) {
      s.e();
    }
    if ((paramBoolean) && (r))
    {
      a(0.0F);
      return;
    }
    q.b(0.0F);
  }
  
  private void b()
  {
    ViewCompat.setPaddingRelative(d, ViewCompat.getPaddingStart(a), 0, ViewCompat.getPaddingEnd(a), a.getPaddingBottom());
  }
  
  private void c()
  {
    if ((h) && (f != null))
    {
      ViewCompat.setBackgroundTintList(a, ColorStateList.valueOf(f.getCurrentTextColor()));
      return;
    }
    if ((n) && (j != null))
    {
      ViewCompat.setBackgroundTintList(a, ColorStateList.valueOf(j.getCurrentTextColor()));
      return;
    }
    TintManager localTintManager = TintManager.get(getContext());
    ViewCompat.setBackgroundTintList(a, localTintManager.getTintList(R.drawable.abc_edit_text_material));
  }
  
  public final EditText a()
  {
    return a;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      EditText localEditText = (EditText)paramView;
      if (a != null) {
        throw new IllegalArgumentException("We already have an EditText, can only have one");
      }
      a = localEditText;
      q.c(a.getTypeface());
      q.a(a.getTextSize());
      q.c(a.getGravity());
      a.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          TextInputLayout.a(TextInputLayout.this);
          if (TextInputLayout.b(TextInputLayout.this)) {
            TextInputLayout.a(TextInputLayout.this, paramAnonymousEditable.length());
          }
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      if (o == null) {
        o = a.getHintTextColors();
      }
      if (TextUtils.isEmpty(b))
      {
        setHint(a.getHint());
        a.setHint(null);
      }
      if (j != null) {
        a(a.getText().length());
      }
      if (d != null) {
        b();
      }
      a(false);
      super.addView(paramView, 0, a(paramLayoutParams));
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    q.a(paramCanvas);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (a != null)
    {
      paramInt1 = a.getLeft() + a.getCompoundPaddingLeft();
      paramInt3 = a.getRight() - a.getCompoundPaddingRight();
      q.a(paramInt1, a.getTop() + a.getCompoundPaddingTop(), paramInt3, a.getBottom() - a.getCompoundPaddingBottom());
      q.b(paramInt1, getPaddingTop(), paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      q.d();
    }
  }
  
  public void refreshDrawableState()
  {
    super.refreshDrawableState();
    a(ViewCompat.isLaidOut(this));
  }
  
  public void setCounterEnabled(boolean paramBoolean)
  {
    if (i != paramBoolean)
    {
      if (!paramBoolean) {
        break label104;
      }
      j = new TextView(getContext());
      j.setMaxLines(1);
      j.setTextAppearance(getContext(), l);
      ViewCompat.setAccessibilityLiveRegion(j, 1);
      a(j, -1);
      if (a != null) {
        break label85;
      }
      a(0);
    }
    for (;;)
    {
      i = paramBoolean;
      return;
      label85:
      a(a.getText().length());
      continue;
      label104:
      a(j);
      j = null;
    }
  }
  
  public void setCounterMaxLength(int paramInt)
  {
    if (k != paramInt)
    {
      if (paramInt <= 0) {
        break label39;
      }
      k = paramInt;
      if (i) {
        if (a != null) {
          break label47;
        }
      }
    }
    label39:
    label47:
    for (paramInt = 0;; paramInt = a.getText().length())
    {
      a(paramInt);
      return;
      k = -1;
      break;
    }
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (!e) {
      if (!TextUtils.isEmpty(paramCharSequence)) {}
    }
    do
    {
      return;
      setErrorEnabled(true);
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        ViewCompat.setAlpha(f, 0.0F);
        f.setText(paramCharSequence);
        ViewCompat.animate(f).alpha(1.0F).setDuration(200L).setInterpolator(a.b).setListener(new ViewPropertyAnimatorListenerAdapter()
        {
          public final void onAnimationStart(View paramAnonymousView)
          {
            paramAnonymousView.setVisibility(0);
          }
        }).start();
        h = true;
        c();
        a(true);
        return;
      }
    } while (f.getVisibility() != 0);
    ViewCompat.animate(f).alpha(0.0F).setDuration(200L).setInterpolator(a.b).setListener(new ViewPropertyAnimatorListenerAdapter()
    {
      public final void onAnimationEnd(View paramAnonymousView)
      {
        paramAnonymousView.setVisibility(4);
        TextInputLayout.a(TextInputLayout.this);
      }
    }).start();
    h = false;
    c();
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    if (e != paramBoolean)
    {
      if (f != null) {
        ViewCompat.animate(f).cancel();
      }
      if (!paramBoolean) {
        break label90;
      }
      f = new TextView(getContext());
      f.setTextAppearance(getContext(), g);
      f.setVisibility(4);
      ViewCompat.setAccessibilityLiveRegion(f, 1);
      a(f, 0);
    }
    for (;;)
    {
      e = paramBoolean;
      return;
      label90:
      h = false;
      c();
      a(f);
      f = null;
    }
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    q.a(paramCharSequence);
    sendAccessibilityEvent(2048);
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public void setHintTextAppearance(int paramInt)
  {
    q.e(paramInt);
    p = ColorStateList.valueOf(q.f());
    if (a != null)
    {
      a(false);
      LinearLayout.LayoutParams localLayoutParams = a(a.getLayoutParams());
      a.setLayoutParams(localLayoutParams);
      a.requestLayout();
    }
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    q.c(paramTypeface);
  }
  
  private final class a
    extends AccessibilityDelegateCompat
  {
    private a() {}
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
    }
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      paramAccessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
      paramView = TextInputLayout.c(TextInputLayout.this).e();
      if (!TextUtils.isEmpty(paramView)) {
        paramAccessibilityNodeInfoCompat.setText(paramView);
      }
      if (TextInputLayout.d(TextInputLayout.this) != null) {
        paramAccessibilityNodeInfoCompat.setLabelFor(TextInputLayout.d(TextInputLayout.this));
      }
      if (TextInputLayout.e(TextInputLayout.this) != null) {}
      for (paramView = TextInputLayout.e(TextInputLayout.this).getText();; paramView = null)
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
      paramView = TextInputLayout.c(TextInputLayout.this).e();
      if (!TextUtils.isEmpty(paramView)) {
        paramAccessibilityEvent.getText().add(paramView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */