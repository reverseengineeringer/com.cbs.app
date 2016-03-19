package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public class AppCompatSpinner
  extends Spinner
  implements TintableBackgroundView
{
  private static final int[] ATTRS_ANDROID_SPINNERMODE;
  private static final boolean IS_AT_LEAST_JB;
  private static final boolean IS_AT_LEAST_M;
  private static final int MAX_ITEMS_MEASURED = 15;
  private static final int MODE_DIALOG = 0;
  private static final int MODE_DROPDOWN = 1;
  private static final int MODE_THEME = -1;
  private static final String TAG = "AppCompatSpinner";
  private AppCompatBackgroundHelper mBackgroundTintHelper;
  private int mDropDownWidth;
  private ListPopupWindow.ForwardingListener mForwardingListener;
  private DropdownPopup mPopup;
  private Context mPopupContext;
  private boolean mPopupSet;
  private SpinnerAdapter mTempAdapter;
  private final Rect mTempRect;
  private TintManager mTintManager;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      bool = true;
      IS_AT_LEAST_M = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label45;
      }
    }
    label45:
    for (boolean bool = true;; bool = false)
    {
      IS_AT_LEAST_JB = bool;
      ATTRS_ANDROID_SPINNERMODE = new int[] { 16843505 };
      return;
      bool = false;
      break;
    }
  }
  
  public AppCompatSpinner(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatSpinner(Context paramContext, int paramInt)
  {
    this(paramContext, null, R.attr.spinnerStyle, paramInt);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  /* Error */
  public AppCompatSpinner(final Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, Resources.Theme paramTheme)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: iload_3
    //   7: invokespecial 92	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   10: aload_0
    //   11: new 94	android/graphics/Rect
    //   14: dup
    //   15: invokespecial 96	android/graphics/Rect:<init>	()V
    //   18: putfield 98	android/support/v7/widget/AppCompatSpinner:mTempRect	Landroid/graphics/Rect;
    //   21: aload_1
    //   22: aload_2
    //   23: getstatic 103	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   26: iload_3
    //   27: iconst_0
    //   28: invokestatic 109	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   31: astore 9
    //   33: aload_0
    //   34: aload 9
    //   36: invokevirtual 113	android/support/v7/widget/TintTypedArray:getTintManager	()Landroid/support/v7/widget/TintManager;
    //   39: putfield 115	android/support/v7/widget/AppCompatSpinner:mTintManager	Landroid/support/v7/widget/TintManager;
    //   42: aload_0
    //   43: new 117	android/support/v7/widget/AppCompatBackgroundHelper
    //   46: dup
    //   47: aload_0
    //   48: aload_0
    //   49: getfield 115	android/support/v7/widget/AppCompatSpinner:mTintManager	Landroid/support/v7/widget/TintManager;
    //   52: invokespecial 120	android/support/v7/widget/AppCompatBackgroundHelper:<init>	(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V
    //   55: putfield 122	android/support/v7/widget/AppCompatSpinner:mBackgroundTintHelper	Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   58: aload 5
    //   60: ifnull +231 -> 291
    //   63: new 124	android/support/v7/view/ContextThemeWrapper
    //   66: dup
    //   67: aload_1
    //   68: aload 5
    //   70: invokespecial 127	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   73: astore 5
    //   75: aload_0
    //   76: aload 5
    //   78: putfield 129	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   81: aload_0
    //   82: getfield 129	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   85: ifnull +166 -> 251
    //   88: iload 4
    //   90: istore 7
    //   92: iload 4
    //   94: iconst_m1
    //   95: if_icmpne +58 -> 153
    //   98: getstatic 61	android/os/Build$VERSION:SDK_INT	I
    //   101: bipush 11
    //   103: if_icmplt +273 -> 376
    //   106: aload_1
    //   107: aload_2
    //   108: getstatic 68	android/support/v7/widget/AppCompatSpinner:ATTRS_ANDROID_SPINNERMODE	[I
    //   111: iload_3
    //   112: iconst_0
    //   113: invokevirtual 134	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   116: astore_1
    //   117: iload 4
    //   119: istore 6
    //   121: aload_1
    //   122: iconst_0
    //   123: invokevirtual 140	android/content/res/TypedArray:hasValue	(I)Z
    //   126: ifeq +11 -> 137
    //   129: aload_1
    //   130: iconst_0
    //   131: iconst_0
    //   132: invokevirtual 144	android/content/res/TypedArray:getInt	(II)I
    //   135: istore 6
    //   137: iload 6
    //   139: istore 7
    //   141: aload_1
    //   142: ifnull +11 -> 153
    //   145: aload_1
    //   146: invokevirtual 147	android/content/res/TypedArray:recycle	()V
    //   149: iload 6
    //   151: istore 7
    //   153: iload 7
    //   155: iconst_1
    //   156: if_icmpne +95 -> 251
    //   159: new 13	android/support/v7/widget/AppCompatSpinner$DropdownPopup
    //   162: dup
    //   163: aload_0
    //   164: aload_0
    //   165: getfield 129	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   168: aload_2
    //   169: iload_3
    //   170: invokespecial 150	android/support/v7/widget/AppCompatSpinner$DropdownPopup:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   173: astore_1
    //   174: aload_0
    //   175: getfield 129	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   178: aload_2
    //   179: getstatic 103	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   182: iload_3
    //   183: iconst_0
    //   184: invokestatic 109	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   187: astore 5
    //   189: aload_0
    //   190: aload 5
    //   192: getstatic 153	android/support/v7/appcompat/R$styleable:Spinner_android_dropDownWidth	I
    //   195: bipush -2
    //   197: invokevirtual 156	android/support/v7/widget/TintTypedArray:getLayoutDimension	(II)I
    //   200: putfield 158	android/support/v7/widget/AppCompatSpinner:mDropDownWidth	I
    //   203: aload_1
    //   204: aload 5
    //   206: getstatic 161	android/support/v7/appcompat/R$styleable:Spinner_android_popupBackground	I
    //   209: invokevirtual 165	android/support/v7/widget/TintTypedArray:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   212: invokevirtual 169	android/support/v7/widget/AppCompatSpinner$DropdownPopup:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   215: aload_1
    //   216: aload 9
    //   218: getstatic 172	android/support/v7/appcompat/R$styleable:Spinner_android_prompt	I
    //   221: invokevirtual 176	android/support/v7/widget/TintTypedArray:getString	(I)Ljava/lang/String;
    //   224: invokevirtual 180	android/support/v7/widget/AppCompatSpinner$DropdownPopup:setPromptText	(Ljava/lang/CharSequence;)V
    //   227: aload 5
    //   229: invokevirtual 181	android/support/v7/widget/TintTypedArray:recycle	()V
    //   232: aload_0
    //   233: aload_1
    //   234: putfield 183	android/support/v7/widget/AppCompatSpinner:mPopup	Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    //   237: aload_0
    //   238: new 8	android/support/v7/widget/AppCompatSpinner$1
    //   241: dup
    //   242: aload_0
    //   243: aload_0
    //   244: aload_1
    //   245: invokespecial 186	android/support/v7/widget/AppCompatSpinner$1:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    //   248: putfield 188	android/support/v7/widget/AppCompatSpinner:mForwardingListener	Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
    //   251: aload 9
    //   253: invokevirtual 181	android/support/v7/widget/TintTypedArray:recycle	()V
    //   256: aload_0
    //   257: iconst_1
    //   258: putfield 190	android/support/v7/widget/AppCompatSpinner:mPopupSet	Z
    //   261: aload_0
    //   262: getfield 192	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   265: ifnull +16 -> 281
    //   268: aload_0
    //   269: aload_0
    //   270: getfield 192	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   273: invokevirtual 196	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   276: aload_0
    //   277: aconst_null
    //   278: putfield 192	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   281: aload_0
    //   282: getfield 122	android/support/v7/widget/AppCompatSpinner:mBackgroundTintHelper	Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   285: aload_2
    //   286: iload_3
    //   287: invokevirtual 200	android/support/v7/widget/AppCompatBackgroundHelper:loadFromAttributes	(Landroid/util/AttributeSet;I)V
    //   290: return
    //   291: aload 9
    //   293: getstatic 203	android/support/v7/appcompat/R$styleable:Spinner_popupTheme	I
    //   296: iconst_0
    //   297: invokevirtual 206	android/support/v7/widget/TintTypedArray:getResourceId	(II)I
    //   300: istore 6
    //   302: iload 6
    //   304: ifeq +18 -> 322
    //   307: new 124	android/support/v7/view/ContextThemeWrapper
    //   310: dup
    //   311: aload_1
    //   312: iload 6
    //   314: invokespecial 208	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;I)V
    //   317: astore 5
    //   319: goto -244 -> 75
    //   322: getstatic 63	android/support/v7/widget/AppCompatSpinner:IS_AT_LEAST_M	Z
    //   325: ifne +9 -> 334
    //   328: aload_1
    //   329: astore 5
    //   331: goto -256 -> 75
    //   334: aconst_null
    //   335: astore 5
    //   337: goto -262 -> 75
    //   340: astore_1
    //   341: aconst_null
    //   342: astore_1
    //   343: iload 4
    //   345: istore 7
    //   347: aload_1
    //   348: ifnull -195 -> 153
    //   351: aload_1
    //   352: invokevirtual 147	android/content/res/TypedArray:recycle	()V
    //   355: iload 4
    //   357: istore 7
    //   359: goto -206 -> 153
    //   362: astore_2
    //   363: aload 8
    //   365: astore_1
    //   366: aload_1
    //   367: ifnull +7 -> 374
    //   370: aload_1
    //   371: invokevirtual 147	android/content/res/TypedArray:recycle	()V
    //   374: aload_2
    //   375: athrow
    //   376: iconst_1
    //   377: istore 7
    //   379: goto -226 -> 153
    //   382: astore_2
    //   383: goto -17 -> 366
    //   386: astore 5
    //   388: goto -45 -> 343
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	391	0	this	AppCompatSpinner
    //   0	391	1	paramContext	Context
    //   0	391	2	paramAttributeSet	AttributeSet
    //   0	391	3	paramInt1	int
    //   0	391	4	paramInt2	int
    //   0	391	5	paramTheme	Resources.Theme
    //   119	194	6	i	int
    //   90	288	7	j	int
    //   1	363	8	localObject	Object
    //   31	261	9	localTintTypedArray	TintTypedArray
    // Exception table:
    //   from	to	target	type
    //   106	117	340	java/lang/Exception
    //   106	117	362	finally
    //   121	137	382	finally
    //   121	137	386	java/lang/Exception
  }
  
  private int compatMeasureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    View localView = null;
    int k = 0;
    i = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label204;
      }
      localView = null;
      i = m;
    }
    label204:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(mTempRect);
        return mTempRect.left + mTempRect.right + k;
      }
      return k;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.applySupportBackgroundTint();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    if (mPopup != null) {
      return mPopup.getHorizontalOffset();
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public int getDropDownVerticalOffset()
  {
    if (mPopup != null) {
      return mPopup.getVerticalOffset();
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public int getDropDownWidth()
  {
    if (mPopup != null) {
      return mDropDownWidth;
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public Drawable getPopupBackground()
  {
    if (mPopup != null) {
      return mPopup.getBackground();
    }
    if (IS_AT_LEAST_JB) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public Context getPopupContext()
  {
    if (mPopup != null) {
      return mPopupContext;
    }
    if (IS_AT_LEAST_M) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public CharSequence getPrompt()
  {
    if (mPopup != null) {
      return mPopup.getHintText();
    }
    return super.getPrompt();
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    if (mBackgroundTintHelper != null) {
      return mBackgroundTintHelper.getSupportBackgroundTintList();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (mBackgroundTintHelper != null) {
      return mBackgroundTintHelper.getSupportBackgroundTintMode();
    }
    return null;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((mPopup != null) && (mPopup.isShowing())) {
      mPopup.dismiss();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((mPopup != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((mForwardingListener != null) && (mForwardingListener.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if ((mPopup != null) && (!mPopup.isShowing()))
    {
      mPopup.show();
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!mPopupSet) {
      mTempAdapter = paramSpinnerAdapter;
    }
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    } while (mPopup == null);
    if (mPopupContext == null) {}
    for (Context localContext = getContext();; localContext = mPopupContext)
    {
      mPopup.setAdapter(new DropDownAdapter(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.onSetBackgroundDrawable(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.onSetBackgroundResource(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    if (mPopup != null) {
      mPopup.setHorizontalOffset(paramInt);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownHorizontalOffset(paramInt);
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    if (mPopup != null) {
      mPopup.setVerticalOffset(paramInt);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (mPopup != null) {
      mDropDownWidth = paramInt;
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownWidth(paramInt);
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (mPopup != null) {
      mPopup.setBackgroundDrawable(paramDrawable);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setPopupBackgroundDrawable(paramDrawable);
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(getPopupContext().getDrawable(paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    if (mPopup != null)
    {
      mPopup.setPromptText(paramCharSequence);
      return;
    }
    super.setPrompt(paramCharSequence);
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.setSupportBackgroundTintMode(paramMode);
    }
  }
  
  private static class DropDownAdapter
    implements ListAdapter, SpinnerAdapter
  {
    private SpinnerAdapter mAdapter;
    private ListAdapter mListAdapter;
    
    public DropDownAdapter(SpinnerAdapter paramSpinnerAdapter, Resources.Theme paramTheme)
    {
      mAdapter = paramSpinnerAdapter;
      if ((paramSpinnerAdapter instanceof ListAdapter)) {
        mListAdapter = ((ListAdapter)paramSpinnerAdapter);
      }
      if (paramTheme != null)
      {
        if ((!AppCompatSpinner.IS_AT_LEAST_M) || (!(paramSpinnerAdapter instanceof android.widget.ThemedSpinnerAdapter))) {
          break label64;
        }
        paramSpinnerAdapter = (android.widget.ThemedSpinnerAdapter)paramSpinnerAdapter;
        if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
          paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
        }
      }
      label64:
      do
      {
        do
        {
          return;
        } while (!(paramSpinnerAdapter instanceof ThemedSpinnerAdapter));
        paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
      } while (paramSpinnerAdapter.getDropDownViewTheme() != null);
      paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
    }
    
    public boolean areAllItemsEnabled()
    {
      ListAdapter localListAdapter = mListAdapter;
      if (localListAdapter != null) {
        return localListAdapter.areAllItemsEnabled();
      }
      return true;
    }
    
    public int getCount()
    {
      if (mAdapter == null) {
        return 0;
      }
      return mAdapter.getCount();
    }
    
    public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (mAdapter == null) {
        return null;
      }
      return mAdapter.getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public Object getItem(int paramInt)
    {
      if (mAdapter == null) {
        return null;
      }
      return mAdapter.getItem(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      if (mAdapter == null) {
        return -1L;
      }
      return mAdapter.getItemId(paramInt);
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      return (mAdapter != null) && (mAdapter.hasStableIds());
    }
    
    public boolean isEmpty()
    {
      return getCount() == 0;
    }
    
    public boolean isEnabled(int paramInt)
    {
      ListAdapter localListAdapter = mListAdapter;
      if (localListAdapter != null) {
        return localListAdapter.isEnabled(paramInt);
      }
      return true;
    }
    
    public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (mAdapter != null) {
        mAdapter.registerDataSetObserver(paramDataSetObserver);
      }
    }
    
    public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (mAdapter != null) {
        mAdapter.unregisterDataSetObserver(paramDataSetObserver);
      }
    }
  }
  
  private class DropdownPopup
    extends ListPopupWindow
  {
    private ListAdapter mAdapter;
    private CharSequence mHintText;
    private final Rect mVisibleRect = new Rect();
    
    public DropdownPopup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
      setAnchorView(AppCompatSpinner.this);
      setModal(true);
      setPromptPosition(0);
      setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          setSelection(paramAnonymousInt);
          if (getOnItemClickListener() != null) {
            performItemClick(paramAnonymousView, paramAnonymousInt, mAdapter.getItemId(paramAnonymousInt));
          }
          dismiss();
        }
      });
    }
    
    private boolean isVisibleToUser(View paramView)
    {
      return (ViewCompat.isAttachedToWindow(paramView)) && (paramView.getGlobalVisibleRect(mVisibleRect));
    }
    
    void computeContentWidth()
    {
      Object localObject = getBackground();
      int i;
      int m;
      int n;
      int i1;
      int j;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(mTempRect);
        if (ViewUtils.isLayoutRtl(AppCompatSpinner.this))
        {
          i = mTempRect.right;
          m = getPaddingLeft();
          n = getPaddingRight();
          i1 = getWidth();
          if (mDropDownWidth != -2) {
            break label240;
          }
          j = AppCompatSpinner.this.compatMeasureContentWidth((SpinnerAdapter)mAdapter, getBackground());
          int k = getContext().getResources().getDisplayMetrics().widthPixels - mTempRect.left - mTempRect.right;
          if (j <= k) {
            break label288;
          }
          j = k;
        }
      }
      label165:
      label240:
      label288:
      for (;;)
      {
        setContentWidth(Math.max(j, i1 - m - n));
        if (ViewUtils.isLayoutRtl(AppCompatSpinner.this)) {
          i = i1 - n - getWidth() + i;
        }
        for (;;)
        {
          setHorizontalOffset(i);
          return;
          i = -mTempRect.left;
          break;
          localObject = mTempRect;
          mTempRect.right = 0;
          left = 0;
          i = 0;
          break;
          if (mDropDownWidth == -1)
          {
            setContentWidth(i1 - m - n);
            break label165;
          }
          setContentWidth(mDropDownWidth);
          break label165;
          i += m;
        }
      }
    }
    
    public CharSequence getHintText()
    {
      return mHintText;
    }
    
    public void setAdapter(ListAdapter paramListAdapter)
    {
      super.setAdapter(paramListAdapter);
      mAdapter = paramListAdapter;
    }
    
    public void setPromptText(CharSequence paramCharSequence)
    {
      mHintText = paramCharSequence;
    }
    
    public void show()
    {
      boolean bool = isShowing();
      computeContentWidth();
      setInputMethodMode(2);
      super.show();
      getListView().setChoiceMode(1);
      setSelection(getSelectedItemPosition());
      if (bool) {}
      ViewTreeObserver localViewTreeObserver;
      do
      {
        return;
        localViewTreeObserver = getViewTreeObserver();
      } while (localViewTreeObserver == null);
      final ViewTreeObserver.OnGlobalLayoutListener local2 = new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public void onGlobalLayout()
        {
          if (!AppCompatSpinner.DropdownPopup.this.isVisibleToUser(AppCompatSpinner.this))
          {
            dismiss();
            return;
          }
          computeContentWidth();
          AppCompatSpinner.DropdownPopup.this.show();
        }
      };
      localViewTreeObserver.addOnGlobalLayoutListener(local2);
      setOnDismissListener(new PopupWindow.OnDismissListener()
      {
        public void onDismiss()
        {
          ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
          if (localViewTreeObserver != null) {
            localViewTreeObserver.removeGlobalOnLayoutListener(local2);
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */