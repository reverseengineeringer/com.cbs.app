package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.os.TraceCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.recyclerview.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements NestedScrollingChild, ScrollingView
{
  private static final boolean DEBUG = false;
  private static final boolean DISPATCH_TEMP_DETACH = false;
  private static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
  public static final int HORIZONTAL = 0;
  private static final int INVALID_POINTER = -1;
  public static final int INVALID_TYPE = -1;
  private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
  private static final int MAX_SCROLL_DURATION = 2000;
  public static final long NO_ID = -1L;
  public static final int NO_POSITION = -1;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "RecyclerView";
  public static final int TOUCH_SLOP_DEFAULT = 0;
  public static final int TOUCH_SLOP_PAGING = 1;
  private static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
  private static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
  private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
  private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
  private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
  private static final String TRACE_SCROLL_TAG = "RV Scroll";
  public static final int VERTICAL = 1;
  private static final Interpolator sQuinticInterpolator;
  private RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
  private final AccessibilityManager mAccessibilityManager;
  private OnItemTouchListener mActiveOnItemTouchListener;
  private Adapter mAdapter;
  AdapterHelper mAdapterHelper;
  private boolean mAdapterUpdateDuringMeasure;
  private EdgeEffectCompat mBottomGlow;
  private ChildDrawingOrderCallback mChildDrawingOrderCallback;
  ChildHelper mChildHelper;
  private boolean mClipToPadding;
  private boolean mDataSetHasChangedAfterLayout = false;
  private boolean mEatRequestLayout;
  private int mEatenAccessibilityChangeFlags;
  private boolean mFirstLayoutComplete;
  private boolean mHasFixedSize;
  private boolean mIgnoreMotionEventTillDown;
  private int mInitialTouchX;
  private int mInitialTouchY;
  private boolean mIsAttached;
  ItemAnimator mItemAnimator = new DefaultItemAnimator();
  private RecyclerView.ItemAnimator.ItemAnimatorListener mItemAnimatorListener = new ItemAnimatorRestoreListener(null);
  private Runnable mItemAnimatorRunner = new Runnable()
  {
    public void run()
    {
      if (mItemAnimator != null) {
        mItemAnimator.runPendingAnimations();
      }
      RecyclerView.access$602(RecyclerView.this, false);
    }
  };
  private final ArrayList<ItemDecoration> mItemDecorations = new ArrayList();
  boolean mItemsAddedOrRemoved = false;
  boolean mItemsChanged = false;
  private int mLastTouchX;
  private int mLastTouchY;
  private LayoutManager mLayout;
  private boolean mLayoutFrozen;
  private int mLayoutOrScrollCounter = 0;
  private boolean mLayoutRequestEaten;
  private EdgeEffectCompat mLeftGlow;
  private final int mMaxFlingVelocity;
  private final int mMinFlingVelocity;
  private final int[] mMinMaxLayoutPositions = new int[2];
  private final int[] mNestedOffsets = new int[2];
  private final RecyclerViewDataObserver mObserver = new RecyclerViewDataObserver(null);
  private List<OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
  private final ArrayList<OnItemTouchListener> mOnItemTouchListeners = new ArrayList();
  private SavedState mPendingSavedState;
  private final boolean mPostUpdatesOnAnimation;
  private boolean mPostedAnimatorRunner = false;
  final Recycler mRecycler = new Recycler();
  private RecyclerListener mRecyclerListener;
  private EdgeEffectCompat mRightGlow;
  private final int[] mScrollConsumed = new int[2];
  private float mScrollFactor = Float.MIN_VALUE;
  private OnScrollListener mScrollListener;
  private List<OnScrollListener> mScrollListeners;
  private final int[] mScrollOffset = new int[2];
  private int mScrollPointerId = -1;
  private int mScrollState = 0;
  private final NestedScrollingChildHelper mScrollingChildHelper;
  final State mState = new State();
  private final Rect mTempRect = new Rect();
  private EdgeEffectCompat mTopGlow;
  private int mTouchSlop;
  private final Runnable mUpdateChildViewsRunnable = new Runnable()
  {
    public void run()
    {
      if ((!mFirstLayoutComplete) || (isLayoutRequested())) {
        return;
      }
      if (mLayoutFrozen)
      {
        RecyclerView.access$302(RecyclerView.this, true);
        return;
      }
      RecyclerView.this.consumePendingUpdateOperations();
    }
  };
  private VelocityTracker mVelocityTracker;
  private final ViewFlinger mViewFlinger = new ViewFlinger();
  private final ViewInfoStore.ProcessCallback mViewInfoProcessCallback = new ViewInfoStore.ProcessCallback()
  {
    public void processAppeared(RecyclerView.ViewHolder paramAnonymousViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
    {
      RecyclerView.this.animateAppearance(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2);
    }
    
    public void processDisappeared(RecyclerView.ViewHolder paramAnonymousViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
    {
      mRecycler.unscrapView(paramAnonymousViewHolder);
      RecyclerView.this.animateDisappearance(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2);
    }
    
    public void processPersistent(RecyclerView.ViewHolder paramAnonymousViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
    {
      paramAnonymousViewHolder.setIsRecyclable(false);
      if (mDataSetHasChangedAfterLayout) {
        if (mItemAnimator.animateChange(paramAnonymousViewHolder, paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2)) {
          RecyclerView.this.postAnimationRunner();
        }
      }
      while (!mItemAnimator.animatePersistence(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2)) {
        return;
      }
      RecyclerView.this.postAnimationRunner();
    }
    
    public void unused(RecyclerView.ViewHolder paramAnonymousViewHolder)
    {
      mLayout.removeAndRecycleView(itemView, mRecycler);
    }
  };
  final ViewInfoStore mViewInfoStore = new ViewInfoStore();
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      FORCE_INVALIDATE_DISPLAY_LIST = bool;
      LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      sQuinticInterpolator = new Interpolator()
      {
        public final float getInterpolation(float paramAnonymousFloat)
        {
          paramAnonymousFloat -= 1.0F;
          return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
        }
      };
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    Object localObject;
    if (Build.VERSION.SDK_INT >= 16)
    {
      bool = true;
      mPostUpdatesOnAnimation = bool;
      localObject = ViewConfiguration.get(paramContext);
      mTouchSlop = ((ViewConfiguration)localObject).getScaledTouchSlop();
      mMinFlingVelocity = ((ViewConfiguration)localObject).getScaledMinimumFlingVelocity();
      mMaxFlingVelocity = ((ViewConfiguration)localObject).getScaledMaximumFlingVelocity();
      if (ViewCompat.getOverScrollMode(this) != 2) {
        break label431;
      }
    }
    label431:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      mItemAnimator.setListener(mItemAnimatorListener);
      initAdapterManager();
      initChildrenHelper();
      if (ViewCompat.getImportantForAccessibility(this) == 0) {
        ViewCompat.setImportantForAccessibility(this, 1);
      }
      mAccessibilityManager = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
      if (paramAttributeSet != null)
      {
        localObject = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt, 0);
        String str = ((TypedArray)localObject).getString(R.styleable.RecyclerView_layoutManager);
        ((TypedArray)localObject).recycle();
        createLayoutManager(paramContext, str, paramAttributeSet, paramInt, 0);
      }
      mScrollingChildHelper = new NestedScrollingChildHelper(this);
      setNestedScrollingEnabled(true);
      return;
      bool = false;
      break;
    }
  }
  
  private void addAnimatingView(ViewHolder paramViewHolder)
  {
    View localView = itemView;
    if (localView.getParent() == this) {}
    for (int i = 1;; i = 0)
    {
      mRecycler.unscrapView(getChildViewHolder(localView));
      if (!paramViewHolder.isTmpDetached()) {
        break;
      }
      mChildHelper.attachViewToParent(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i == 0)
    {
      mChildHelper.addView(localView, true);
      return;
    }
    mChildHelper.hide(localView);
  }
  
  private void animateAppearance(ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder.setIsRecyclable(false);
    if (mItemAnimator.animateAppearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private void animateChange(ViewHolder paramViewHolder1, ViewHolder paramViewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder1.setIsRecyclable(false);
    if (paramViewHolder1 != paramViewHolder2)
    {
      mShadowedHolder = paramViewHolder2;
      addAnimatingView(paramViewHolder1);
      mRecycler.unscrapView(paramViewHolder1);
      paramViewHolder2.setIsRecyclable(false);
      mShadowingHolder = paramViewHolder1;
    }
    if (mItemAnimator.animateChange(paramViewHolder1, paramViewHolder2, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private void animateDisappearance(ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    addAnimatingView(paramViewHolder);
    paramViewHolder.setIsRecyclable(false);
    if (mItemAnimator.animateDisappearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private boolean canReuseUpdatedViewHolder(ViewHolder paramViewHolder)
  {
    return (mItemAnimator == null) || (mItemAnimator.canReuseUpdatedViewHolder(paramViewHolder));
  }
  
  private void cancelTouch()
  {
    resetTouch();
    setScrollState(0);
  }
  
  private void considerReleasingGlowsOnScroll(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (mLeftGlow != null)
    {
      bool1 = bool2;
      if (!mLeftGlow.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = mLeftGlow.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (mRightGlow != null)
    {
      bool2 = bool1;
      if (!mRightGlow.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | mRightGlow.onRelease();
        }
      }
    }
    bool1 = bool2;
    if (mTopGlow != null)
    {
      bool1 = bool2;
      if (!mTopGlow.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | mTopGlow.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (mBottomGlow != null)
    {
      bool2 = bool1;
      if (!mBottomGlow.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | mBottomGlow.onRelease();
        }
      }
    }
    if (bool2) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private void consumePendingUpdateOperations()
  {
    if (!mFirstLayoutComplete) {}
    label104:
    do
    {
      do
      {
        return;
        if (mDataSetHasChangedAfterLayout)
        {
          TraceCompat.beginSection("RV FullInvalidate");
          dispatchLayout();
          TraceCompat.endSection();
          return;
        }
      } while (!mAdapterHelper.hasPendingUpdates());
      if ((mAdapterHelper.hasAnyUpdateTypes(4)) && (!mAdapterHelper.hasAnyUpdateTypes(11)))
      {
        TraceCompat.beginSection("RV PartialInvalidate");
        eatRequestLayout();
        mAdapterHelper.preProcess();
        if (!mLayoutRequestEaten)
        {
          if (!hasUpdatedView()) {
            break label104;
          }
          dispatchLayout();
        }
        for (;;)
        {
          resumeRequestLayout(true);
          TraceCompat.endSection();
          return;
          mAdapterHelper.consumePostponedUpdates();
        }
      }
    } while (!mAdapterHelper.hasPendingUpdates());
    TraceCompat.beginSection("RV FullInvalidate");
    dispatchLayout();
    TraceCompat.endSection();
  }
  
  private void createLayoutManager(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      paramString = paramString.trim();
      if (paramString.length() != 0)
      {
        String str = getFullClassName(paramContext, paramString);
        try
        {
          if (isInEditMode()) {}
          Class localClass;
          for (paramString = getClass().getClassLoader();; paramString = paramContext.getClassLoader())
          {
            localClass = paramString.loadClass(str).asSubclass(LayoutManager.class);
            try
            {
              paramString = localClass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
              Object[] arrayOfObject = new Object[4];
              arrayOfObject[0] = paramContext;
              arrayOfObject[1] = paramAttributeSet;
              arrayOfObject[2] = Integer.valueOf(paramInt1);
              arrayOfObject[3] = Integer.valueOf(paramInt2);
              paramContext = arrayOfObject;
            }
            catch (NoSuchMethodException paramContext)
            {
              try
              {
                paramString = localClass.getConstructor(new Class[0]);
                paramContext = null;
              }
              catch (NoSuchMethodException paramString)
              {
                paramString.initCause(paramContext);
                throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, paramString);
              }
            }
            paramString.setAccessible(true);
            setLayoutManager((LayoutManager)paramString.newInstance(paramContext));
            return;
          }
          return;
        }
        catch (ClassNotFoundException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, paramContext);
        }
        catch (InvocationTargetException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (InstantiationException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (IllegalAccessException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, paramContext);
        }
        catch (ClassCastException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, paramContext);
        }
      }
    }
  }
  
  private void defaultOnMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (j)
    {
    default: 
      paramInt1 = ViewCompat.getMinimumWidth(this);
    }
    switch (i)
    {
    default: 
      paramInt2 = ViewCompat.getMinimumHeight(this);
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  private boolean didChildRangeChange(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int j = mChildHelper.getChildCount();
    boolean bool1;
    if (j == 0)
    {
      if (paramInt1 == 0)
      {
        bool1 = bool2;
        if (paramInt2 == 0) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i >= j) {
        break;
      }
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if (!localViewHolder.shouldIgnore())
      {
        int k = localViewHolder.getLayoutPosition();
        if ((k < paramInt1) || (k > paramInt2)) {
          return true;
        }
      }
      i += 1;
    }
  }
  
  private void dispatchChildAttached(View paramView)
  {
    ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    onChildAttachedToWindow(paramView);
    if ((mAdapter != null) && (localViewHolder != null)) {
      mAdapter.onViewAttachedToWindow(localViewHolder);
    }
    if (mOnChildAttachStateListeners != null)
    {
      int i = mOnChildAttachStateListeners.size() - 1;
      while (i >= 0)
      {
        ((OnChildAttachStateChangeListener)mOnChildAttachStateListeners.get(i)).onChildViewAttachedToWindow(paramView);
        i -= 1;
      }
    }
  }
  
  private void dispatchChildDetached(View paramView)
  {
    ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    onChildDetachedFromWindow(paramView);
    if ((mAdapter != null) && (localViewHolder != null)) {
      mAdapter.onViewDetachedFromWindow(localViewHolder);
    }
    if (mOnChildAttachStateListeners != null)
    {
      int i = mOnChildAttachStateListeners.size() - 1;
      while (i >= 0)
      {
        ((OnChildAttachStateChangeListener)mOnChildAttachStateListeners.get(i)).onChildViewDetachedFromWindow(paramView);
        i -= 1;
      }
    }
  }
  
  private void dispatchContentChangedIfNecessary()
  {
    int i = mEatenAccessibilityChangeFlags;
    mEatenAccessibilityChangeFlags = 0;
    if ((i != 0) && (isAccessibilityEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      AccessibilityEventCompat.setContentChangeTypes(localAccessibilityEvent, i);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private boolean dispatchOnItemTouch(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j;
    if (mActiveOnItemTouchListener != null)
    {
      if (i == 0) {
        mActiveOnItemTouchListener = null;
      }
    }
    else
    {
      if (i == 0) {
        break label108;
      }
      j = mOnItemTouchListeners.size();
      i = 0;
    }
    while (i < j)
    {
      OnItemTouchListener localOnItemTouchListener = (OnItemTouchListener)mOnItemTouchListeners.get(i);
      if (localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
        mActiveOnItemTouchListener.onTouchEvent(this, paramMotionEvent);
        if ((i == 3) || (i == 1)) {
          mActiveOnItemTouchListener = null;
        }
        return true;
      }
      i += 1;
    }
    label108:
    return false;
  }
  
  private boolean dispatchOnItemTouchIntercept(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((j == 3) || (j == 0)) {
      mActiveOnItemTouchListener = null;
    }
    int k = mOnItemTouchListeners.size();
    int i = 0;
    while (i < k)
    {
      OnItemTouchListener localOnItemTouchListener = (OnItemTouchListener)mOnItemTouchListeners.get(i);
      if ((localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent)) && (j != 3))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void findMinMaxChildLayoutPositions(int[] paramArrayOfInt)
  {
    int i2 = mChildHelper.getChildCount();
    if (i2 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i = Integer.MAX_VALUE;
    int k = Integer.MIN_VALUE;
    int n = 0;
    int m;
    int j;
    if (n < i2)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(n));
      m = i;
      if (localViewHolder.shouldIgnore()) {
        break label122;
      }
      int i1 = localViewHolder.getLayoutPosition();
      j = i;
      if (i1 < i) {
        j = i1;
      }
      m = j;
      if (i1 <= k) {
        break label122;
      }
      i = i1;
    }
    for (;;)
    {
      n += 1;
      k = i;
      i = j;
      break;
      paramArrayOfInt[0] = i;
      paramArrayOfInt[1] = k;
      return;
      label122:
      i = k;
      j = m;
    }
  }
  
  private int getAdapterPositionFor(ViewHolder paramViewHolder)
  {
    if ((paramViewHolder.hasAnyOfTheFlags(524)) || (!paramViewHolder.isBound())) {
      return -1;
    }
    return mAdapterHelper.applyPendingUpdatesToPosition(mPosition);
  }
  
  static ViewHolder getChildViewHolderInt(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsmViewHolder;
  }
  
  private String getFullClassName(Context paramContext, String paramString)
  {
    if (paramString.charAt(0) == '.') {
      paramContext = paramContext.getPackageName() + paramString;
    }
    do
    {
      return paramContext;
      paramContext = paramString;
    } while (paramString.contains("."));
    return RecyclerView.class.getPackage().getName() + '.' + paramString;
  }
  
  private float getScrollFactor()
  {
    if (mScrollFactor == Float.MIN_VALUE)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        mScrollFactor = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return mScrollFactor;
    }
    return 0.0F;
  }
  
  private boolean hasUpdatedView()
  {
    boolean bool2 = false;
    int j = mChildHelper.getChildCount();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
        if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()) && (localViewHolder.isUpdated())) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  private void initChildrenHelper()
  {
    mChildHelper = new ChildHelper(new ChildHelper.Callback()
    {
      public void addView(View paramAnonymousView, int paramAnonymousInt)
      {
        RecyclerView.this.addView(paramAnonymousView, paramAnonymousInt);
        RecyclerView.this.dispatchChildAttached(paramAnonymousView);
      }
      
      public void attachViewToParent(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
      {
        RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramAnonymousView);
        if (localViewHolder != null)
        {
          if ((!localViewHolder.isTmpDetached()) && (!localViewHolder.shouldIgnore())) {
            throw new IllegalArgumentException("Called attach on a child which is not detached: " + localViewHolder);
          }
          localViewHolder.clearTmpDetachFlag();
        }
        RecyclerView.this.attachViewToParent(paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
      }
      
      public void detachViewFromParent(int paramAnonymousInt)
      {
        Object localObject = getChildAt(paramAnonymousInt);
        if (localObject != null)
        {
          localObject = RecyclerView.getChildViewHolderInt((View)localObject);
          if (localObject != null)
          {
            if ((((RecyclerView.ViewHolder)localObject).isTmpDetached()) && (!((RecyclerView.ViewHolder)localObject).shouldIgnore())) {
              throw new IllegalArgumentException("called detach on an already detached child " + localObject);
            }
            ((RecyclerView.ViewHolder)localObject).addFlags(256);
          }
        }
        RecyclerView.this.detachViewFromParent(paramAnonymousInt);
      }
      
      public View getChildAt(int paramAnonymousInt)
      {
        return RecyclerView.this.getChildAt(paramAnonymousInt);
      }
      
      public int getChildCount()
      {
        return RecyclerView.this.getChildCount();
      }
      
      public RecyclerView.ViewHolder getChildViewHolder(View paramAnonymousView)
      {
        return RecyclerView.getChildViewHolderInt(paramAnonymousView);
      }
      
      public int indexOfChild(View paramAnonymousView)
      {
        return RecyclerView.this.indexOfChild(paramAnonymousView);
      }
      
      public void onEnteredHiddenState(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.getChildViewHolderInt(paramAnonymousView);
        if (paramAnonymousView != null) {
          RecyclerView.ViewHolder.access$1600(paramAnonymousView);
        }
      }
      
      public void onLeftHiddenState(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.getChildViewHolderInt(paramAnonymousView);
        if (paramAnonymousView != null) {
          RecyclerView.ViewHolder.access$1700(paramAnonymousView);
        }
      }
      
      public void removeAllViews()
      {
        int j = getChildCount();
        int i = 0;
        while (i < j)
        {
          RecyclerView.this.dispatchChildDetached(getChildAt(i));
          i += 1;
        }
        RecyclerView.this.removeAllViews();
      }
      
      public void removeViewAt(int paramAnonymousInt)
      {
        View localView = RecyclerView.this.getChildAt(paramAnonymousInt);
        if (localView != null) {
          RecyclerView.this.dispatchChildDetached(localView);
        }
        RecyclerView.this.removeViewAt(paramAnonymousInt);
      }
    });
  }
  
  private void jumpToPositionForSmoothScroller(int paramInt)
  {
    if (mLayout == null) {
      return;
    }
    mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  private void onEnterLayoutOrScroll()
  {
    mLayoutOrScrollCounter += 1;
  }
  
  private void onExitLayoutOrScroll()
  {
    mLayoutOrScrollCounter -= 1;
    if (mLayoutOrScrollCounter <= 0)
    {
      mLayoutOrScrollCounter = 0;
      dispatchContentChangedIfNecessary();
    }
  }
  
  private void onPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == mScrollPointerId) {
      if (i != 0) {
        break label75;
      }
    }
    label75:
    for (i = 1;; i = 0)
    {
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      int j = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      return;
    }
  }
  
  private void postAnimationRunner()
  {
    if ((!mPostedAnimatorRunner) && (mIsAttached))
    {
      ViewCompat.postOnAnimation(this, mItemAnimatorRunner);
      mPostedAnimatorRunner = true;
    }
  }
  
  private boolean predictiveItemAnimationsEnabled()
  {
    return (mItemAnimator != null) && (mLayout.supportsPredictiveItemAnimations());
  }
  
  private void processAdapterUpdatesAndSetAnimationFlags()
  {
    boolean bool2 = true;
    if (mDataSetHasChangedAfterLayout)
    {
      mAdapterHelper.reset();
      markKnownViewsInvalid();
      mLayout.onItemsChanged(this);
    }
    int i;
    label68:
    State localState;
    if ((mItemAnimator != null) && (mLayout.supportsPredictiveItemAnimations()))
    {
      mAdapterHelper.preProcess();
      if ((!mItemsAddedOrRemoved) && (!mItemsChanged)) {
        break label189;
      }
      i = 1;
      localState = mState;
      if ((!mFirstLayoutComplete) || (mItemAnimator == null) || ((!mDataSetHasChangedAfterLayout) && (i == 0) && (!mLayout.mRequestedSimpleAnimations)) || ((mDataSetHasChangedAfterLayout) && (!mAdapter.hasStableIds()))) {
        break label194;
      }
      bool1 = true;
      label128:
      State.access$2302(localState, bool1);
      localState = mState;
      if ((!mState.mRunSimpleAnimations) || (i == 0) || (mDataSetHasChangedAfterLayout) || (!predictiveItemAnimationsEnabled())) {
        break label199;
      }
    }
    label189:
    label194:
    label199:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      State.access$2102(localState, bool1);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      break;
      i = 0;
      break label68;
      bool1 = false;
      break label128;
    }
  }
  
  private void pullGlows(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int j = 1;
    int k = 0;
    int i;
    if (paramFloat2 < 0.0F)
    {
      ensureLeftGlow();
      i = k;
      if (mLeftGlow.onPull(-paramFloat2 / getWidth(), 1.0F - paramFloat3 / getHeight())) {
        i = 1;
      }
      if (paramFloat4 >= 0.0F) {
        break label158;
      }
      ensureTopGlow();
      if (!mTopGlow.onPull(-paramFloat4 / getHeight(), paramFloat1 / getWidth())) {
        break label196;
      }
    }
    for (;;)
    {
      if ((j != 0) || (paramFloat2 != 0.0F) || (paramFloat4 != 0.0F)) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      i = k;
      if (paramFloat2 <= 0.0F) {
        break;
      }
      ensureRightGlow();
      i = k;
      if (!mRightGlow.onPull(paramFloat2 / getWidth(), paramFloat3 / getHeight())) {
        break;
      }
      i = 1;
      break;
      label158:
      if (paramFloat4 > 0.0F)
      {
        ensureBottomGlow();
        if (mBottomGlow.onPull(paramFloat4 / getHeight(), 1.0F - paramFloat1 / getWidth())) {}
      }
      else
      {
        label196:
        j = i;
      }
    }
  }
  
  private void recordAnimationInfoIfBouncedHiddenView(ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    paramViewHolder.setFlags(0, 8192);
    if ((mState.mTrackOldChangeHolders) && (paramViewHolder.isUpdated()) && (!paramViewHolder.isRemoved()) && (!paramViewHolder.shouldIgnore()))
    {
      long l = getChangedHolderKey(paramViewHolder);
      mViewInfoStore.addToOldChangeHolders(l, paramViewHolder);
    }
    mViewInfoStore.addToPreLayout(paramViewHolder, paramItemHolderInfo);
  }
  
  private void releaseGlows()
  {
    boolean bool2 = false;
    if (mLeftGlow != null) {
      bool2 = mLeftGlow.onRelease();
    }
    boolean bool1 = bool2;
    if (mTopGlow != null) {
      bool1 = bool2 | mTopGlow.onRelease();
    }
    bool2 = bool1;
    if (mRightGlow != null) {
      bool2 = bool1 | mRightGlow.onRelease();
    }
    bool1 = bool2;
    if (mBottomGlow != null) {
      bool1 = bool2 | mBottomGlow.onRelease();
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private boolean removeAnimatingView(View paramView)
  {
    eatRequestLayout();
    boolean bool = mChildHelper.removeViewIfHidden(paramView);
    if (bool)
    {
      paramView = getChildViewHolderInt(paramView);
      mRecycler.unscrapView(paramView);
      mRecycler.recycleViewHolderInternal(paramView);
    }
    resumeRequestLayout(false);
    return bool;
  }
  
  private void repositionShadowingViews()
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = mChildHelper.getChildAt(i);
      Object localObject = getChildViewHolder(localView);
      if ((localObject != null) && (mShadowingHolder != null))
      {
        localObject = mShadowingHolder.itemView;
        int k = localView.getLeft();
        int m = localView.getTop();
        if ((k != ((View)localObject).getLeft()) || (m != ((View)localObject).getTop())) {
          ((View)localObject).layout(k, m, ((View)localObject).getWidth() + k, ((View)localObject).getHeight() + m);
        }
      }
      i += 1;
    }
  }
  
  private void resetTouch()
  {
    if (mVelocityTracker != null) {
      mVelocityTracker.clear();
    }
    stopNestedScroll();
    releaseGlows();
  }
  
  private void setAdapterInternal(Adapter paramAdapter, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mAdapter != null)
    {
      mAdapter.unregisterAdapterDataObserver(mObserver);
      mAdapter.onDetachedFromRecyclerView(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (mItemAnimator != null) {
        mItemAnimator.endAnimations();
      }
      if (mLayout != null)
      {
        mLayout.removeAndRecycleAllViews(mRecycler);
        mLayout.removeAndRecycleScrapInt(mRecycler);
      }
      mRecycler.clear();
    }
    mAdapterHelper.reset();
    Adapter localAdapter = mAdapter;
    mAdapter = paramAdapter;
    if (paramAdapter != null)
    {
      paramAdapter.registerAdapterDataObserver(mObserver);
      paramAdapter.onAttachedToRecyclerView(this);
    }
    if (mLayout != null) {
      mLayout.onAdapterChanged(localAdapter, mAdapter);
    }
    mRecycler.onAdapterChanged(localAdapter, mAdapter, paramBoolean1);
    State.access$1902(mState, true);
    markKnownViewsInvalid();
  }
  
  private void setDataSetChangedAfterLayout()
  {
    if (mDataSetHasChangedAfterLayout) {
      return;
    }
    mDataSetHasChangedAfterLayout = true;
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(512);
      }
      i += 1;
    }
    mRecycler.setAdapterPositionsAsUnknown();
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == mScrollState) {
      return;
    }
    mScrollState = paramInt;
    if (paramInt != 2) {
      stopScrollersInternal();
    }
    dispatchOnScrollStateChanged(paramInt);
  }
  
  private void stopScrollersInternal()
  {
    mViewFlinger.stop();
    if (mLayout != null) {
      mLayout.stopSmoothScroller();
    }
  }
  
  void absorbGlows(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ensureLeftGlow();
      mLeftGlow.onAbsorb(-paramInt1);
      if (paramInt2 >= 0) {
        break label69;
      }
      ensureTopGlow();
      mTopGlow.onAbsorb(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      ensureRightGlow();
      mRightGlow.onAbsorb(paramInt1);
      break;
      label69:
      if (paramInt2 > 0)
      {
        ensureBottomGlow();
        mBottomGlow.onAbsorb(paramInt2);
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((mLayout == null) || (!mLayout.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  public void addItemDecoration(ItemDecoration paramItemDecoration)
  {
    addItemDecoration(paramItemDecoration, -1);
  }
  
  public void addItemDecoration(ItemDecoration paramItemDecoration, int paramInt)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
    }
    if (mItemDecorations.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      mItemDecorations.add(paramItemDecoration);
    }
    for (;;)
    {
      markItemDecorInsetsDirty();
      requestLayout();
      return;
      mItemDecorations.add(paramInt, paramItemDecoration);
    }
  }
  
  public void addOnChildAttachStateChangeListener(OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (mOnChildAttachStateListeners == null) {
      mOnChildAttachStateListeners = new ArrayList();
    }
    mOnChildAttachStateListeners.add(paramOnChildAttachStateChangeListener);
  }
  
  public void addOnItemTouchListener(OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.add(paramOnItemTouchListener);
  }
  
  public void addOnScrollListener(OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners == null) {
      mScrollListeners = new ArrayList();
    }
    mScrollListeners.add(paramOnScrollListener);
  }
  
  void assertInLayoutOrScroll(String paramString)
  {
    if (!isComputingLayout())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void assertNotInLayoutOrScroll(String paramString)
  {
    if (isComputingLayout())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (mLayout.checkLayoutParams((LayoutParams)paramLayoutParams));
  }
  
  void clearOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.clearOldPosition();
      }
      i += 1;
    }
    mRecycler.clearOldPositions();
  }
  
  public void clearOnChildAttachStateChangeListeners()
  {
    if (mOnChildAttachStateListeners != null) {
      mOnChildAttachStateListeners.clear();
    }
  }
  
  public void clearOnScrollListeners()
  {
    if (mScrollListeners != null) {
      mScrollListeners.clear();
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollExtent(mState);
    }
    return 0;
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollOffset(mState);
    }
    return 0;
  }
  
  public int computeHorizontalScrollRange()
  {
    if (mLayout.canScrollHorizontally()) {
      return mLayout.computeHorizontalScrollRange(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollExtent()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollExtent(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollOffset()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollOffset(mState);
    }
    return 0;
  }
  
  public int computeVerticalScrollRange()
  {
    if (mLayout.canScrollVertically()) {
      return mLayout.computeVerticalScrollRange(mState);
    }
    return 0;
  }
  
  void dispatchLayout()
  {
    if (mAdapter == null) {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
    }
    label481:
    label593:
    label621:
    label727:
    label733:
    label747:
    label758:
    do
    {
      return;
      if (mLayout == null)
      {
        Log.e("RecyclerView", "No layout manager attached; skipping layout");
        return;
      }
      mViewInfoStore.clear();
      eatRequestLayout();
      onEnterLayoutOrScroll();
      processAdapterUpdatesAndSetAnimationFlags();
      Object localObject = mState;
      if ((mState.mRunSimpleAnimations) && (mItemsChanged)) {}
      int j;
      int i;
      RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo;
      long l;
      for (boolean bool = true;; bool = false)
      {
        State.access$2502((State)localObject, bool);
        mItemsChanged = false;
        mItemsAddedOrRemoved = false;
        State.access$2202(mState, mState.mRunPredictiveAnimations);
        mState.mItemCount = mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(mMinMaxLayoutPositions);
        if (!mState.mRunSimpleAnimations) {
          break;
        }
        j = mChildHelper.getChildCount();
        i = 0;
        while (i < j)
        {
          localObject = getChildViewHolderInt(mChildHelper.getChildAt(i));
          if ((!((ViewHolder)localObject).shouldIgnore()) && ((!((ViewHolder)localObject).isInvalid()) || (mAdapter.hasStableIds())))
          {
            localItemHolderInfo = mItemAnimator.recordPreLayoutInformation(mState, (ViewHolder)localObject, ItemAnimator.buildAdapterChangeFlagsForAnimations((ViewHolder)localObject), ((ViewHolder)localObject).getUnmodifiedPayloads());
            mViewInfoStore.addToPreLayout((ViewHolder)localObject, localItemHolderInfo);
            if ((mState.mTrackOldChangeHolders) && (((ViewHolder)localObject).isUpdated()) && (!((ViewHolder)localObject).isRemoved()) && (!((ViewHolder)localObject).shouldIgnore()) && (!((ViewHolder)localObject).isInvalid()))
            {
              l = getChangedHolderKey((ViewHolder)localObject);
              mViewInfoStore.addToOldChangeHolders(l, (ViewHolder)localObject);
            }
          }
          i += 1;
        }
      }
      if (mState.mRunPredictiveAnimations)
      {
        saveOldPositions();
        bool = mState.mStructureChanged;
        State.access$1902(mState, false);
        mLayout.onLayoutChildren(mRecycler, mState);
        State.access$1902(mState, bool);
        i = 0;
        if (i < mChildHelper.getChildCount())
        {
          localObject = getChildViewHolderInt(mChildHelper.getChildAt(i));
          if ((!((ViewHolder)localObject).shouldIgnore()) && (!mViewInfoStore.isInPreLayout((ViewHolder)localObject)))
          {
            int k = ItemAnimator.buildAdapterChangeFlagsForAnimations((ViewHolder)localObject);
            bool = ((ViewHolder)localObject).hasAnyOfTheFlags(8192);
            j = k;
            if (!bool) {
              j = k | 0x1000;
            }
            localItemHolderInfo = mItemAnimator.recordPreLayoutInformation(mState, (ViewHolder)localObject, j, ((ViewHolder)localObject).getUnmodifiedPayloads());
            if (!bool) {
              break label481;
            }
            recordAnimationInfoIfBouncedHiddenView((ViewHolder)localObject, localItemHolderInfo);
          }
          for (;;)
          {
            i += 1;
            break;
            mViewInfoStore.addToAppearedInPreLayoutHolders((ViewHolder)localObject, localItemHolderInfo);
          }
        }
        clearOldPositions();
        mAdapterHelper.consumePostponedUpdates();
        mState.mItemCount = mAdapter.getItemCount();
        State.access$1802(mState, 0);
        State.access$2202(mState, false);
        mLayout.onLayoutChildren(mRecycler, mState);
        State.access$1902(mState, false);
        mPendingSavedState = null;
        localObject = mState;
        if ((!mState.mRunSimpleAnimations) || (mItemAnimator == null)) {
          break label727;
        }
        bool = true;
        State.access$2302((State)localObject, bool);
        if (!mState.mRunSimpleAnimations) {
          break label758;
        }
        j = mChildHelper.getChildCount();
        i = 0;
        if (i >= j) {
          break label747;
        }
        localObject = getChildViewHolderInt(mChildHelper.getChildAt(i));
        if (!((ViewHolder)localObject).shouldIgnore())
        {
          l = getChangedHolderKey((ViewHolder)localObject);
          localItemHolderInfo = mItemAnimator.recordPostLayoutInformation(mState, (ViewHolder)localObject);
          ViewHolder localViewHolder = mViewInfoStore.getFromOldChangeHolders(l);
          if ((localViewHolder == null) || (localViewHolder.shouldIgnore())) {
            break label733;
          }
          animateChange(localViewHolder, (ViewHolder)localObject, mViewInfoStore.popFromPreLayout(localViewHolder), localItemHolderInfo);
        }
      }
      for (;;)
      {
        i += 1;
        break label621;
        clearOldPositions();
        break;
        bool = false;
        break label593;
        mViewInfoStore.addToPostLayout((ViewHolder)localObject, localItemHolderInfo);
      }
      mViewInfoStore.process(mViewInfoProcessCallback);
      resumeRequestLayout(false);
      mLayout.removeAndRecycleScrapInt(mRecycler);
      State.access$2602(mState, mState.mItemCount);
      mDataSetHasChangedAfterLayout = false;
      State.access$2302(mState, false);
      State.access$2102(mState, false);
      onExitLayoutOrScroll();
      LayoutManager.access$2402(mLayout, false);
      if (mRecycler.mChangedScrap != null) {
        mRecycler.mChangedScrap.clear();
      }
      mViewInfoStore.clear();
    } while (!didChildRangeChange(mMinMaxLayoutPositions[0], mMinMaxLayoutPositions[1]));
    dispatchOnScrolled(0, 0);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return mScrollingChildHelper.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return mScrollingChildHelper.dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return mScrollingChildHelper.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return mScrollingChildHelper.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  void dispatchOnScrollStateChanged(int paramInt)
  {
    if (mLayout != null) {
      mLayout.onScrollStateChanged(paramInt);
    }
    onScrollStateChanged(paramInt);
    if (mScrollListener != null) {
      mScrollListener.onScrollStateChanged(this, paramInt);
    }
    if (mScrollListeners != null)
    {
      int i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((OnScrollListener)mScrollListeners.get(i)).onScrollStateChanged(this, paramInt);
        i -= 1;
      }
    }
  }
  
  void dispatchOnScrolled(int paramInt1, int paramInt2)
  {
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i, j);
    onScrolled(paramInt1, paramInt2);
    if (mScrollListener != null) {
      mScrollListener.onScrolled(this, paramInt1, paramInt2);
    }
    if (mScrollListeners != null)
    {
      i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((OnScrollListener)mScrollListeners.get(i)).onScrolled(this, paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int k = 1;
    int m = 0;
    super.draw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((ItemDecoration)mItemDecorations.get(i)).onDrawOver(paramCanvas, this, mState);
      i += 1;
    }
    int n;
    if ((mLeftGlow != null) && (!mLeftGlow.isFinished()))
    {
      n = paramCanvas.save();
      if (mClipToPadding)
      {
        i = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i + -getHeight(), 0.0F);
        if ((mLeftGlow == null) || (!mLeftGlow.draw(paramCanvas))) {
          break label456;
        }
        j = 1;
        label128:
        paramCanvas.restoreToCount(n);
      }
    }
    for (;;)
    {
      i = j;
      if (mTopGlow != null)
      {
        i = j;
        if (!mTopGlow.isFinished())
        {
          n = paramCanvas.save();
          if (mClipToPadding) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((mTopGlow == null) || (!mTopGlow.draw(paramCanvas))) {
            break label461;
          }
          i = 1;
          label202:
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      j = i;
      if (mRightGlow != null)
      {
        j = i;
        if (!mRightGlow.isFinished())
        {
          n = paramCanvas.save();
          int i1 = getWidth();
          if (!mClipToPadding) {
            break label466;
          }
          j = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-j, -i1);
          if ((mRightGlow == null) || (!mRightGlow.draw(paramCanvas))) {
            break label471;
          }
          j = 1;
          label295:
          j = i | j;
          paramCanvas.restoreToCount(n);
        }
      }
      i = j;
      if (mBottomGlow != null)
      {
        i = j;
        if (!mBottomGlow.isFinished())
        {
          n = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!mClipToPadding) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i = m;
          if (mBottomGlow != null)
          {
            i = m;
            if (mBottomGlow.draw(paramCanvas)) {
              i = 1;
            }
          }
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      if ((i == 0) && (mItemAnimator != null) && (mItemDecorations.size() > 0) && (mItemAnimator.isRunning())) {
        i = k;
      }
      for (;;)
      {
        if (i != 0) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        return;
        i = 0;
        break;
        label456:
        j = 0;
        break label128;
        label461:
        i = 0;
        break label202;
        label466:
        j = 0;
        break label257;
        label471:
        j = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      j = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void eatRequestLayout()
  {
    if (!mEatRequestLayout)
    {
      mEatRequestLayout = true;
      if (!mLayoutFrozen) {
        mLayoutRequestEaten = false;
      }
    }
  }
  
  void ensureBottomGlow()
  {
    if (mBottomGlow != null) {
      return;
    }
    mBottomGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mBottomGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mBottomGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ensureLeftGlow()
  {
    if (mLeftGlow != null) {
      return;
    }
    mLeftGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mLeftGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mLeftGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureRightGlow()
  {
    if (mRightGlow != null) {
      return;
    }
    mRightGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mRightGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mRightGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureTopGlow()
  {
    if (mTopGlow != null) {
      return;
    }
    mTopGlow = new EdgeEffectCompat(getContext());
    if (mClipToPadding)
    {
      mTopGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public View findChildViewUnder(float paramFloat1, float paramFloat2)
  {
    int i = mChildHelper.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = mChildHelper.getChildAt(i);
      float f1 = ViewCompat.getTranslationX(localView);
      float f2 = ViewCompat.getTranslationY(localView);
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= f1 + localView.getRight()) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  public ViewHolder findViewHolderForAdapterPosition(int paramInt)
  {
    if (mDataSetHasChangedAfterLayout) {}
    for (;;)
    {
      return null;
      int j = mChildHelper.getUnfilteredChildCount();
      int i = 0;
      while (i < j)
      {
        ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
        if ((localViewHolder != null) && (!localViewHolder.isRemoved()) && (getAdapterPositionFor(localViewHolder) == paramInt)) {
          return localViewHolder;
        }
        i += 1;
      }
    }
  }
  
  public ViewHolder findViewHolderForItemId(long paramLong)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (localViewHolder.getItemId() == paramLong)) {
        return localViewHolder;
      }
      i += 1;
    }
    return null;
  }
  
  public ViewHolder findViewHolderForLayoutPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  @Deprecated
  public ViewHolder findViewHolderForPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  ViewHolder findViewHolderForPosition(int paramInt, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.isRemoved())) {
        if (paramBoolean)
        {
          if (mPosition != paramInt) {}
        }
        else {
          while (localViewHolder.getLayoutPosition() == paramInt) {
            return localViewHolder;
          }
        }
      }
      i += 1;
    }
    return null;
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool2;
    int i;
    do
    {
      do
      {
        return false;
      } while (mLayoutFrozen);
      bool1 = mLayout.canScrollHorizontally();
      bool2 = mLayout.canScrollVertically();
      if (bool1)
      {
        i = paramInt1;
        if (Math.abs(paramInt1) >= mMinFlingVelocity) {}
      }
      else
      {
        i = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= mMinFlingVelocity) {}
      }
      else
      {
        paramInt1 = 0;
      }
    } while (((i == 0) && (paramInt1 == 0)) || (dispatchNestedPreFling(i, paramInt1)));
    if ((bool1) || (bool2)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      dispatchNestedFling(i, paramInt1, bool1);
      if (!bool1) {
        break;
      }
      paramInt2 = Math.max(-mMaxFlingVelocity, Math.min(i, mMaxFlingVelocity));
      paramInt1 = Math.max(-mMaxFlingVelocity, Math.min(paramInt1, mMaxFlingVelocity));
      mViewFlinger.fling(paramInt2, paramInt1);
      return true;
    }
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject2 = mLayout.onInterceptFocusSearch(paramView, paramInt);
    if (localObject2 != null) {}
    Object localObject1;
    do
    {
      return (View)localObject2;
      localObject2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (mAdapter != null)
        {
          localObject1 = localObject2;
          if (mLayout != null)
          {
            localObject1 = localObject2;
            if (!isComputingLayout())
            {
              localObject1 = localObject2;
              if (!mLayoutFrozen)
              {
                eatRequestLayout();
                localObject1 = mLayout.onFocusSearchFailed(paramView, paramInt, mRecycler, mState);
                resumeRequestLayout(false);
              }
            }
          }
        }
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    return super.focusSearch(paramView, paramInt);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateDefaultLayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(paramLayoutParams);
  }
  
  public Adapter getAdapter()
  {
    return mAdapter;
  }
  
  public int getBaseline()
  {
    if (mLayout != null) {
      return mLayout.getBaseline();
    }
    return super.getBaseline();
  }
  
  long getChangedHolderKey(ViewHolder paramViewHolder)
  {
    if (mAdapter.hasStableIds()) {
      return paramViewHolder.getItemId();
    }
    return mPosition;
  }
  
  public int getChildAdapterPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (mChildDrawingOrderCallback == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return mChildDrawingOrderCallback.onGetChildDrawingOrder(paramInt1, paramInt2);
  }
  
  public long getChildItemId(View paramView)
  {
    if ((mAdapter == null) || (!mAdapter.hasStableIds())) {}
    do
    {
      return -1L;
      paramView = getChildViewHolderInt(paramView);
    } while (paramView == null);
    return paramView.getItemId();
  }
  
  public int getChildLayoutPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  @Deprecated
  public int getChildPosition(View paramView)
  {
    return getChildAdapterPosition(paramView);
  }
  
  public ViewHolder getChildViewHolder(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return getChildViewHolderInt(paramView);
  }
  
  public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate()
  {
    return mAccessibilityDelegate;
  }
  
  public ItemAnimator getItemAnimator()
  {
    return mItemAnimator;
  }
  
  Rect getItemDecorInsetsForChild(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!mInsetsDirty) {
      return mDecorInsets;
    }
    Rect localRect = mDecorInsets;
    localRect.set(0, 0, 0, 0);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      mTempRect.set(0, 0, 0, 0);
      ((ItemDecoration)mItemDecorations.get(i)).getItemOffsets(mTempRect, paramView, this, mState);
      left += mTempRect.left;
      top += mTempRect.top;
      right += mTempRect.right;
      bottom += mTempRect.bottom;
      i += 1;
    }
    mInsetsDirty = false;
    return localRect;
  }
  
  public LayoutManager getLayoutManager()
  {
    return mLayout;
  }
  
  public int getMaxFlingVelocity()
  {
    return mMaxFlingVelocity;
  }
  
  public int getMinFlingVelocity()
  {
    return mMinFlingVelocity;
  }
  
  public RecycledViewPool getRecycledViewPool()
  {
    return mRecycler.getRecycledViewPool();
  }
  
  public int getScrollState()
  {
    return mScrollState;
  }
  
  public boolean hasFixedSize()
  {
    return mHasFixedSize;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return mScrollingChildHelper.hasNestedScrollingParent();
  }
  
  public boolean hasPendingAdapterUpdates()
  {
    return (!mFirstLayoutComplete) || (mDataSetHasChangedAfterLayout) || (mAdapterHelper.hasPendingUpdates());
  }
  
  void initAdapterManager()
  {
    mAdapterHelper = new AdapterHelper(new AdapterHelper.Callback()
    {
      void dispatchUpdate(AdapterHelper.UpdateOp paramAnonymousUpdateOp)
      {
        switch (cmd)
        {
        case 3: 
        case 5: 
        case 6: 
        case 7: 
        default: 
          return;
        case 1: 
          mLayout.onItemsAdded(RecyclerView.this, positionStart, itemCount);
          return;
        case 2: 
          mLayout.onItemsRemoved(RecyclerView.this, positionStart, itemCount);
          return;
        case 4: 
          mLayout.onItemsUpdated(RecyclerView.this, positionStart, itemCount, payload);
          return;
        }
        mLayout.onItemsMoved(RecyclerView.this, positionStart, itemCount, 1);
      }
      
      public RecyclerView.ViewHolder findViewHolder(int paramAnonymousInt)
      {
        RecyclerView.ViewHolder localViewHolder = findViewHolderForPosition(paramAnonymousInt, true);
        if (localViewHolder == null) {}
        while (mChildHelper.isHidden(itemView)) {
          return null;
        }
        return localViewHolder;
      }
      
      public void markViewHoldersUpdated(int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
      {
        viewRangeUpdate(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousObject);
        mItemsChanged = true;
      }
      
      public void offsetPositionsForAdd(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        offsetPositionRecordsForInsert(paramAnonymousInt1, paramAnonymousInt2);
        mItemsAddedOrRemoved = true;
      }
      
      public void offsetPositionsForMove(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        offsetPositionRecordsForMove(paramAnonymousInt1, paramAnonymousInt2);
        mItemsAddedOrRemoved = true;
      }
      
      public void offsetPositionsForRemovingInvisible(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        offsetPositionRecordsForRemove(paramAnonymousInt1, paramAnonymousInt2, true);
        mItemsAddedOrRemoved = true;
        RecyclerView.State.access$1812(mState, paramAnonymousInt2);
      }
      
      public void offsetPositionsForRemovingLaidOutOrNewView(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        offsetPositionRecordsForRemove(paramAnonymousInt1, paramAnonymousInt2, false);
        mItemsAddedOrRemoved = true;
      }
      
      public void onDispatchFirstPass(AdapterHelper.UpdateOp paramAnonymousUpdateOp)
      {
        dispatchUpdate(paramAnonymousUpdateOp);
      }
      
      public void onDispatchSecondPass(AdapterHelper.UpdateOp paramAnonymousUpdateOp)
      {
        dispatchUpdate(paramAnonymousUpdateOp);
      }
    });
  }
  
  void invalidateGlows()
  {
    mBottomGlow = null;
    mTopGlow = null;
    mRightGlow = null;
    mLeftGlow = null;
  }
  
  public void invalidateItemDecorations()
  {
    if (mItemDecorations.size() == 0) {
      return;
    }
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  boolean isAccessibilityEnabled()
  {
    return (mAccessibilityManager != null) && (mAccessibilityManager.isEnabled());
  }
  
  public boolean isAnimating()
  {
    return (mItemAnimator != null) && (mItemAnimator.isRunning());
  }
  
  public boolean isAttachedToWindow()
  {
    return mIsAttached;
  }
  
  public boolean isComputingLayout()
  {
    return mLayoutOrScrollCounter > 0;
  }
  
  public boolean isLayoutFrozen()
  {
    return mLayoutFrozen;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return mScrollingChildHelper.isNestedScrollingEnabled();
  }
  
  void markItemDecorInsetsDirty()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
      i += 1;
    }
    mRecycler.markItemDecorInsetsDirty();
  }
  
  void markKnownViewsInvalid()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(6);
      }
      i += 1;
    }
    markItemDecorInsetsDirty();
    mRecycler.markKnownViewsInvalid();
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetLeftAndRight(paramInt);
      i += 1;
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetTopAndBottom(paramInt);
      i += 1;
    }
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()) && (mPosition >= paramInt1))
      {
        localViewHolder.offsetPosition(paramInt2, false);
        State.access$1902(mState, true);
      }
      i += 1;
    }
    mRecycler.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2)
  {
    int n = mChildHelper.getUnfilteredChildCount();
    int i;
    int j;
    int k;
    int m;
    label25:
    ViewHolder localViewHolder;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      m = 0;
      if (m >= n) {
        break label128;
      }
      localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(m));
      if ((localViewHolder != null) && (mPosition >= k) && (mPosition <= j))
      {
        if (mPosition != paramInt1) {
          break label118;
        }
        localViewHolder.offsetPosition(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      State.access$1902(mState, true);
      m += 1;
      break label25;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label118:
      localViewHolder.offsetPosition(i, false);
    }
    label128:
    mRecycler.offsetPositionRecordsForMove(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    if (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()))
      {
        if (mPosition < paramInt1 + paramInt2) {
          break label83;
        }
        localViewHolder.offsetPosition(-paramInt2, paramBoolean);
        State.access$1902(mState, true);
      }
      for (;;)
      {
        i += 1;
        break;
        label83:
        if (mPosition >= paramInt1)
        {
          localViewHolder.flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          State.access$1902(mState, true);
        }
      }
    }
    mRecycler.offsetPositionRecordsForRemove(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mLayoutOrScrollCounter = 0;
    mIsAttached = true;
    mFirstLayoutComplete = false;
    if (mLayout != null) {
      mLayout.dispatchAttachedToWindow(this);
    }
    mPostedAnimatorRunner = false;
  }
  
  public void onChildAttachedToWindow(View paramView) {}
  
  public void onChildDetachedFromWindow(View paramView) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mItemAnimator != null) {
      mItemAnimator.endAnimations();
    }
    mFirstLayoutComplete = false;
    stopScroll();
    mIsAttached = false;
    if (mLayout != null) {
      mLayout.dispatchDetachedFromWindow(this, mRecycler);
    }
    removeCallbacks(mItemAnimatorRunner);
    mViewInfoStore.onDetach();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((ItemDecoration)mItemDecorations.get(i)).onDraw(paramCanvas, this, mState);
      i += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (mLayout == null) {}
    label110:
    label113:
    for (;;)
    {
      return false;
      if ((!mLayoutFrozen) && ((MotionEventCompat.getSource(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (mLayout.canScrollVertically())
        {
          f1 = -MotionEventCompat.getAxisValue(paramMotionEvent, 9);
          if (!mLayout.canScrollHorizontally()) {
            break label110;
          }
        }
        for (float f2 = MotionEventCompat.getAxisValue(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label113;
          }
          float f3 = getScrollFactor();
          scrollByInternal((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = -1;
    boolean bool1 = true;
    if (mLayoutFrozen)
    {
      bool1 = false;
      return bool1;
    }
    if (dispatchOnItemTouchIntercept(paramMotionEvent))
    {
      cancelTouch();
      return true;
    }
    if (mLayout == null) {
      return false;
    }
    boolean bool2 = mLayout.canScrollHorizontally();
    boolean bool3 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int j = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    switch (j)
    {
    case 4: 
    default: 
      if (mScrollState != 1) {
        return false;
      }
      break;
    case 0: 
      label136:
      if (mIgnoreMotionEventTillDown) {
        mIgnoreMotionEventTillDown = false;
      }
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      if (mScrollState == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      paramMotionEvent = mNestedOffsets;
      mNestedOffsets[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool2) {}
      break;
    }
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool3) {
        j = i | 0x2;
      }
      startNestedScroll(j);
      break label136;
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      j = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      break label136;
      j = MotionEventCompat.findPointerIndex(paramMotionEvent, mScrollPointerId);
      if (j < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + mScrollPointerId + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i = (int)(MotionEventCompat.getX(paramMotionEvent, j) + 0.5F);
      j = (int)(MotionEventCompat.getY(paramMotionEvent, j) + 0.5F);
      if (mScrollState == 1) {
        break label136;
      }
      i -= mInitialTouchX;
      int m = j - mInitialTouchY;
      int n;
      if ((bool2) && (Math.abs(i) > mTouchSlop))
      {
        j = mInitialTouchX;
        n = mTouchSlop;
        if (i < 0)
        {
          i = -1;
          label452:
          mLastTouchX = (i * n + j);
        }
      }
      for (i = 1;; i = 0)
      {
        j = i;
        if (bool3)
        {
          j = i;
          if (Math.abs(m) > mTouchSlop)
          {
            j = mInitialTouchY;
            n = mTouchSlop;
            if (m >= 0) {
              break label533;
            }
          }
        }
        label533:
        for (i = k;; i = 1)
        {
          mLastTouchY = (j + i * n);
          j = 1;
          if (j == 0) {
            break;
          }
          setScrollState(1);
          break;
          i = 1;
          break label452;
        }
        onPointerUp(paramMotionEvent);
        break label136;
        mVelocityTracker.clear();
        stopNestedScroll();
        break label136;
        cancelTouch();
        break label136;
        break;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    eatRequestLayout();
    TraceCompat.beginSection("RV OnLayout");
    dispatchLayout();
    TraceCompat.endSection();
    resumeRequestLayout(false);
    mFirstLayoutComplete = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (mAdapterUpdateDuringMeasure)
    {
      eatRequestLayout();
      processAdapterUpdatesAndSetAnimationFlags();
      if (mState.mRunPredictiveAnimations)
      {
        State.access$2202(mState, true);
        mAdapterUpdateDuringMeasure = false;
        resumeRequestLayout(false);
      }
    }
    else
    {
      if (mAdapter == null) {
        break label107;
      }
      mState.mItemCount = mAdapter.getItemCount();
      label65:
      if (mLayout != null) {
        break label118;
      }
      defaultOnMeasure(paramInt1, paramInt2);
    }
    for (;;)
    {
      State.access$2202(mState, false);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      State.access$2202(mState, false);
      break;
      label107:
      mState.mItemCount = 0;
      break label65;
      label118:
      mLayout.onMeasure(mRecycler, mState, paramInt1, paramInt2);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    mPendingSavedState = ((SavedState)paramParcelable);
    super.onRestoreInstanceState(mPendingSavedState.getSuperState());
    if ((mLayout != null) && (mPendingSavedState.mLayoutState != null)) {
      mLayout.onRestoreInstanceState(mPendingSavedState.mLayoutState);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (mPendingSavedState != null)
    {
      localSavedState.copyFrom(mPendingSavedState);
      return localSavedState;
    }
    if (mLayout != null)
    {
      mLayoutState = mLayout.onSaveInstanceState();
      return localSavedState;
    }
    mLayoutState = null;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(int paramInt1, int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      invalidateGlows();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    if ((mLayoutFrozen) || (mIgnoreMotionEventTillDown)) {}
    do
    {
      return false;
      if (dispatchOnItemTouch(paramMotionEvent))
      {
        cancelTouch();
        return true;
      }
    } while (mLayout == null);
    boolean bool1 = mLayout.canScrollHorizontally();
    boolean bool2 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int k = MotionEventCompat.getActionMasked(paramMotionEvent);
    int j = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (k == 0)
    {
      int[] arrayOfInt = mNestedOffsets;
      mNestedOffsets[1] = 0;
      arrayOfInt[0] = 0;
    }
    localMotionEvent.offsetLocation(mNestedOffsets[0], mNestedOffsets[1]);
    int i = i2;
    switch (k)
    {
    default: 
      i = i2;
    case 4: 
      if (i == 0) {
        mVelocityTracker.addMovement(localMotionEvent);
      }
      localMotionEvent.recycle();
      return true;
    case 0: 
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      if (!bool1) {
        break;
      }
    }
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool2) {
        j = i | 0x2;
      }
      startNestedScroll(j);
      i = i2;
      break;
      mScrollPointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      i = (int)(MotionEventCompat.getX(paramMotionEvent, j) + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(MotionEventCompat.getY(paramMotionEvent, j) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      i = i2;
      break;
      i = MotionEventCompat.findPointerIndex(paramMotionEvent, mScrollPointerId);
      if (i < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + mScrollPointerId + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i3 = (int)(MotionEventCompat.getX(paramMotionEvent, i) + 0.5F);
      int i4 = (int)(MotionEventCompat.getY(paramMotionEvent, i) + 0.5F);
      int m = mLastTouchX - i3;
      k = mLastTouchY - i4;
      i = k;
      j = m;
      if (dispatchNestedPreScroll(m, k, mScrollConsumed, mScrollOffset))
      {
        j = m - mScrollConsumed[0];
        i = k - mScrollConsumed[1];
        localMotionEvent.offsetLocation(mScrollOffset[0], mScrollOffset[1]);
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[0] += mScrollOffset[0];
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[1] += mScrollOffset[1];
      }
      k = i;
      m = j;
      if (mScrollState != 1)
      {
        if ((!bool1) || (Math.abs(j) <= mTouchSlop)) {
          break label936;
        }
        if (j <= 0) {
          break label769;
        }
        j -= mTouchSlop;
      }
      label608:
      label658:
      label730:
      label769:
      label781:
      label799:
      label859:
      label920:
      label936:
      for (k = 1;; k = 0)
      {
        int n = i;
        int i1 = k;
        if (bool2)
        {
          n = i;
          i1 = k;
          if (Math.abs(i) > mTouchSlop)
          {
            if (i <= 0) {
              break label781;
            }
            n = i - mTouchSlop;
            i1 = 1;
          }
        }
        k = n;
        m = j;
        if (i1 != 0)
        {
          setScrollState(1);
          m = j;
          k = n;
        }
        i = i2;
        if (mScrollState != 1) {
          break;
        }
        mLastTouchX = (i3 - mScrollOffset[0]);
        mLastTouchY = (i4 - mScrollOffset[1]);
        if (bool1) {
          if (!bool2) {
            break label799;
          }
        }
        for (;;)
        {
          i = i2;
          if (!scrollByInternal(m, k, localMotionEvent)) {
            break;
          }
          getParent().requestDisallowInterceptTouchEvent(true);
          i = i2;
          break;
          j += mTouchSlop;
          break label608;
          n = i + mTouchSlop;
          break label658;
          m = 0;
          break label730;
          k = 0;
        }
        onPointerUp(paramMotionEvent);
        i = i2;
        break;
        mVelocityTracker.addMovement(localMotionEvent);
        mVelocityTracker.computeCurrentVelocity(1000, mMaxFlingVelocity);
        float f1;
        if (bool1)
        {
          f1 = -VelocityTrackerCompat.getXVelocity(mVelocityTracker, mScrollPointerId);
          if (!bool2) {
            break label920;
          }
        }
        for (float f2 = -VelocityTrackerCompat.getYVelocity(mVelocityTracker, mScrollPointerId);; f2 = 0.0F)
        {
          if (((f1 == 0.0F) && (f2 == 0.0F)) || (!fling((int)f1, (int)f2))) {
            setScrollState(0);
          }
          resetTouch();
          i = 1;
          break;
          f1 = 0.0F;
          break label859;
        }
        cancelTouch();
        i = i2;
        break;
      }
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    if (localViewHolder != null)
    {
      if (!localViewHolder.isTmpDetached()) {
        break label32;
      }
      localViewHolder.clearTmpDetachFlag();
    }
    label32:
    while (localViewHolder.shouldIgnore())
    {
      dispatchChildDetached(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localViewHolder);
  }
  
  public void removeItemDecoration(ItemDecoration paramItemDecoration)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
    }
    mItemDecorations.remove(paramItemDecoration);
    if (mItemDecorations.isEmpty()) {
      if (ViewCompat.getOverScrollMode(this) != 2) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      markItemDecorInsetsDirty();
      requestLayout();
      return;
    }
  }
  
  public void removeOnChildAttachStateChangeListener(OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (mOnChildAttachStateListeners == null) {
      return;
    }
    mOnChildAttachStateListeners.remove(paramOnChildAttachStateChangeListener);
  }
  
  public void removeOnItemTouchListener(OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.remove(paramOnItemTouchListener);
    if (mActiveOnItemTouchListener == paramOnItemTouchListener) {
      mActiveOnItemTouchListener = null;
    }
  }
  
  public void removeOnScrollListener(OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners != null) {
      mScrollListeners.remove(paramOnScrollListener);
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!mLayout.onRequestChildFocus(this, mState, paramView1, paramView2)) && (paramView2 != null))
    {
      mTempRect.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof LayoutParams))
      {
        localObject = (LayoutParams)localObject;
        if (!mInsetsDirty)
        {
          localObject = mDecorInsets;
          Rect localRect = mTempRect;
          left -= left;
          localRect = mTempRect;
          right += right;
          localRect = mTempRect;
          top -= top;
          localRect = mTempRect;
          int i = bottom;
          bottom = (bottom + i);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, mTempRect);
      offsetRectIntoDescendantCoords(paramView1, mTempRect);
      localObject = mTempRect;
      if (mFirstLayoutComplete) {
        break label215;
      }
    }
    label215:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return mLayout.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int j = mOnItemTouchListeners.size();
    int i = 0;
    while (i < j)
    {
      ((OnItemTouchListener)mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(paramBoolean);
      i += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((!mEatRequestLayout) && (!mLayoutFrozen))
    {
      super.requestLayout();
      return;
    }
    mLayoutRequestEaten = true;
  }
  
  void resumeRequestLayout(boolean paramBoolean)
  {
    if (mEatRequestLayout)
    {
      if ((paramBoolean) && (mLayoutRequestEaten) && (!mLayoutFrozen) && (mLayout != null) && (mAdapter != null)) {
        dispatchLayout();
      }
      mEatRequestLayout = false;
      if (!mLayoutFrozen) {
        mLayoutRequestEaten = false;
      }
    }
  }
  
  void saveOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.saveOldPosition();
      }
      i += 1;
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (mLayoutFrozen);
      bool1 = mLayout.canScrollHorizontally();
      bool2 = mLayout.canScrollVertically();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label73;
      }
    }
    for (;;)
    {
      scrollByInternal(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label73:
      paramInt2 = 0;
    }
  }
  
  boolean scrollByInternal(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    consumePendingUpdateOperations();
    int j;
    int i;
    int k;
    int m;
    if (mAdapter != null)
    {
      eatRequestLayout();
      onEnterLayoutOrScroll();
      TraceCompat.beginSection("RV Scroll");
      if (paramInt1 != 0)
      {
        j = mLayout.scrollHorizontallyBy(paramInt1, mRecycler, mState);
        i = paramInt1 - j;
        if (paramInt2 != 0)
        {
          k = mLayout.scrollVerticallyBy(paramInt2, mRecycler, mState);
          m = paramInt2 - k;
          label83:
          TraceCompat.endSection();
          repositionShadowingViews();
          onExitLayoutOrScroll();
          resumeRequestLayout(false);
          int n = k;
          k = i;
          i = n;
        }
      }
    }
    for (;;)
    {
      if (!mItemDecorations.isEmpty()) {
        invalidate();
      }
      if (dispatchNestedScroll(j, i, k, m, mScrollOffset))
      {
        mLastTouchX -= mScrollOffset[0];
        mLastTouchY -= mScrollOffset[1];
        if (paramMotionEvent != null) {
          paramMotionEvent.offsetLocation(mScrollOffset[0], mScrollOffset[1]);
        }
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[0] += mScrollOffset[0];
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[1] += mScrollOffset[1];
      }
      for (;;)
      {
        if ((j != 0) || (i != 0)) {
          dispatchOnScrolled(j, i);
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        if ((j != 0) || (i != 0)) {
          bool = true;
        }
        return bool;
        if (ViewCompat.getOverScrollMode(this) != 2)
        {
          if (paramMotionEvent != null) {
            pullGlows(paramMotionEvent.getX(), k, paramMotionEvent.getY(), m);
          }
          considerReleasingGlowsOnScroll(paramInt1, paramInt2);
        }
      }
      k = 0;
      m = 0;
      break label83;
      j = 0;
      i = 0;
      break;
      i = 0;
      j = 0;
      m = 0;
      k = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2) {}
  
  public void scrollToPosition(int paramInt)
  {
    if (mLayoutFrozen) {
      return;
    }
    stopScroll();
    if (mLayout == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (shouldDeferAccessibilityEvent(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
    mAccessibilityDelegate = paramRecyclerViewAccessibilityDelegate;
    ViewCompat.setAccessibilityDelegate(this, mAccessibilityDelegate);
  }
  
  public void setAdapter(Adapter paramAdapter)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramAdapter, false, true);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(ChildDrawingOrderCallback paramChildDrawingOrderCallback)
  {
    if (paramChildDrawingOrderCallback == mChildDrawingOrderCallback) {
      return;
    }
    mChildDrawingOrderCallback = paramChildDrawingOrderCallback;
    if (mChildDrawingOrderCallback != null) {}
    for (boolean bool = true;; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != mClipToPadding) {
      invalidateGlows();
    }
    mClipToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (mFirstLayoutComplete) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    mHasFixedSize = paramBoolean;
  }
  
  public void setItemAnimator(ItemAnimator paramItemAnimator)
  {
    if (mItemAnimator != null)
    {
      mItemAnimator.endAnimations();
      mItemAnimator.setListener(null);
    }
    mItemAnimator = paramItemAnimator;
    if (mItemAnimator != null) {
      mItemAnimator.setListener(mItemAnimatorListener);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    mRecycler.setViewCacheSize(paramInt);
  }
  
  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != mLayoutFrozen)
    {
      assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        mLayoutFrozen = paramBoolean;
        if ((mLayoutRequestEaten) && (mLayout != null) && (mAdapter != null)) {
          requestLayout();
        }
        mLayoutRequestEaten = false;
      }
    }
    else
    {
      return;
    }
    long l = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0));
    mLayoutFrozen = paramBoolean;
    mIgnoreMotionEventTillDown = true;
    stopScroll();
  }
  
  public void setLayoutManager(LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager == mLayout) {
      return;
    }
    if (mLayout != null)
    {
      if (mIsAttached) {
        mLayout.dispatchDetachedFromWindow(this, mRecycler);
      }
      mLayout.setRecyclerView(null);
    }
    mRecycler.clear();
    mChildHelper.removeAllViewsUnfiltered();
    mLayout = paramLayoutManager;
    if (paramLayoutManager != null)
    {
      if (mRecyclerView != null) {
        throw new IllegalArgumentException("LayoutManager " + paramLayoutManager + " is already attached to a RecyclerView: " + mRecyclerView);
      }
      mLayout.setRecyclerView(this);
      if (mIsAttached) {
        mLayout.dispatchAttachedToWindow(this);
      }
    }
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    mScrollingChildHelper.setNestedScrollingEnabled(paramBoolean);
  }
  
  @Deprecated
  public void setOnScrollListener(OnScrollListener paramOnScrollListener)
  {
    mScrollListener = paramOnScrollListener;
  }
  
  public void setRecycledViewPool(RecycledViewPool paramRecycledViewPool)
  {
    mRecycler.setRecycledViewPool(paramRecycledViewPool);
  }
  
  public void setRecyclerListener(RecyclerListener paramRecyclerListener)
  {
    mRecyclerListener = paramRecyclerListener;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      new StringBuilder("setScrollingTouchSlop(): bad argument constant ").append(paramInt).append("; using default value");
    case 0: 
      mTouchSlop = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
  }
  
  public void setViewCacheExtension(ViewCacheExtension paramViewCacheExtension)
  {
    mRecycler.setViewCacheExtension(paramViewCacheExtension);
  }
  
  boolean shouldDeferAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int j = 0;
    if (isComputingLayout()) {
      if (paramAccessibilityEvent == null) {
        break label46;
      }
    }
    label46:
    for (int i = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent);; i = 0)
    {
      if (i == 0) {
        i = j;
      }
      for (;;)
      {
        mEatenAccessibilityChangeFlags = (i | mEatenAccessibilityChangeFlags);
        bool = true;
        return bool;
      }
    }
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (mLayout == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    for (;;)
    {
      return;
      if (!mLayoutFrozen)
      {
        if (!mLayout.canScrollHorizontally()) {
          paramInt1 = 0;
        }
        if (!mLayout.canScrollVertically()) {
          paramInt2 = i;
        }
        while ((paramInt1 != 0) || (paramInt2 != 0))
        {
          mViewFlinger.smoothScrollBy(paramInt1, paramInt2);
          return;
        }
      }
    }
  }
  
  public void smoothScrollToPosition(int paramInt)
  {
    if (mLayoutFrozen) {
      return;
    }
    if (mLayout == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    mLayout.smoothScrollToPosition(this, mState, paramInt);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return mScrollingChildHelper.startNestedScroll(paramInt);
  }
  
  public void stopNestedScroll()
  {
    mScrollingChildHelper.stopNestedScroll();
  }
  
  public void stopScroll()
  {
    setScrollState(0);
    stopScrollersInternal();
  }
  
  public void swapAdapter(Adapter paramAdapter, boolean paramBoolean)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramAdapter, true, paramBoolean);
    setDataSetChangedAfterLayout();
    requestLayout();
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2, Object paramObject)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = mChildHelper.getUnfilteredChildAt(i);
      ViewHolder localViewHolder = getChildViewHolderInt(localView);
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()) && (mPosition >= paramInt1) && (mPosition < paramInt1 + paramInt2))
      {
        localViewHolder.addFlags(2);
        localViewHolder.addChangePayload(paramObject);
        getLayoutParamsmInsetsDirty = true;
      }
      i += 1;
    }
    mRecycler.viewRangeUpdate(paramInt1, paramInt2);
  }
  
  public static abstract class Adapter<VH extends RecyclerView.ViewHolder>
  {
    private boolean mHasStableIds = false;
    private final RecyclerView.AdapterDataObservable mObservable = new RecyclerView.AdapterDataObservable();
    
    public final void bindViewHolder(VH paramVH, int paramInt)
    {
      mPosition = paramInt;
      if (hasStableIds()) {
        mItemId = getItemId(paramInt);
      }
      paramVH.setFlags(1, 519);
      TraceCompat.beginSection("RV OnBindView");
      onBindViewHolder(paramVH, paramInt, paramVH.getUnmodifiedPayloads());
      paramVH.clearPayload();
      TraceCompat.endSection();
    }
    
    public final VH createViewHolder(ViewGroup paramViewGroup, int paramInt)
    {
      TraceCompat.beginSection("RV CreateView");
      paramViewGroup = onCreateViewHolder(paramViewGroup, paramInt);
      mItemViewType = paramInt;
      TraceCompat.endSection();
      return paramViewGroup;
    }
    
    public abstract int getItemCount();
    
    public long getItemId(int paramInt)
    {
      return -1L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final boolean hasObservers()
    {
      return mObservable.hasObservers();
    }
    
    public final boolean hasStableIds()
    {
      return mHasStableIds;
    }
    
    public final void notifyDataSetChanged()
    {
      mObservable.notifyChanged();
    }
    
    public final void notifyItemChanged(int paramInt)
    {
      mObservable.notifyItemRangeChanged(paramInt, 1);
    }
    
    public final void notifyItemChanged(int paramInt, Object paramObject)
    {
      mObservable.notifyItemRangeChanged(paramInt, 1, paramObject);
    }
    
    public final void notifyItemInserted(int paramInt)
    {
      mObservable.notifyItemRangeInserted(paramInt, 1);
    }
    
    public final void notifyItemMoved(int paramInt1, int paramInt2)
    {
      mObservable.notifyItemMoved(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      mObservable.notifyItemRangeChanged(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      mObservable.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
    }
    
    public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      mObservable.notifyItemRangeInserted(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      mObservable.notifyItemRangeRemoved(paramInt1, paramInt2);
    }
    
    public final void notifyItemRemoved(int paramInt)
    {
      mObservable.notifyItemRangeRemoved(paramInt, 1);
    }
    
    public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {}
    
    public abstract void onBindViewHolder(VH paramVH, int paramInt);
    
    public void onBindViewHolder(VH paramVH, int paramInt, List<Object> paramList)
    {
      onBindViewHolder(paramVH, paramInt);
    }
    
    public abstract VH onCreateViewHolder(ViewGroup paramViewGroup, int paramInt);
    
    public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {}
    
    public boolean onFailedToRecycleView(VH paramVH)
    {
      return false;
    }
    
    public void onViewAttachedToWindow(VH paramVH) {}
    
    public void onViewDetachedFromWindow(VH paramVH) {}
    
    public void onViewRecycled(VH paramVH) {}
    
    public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      mObservable.registerObserver(paramAdapterDataObserver);
    }
    
    public void setHasStableIds(boolean paramBoolean)
    {
      if (hasObservers()) {
        throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
      }
      mHasStableIds = paramBoolean;
    }
    
    public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      mObservable.unregisterObserver(paramAdapterDataObserver);
    }
  }
  
  static class AdapterDataObservable
    extends Observable<RecyclerView.AdapterDataObserver>
  {
    public boolean hasObservers()
    {
      return !mObservers.isEmpty();
    }
    
    public void notifyChanged()
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onChanged();
        i -= 1;
      }
    }
    
    public void notifyItemMoved(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeMoved(paramInt1, paramInt2, 1);
        i -= 1;
      }
    }
    
    public void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      notifyItemRangeChanged(paramInt1, paramInt2, null);
    }
    
    public void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeChanged(paramInt1, paramInt2, paramObject);
        i -= 1;
      }
    }
    
    public void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeInserted(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeRemoved(paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  public static abstract class AdapterDataObserver
  {
    public void onChanged() {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2) {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      onItemRangeChanged(paramInt1, paramInt2);
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2) {}
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2) {}
  }
  
  public static abstract interface ChildDrawingOrderCallback
  {
    public abstract int onGetChildDrawingOrder(int paramInt1, int paramInt2);
  }
  
  public static abstract class ItemAnimator
  {
    public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    public static final int FLAG_CHANGED = 2;
    public static final int FLAG_INVALIDATED = 4;
    public static final int FLAG_MOVED = 2048;
    public static final int FLAG_REMOVED = 8;
    private long mAddDuration = 120L;
    private long mChangeDuration = 250L;
    private ArrayList<ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList();
    private ItemAnimatorListener mListener = null;
    private long mMoveDuration = 250L;
    private long mRemoveDuration = 120L;
    
    static int buildAdapterChangeFlagsForAnimations(RecyclerView.ViewHolder paramViewHolder)
    {
      int j = RecyclerView.ViewHolder.access$6300(paramViewHolder) & 0xE;
      int i;
      if (paramViewHolder.isInvalid()) {
        i = 4;
      }
      int k;
      int m;
      do
      {
        do
        {
          do
          {
            do
            {
              return i;
              i = j;
            } while ((j & 0x4) != 0);
            k = paramViewHolder.getOldPosition();
            m = paramViewHolder.getAdapterPosition();
            i = j;
          } while (k == -1);
          i = j;
        } while (m == -1);
        i = j;
      } while (k == m);
      return j | 0x800;
    }
    
    public abstract boolean animateAppearance(RecyclerView.ViewHolder paramViewHolder, ItemHolderInfo paramItemHolderInfo1, ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, ItemHolderInfo paramItemHolderInfo1, ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animateDisappearance(RecyclerView.ViewHolder paramViewHolder, ItemHolderInfo paramItemHolderInfo1, ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animatePersistence(RecyclerView.ViewHolder paramViewHolder, ItemHolderInfo paramItemHolderInfo1, ItemHolderInfo paramItemHolderInfo2);
    
    public boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder paramViewHolder)
    {
      return true;
    }
    
    public final void dispatchAnimationFinished(RecyclerView.ViewHolder paramViewHolder)
    {
      onAnimationFinished(paramViewHolder);
      if (mListener != null) {
        mListener.onAnimationFinished(paramViewHolder);
      }
    }
    
    public final void dispatchAnimationStarted(RecyclerView.ViewHolder paramViewHolder)
    {
      onAnimationStarted(paramViewHolder);
    }
    
    public final void dispatchAnimationsFinished()
    {
      int j = mFinishedListeners.size();
      int i = 0;
      while (i < j)
      {
        ((ItemAnimatorFinishedListener)mFinishedListeners.get(i)).onAnimationsFinished();
        i += 1;
      }
      mFinishedListeners.clear();
    }
    
    public abstract void endAnimation(RecyclerView.ViewHolder paramViewHolder);
    
    public abstract void endAnimations();
    
    public long getAddDuration()
    {
      return mAddDuration;
    }
    
    public long getChangeDuration()
    {
      return mChangeDuration;
    }
    
    public long getMoveDuration()
    {
      return mMoveDuration;
    }
    
    public long getRemoveDuration()
    {
      return mRemoveDuration;
    }
    
    public abstract boolean isRunning();
    
    public final boolean isRunning(ItemAnimatorFinishedListener paramItemAnimatorFinishedListener)
    {
      boolean bool = isRunning();
      if (paramItemAnimatorFinishedListener != null)
      {
        if (!bool) {
          paramItemAnimatorFinishedListener.onAnimationsFinished();
        }
      }
      else {
        return bool;
      }
      mFinishedListeners.add(paramItemAnimatorFinishedListener);
      return bool;
    }
    
    public ItemHolderInfo obtainHolderInfo()
    {
      return new ItemHolderInfo();
    }
    
    public void onAnimationFinished(RecyclerView.ViewHolder paramViewHolder) {}
    
    public void onAnimationStarted(RecyclerView.ViewHolder paramViewHolder) {}
    
    public ItemHolderInfo recordPostLayoutInformation(RecyclerView.State paramState, RecyclerView.ViewHolder paramViewHolder)
    {
      return obtainHolderInfo().setFrom(paramViewHolder);
    }
    
    public ItemHolderInfo recordPreLayoutInformation(RecyclerView.State paramState, RecyclerView.ViewHolder paramViewHolder, int paramInt, List<Object> paramList)
    {
      return obtainHolderInfo().setFrom(paramViewHolder);
    }
    
    public abstract void runPendingAnimations();
    
    public void setAddDuration(long paramLong)
    {
      mAddDuration = paramLong;
    }
    
    public void setChangeDuration(long paramLong)
    {
      mChangeDuration = paramLong;
    }
    
    void setListener(ItemAnimatorListener paramItemAnimatorListener)
    {
      mListener = paramItemAnimatorListener;
    }
    
    public void setMoveDuration(long paramLong)
    {
      mMoveDuration = paramLong;
    }
    
    public void setRemoveDuration(long paramLong)
    {
      mRemoveDuration = paramLong;
    }
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface AdapterChanges {}
    
    public static abstract interface ItemAnimatorFinishedListener
    {
      public abstract void onAnimationsFinished();
    }
    
    static abstract interface ItemAnimatorListener
    {
      public abstract void onAnimationFinished(RecyclerView.ViewHolder paramViewHolder);
    }
    
    public static class ItemHolderInfo
    {
      public int bottom;
      public int changeFlags;
      public int left;
      public int right;
      public int top;
      
      public ItemHolderInfo setFrom(RecyclerView.ViewHolder paramViewHolder)
      {
        return setFrom(paramViewHolder, 0);
      }
      
      public ItemHolderInfo setFrom(RecyclerView.ViewHolder paramViewHolder, int paramInt)
      {
        paramViewHolder = itemView;
        left = paramViewHolder.getLeft();
        top = paramViewHolder.getTop();
        right = paramViewHolder.getRight();
        bottom = paramViewHolder.getBottom();
        return this;
      }
    }
  }
  
  private class ItemAnimatorRestoreListener
    implements RecyclerView.ItemAnimator.ItemAnimatorListener
  {
    private ItemAnimatorRestoreListener() {}
    
    public void onAnimationFinished(RecyclerView.ViewHolder paramViewHolder)
    {
      paramViewHolder.setIsRecyclable(true);
      if ((mShadowedHolder != null) && (mShadowingHolder == null)) {
        mShadowedHolder = null;
      }
      mShadowingHolder = null;
      if ((!RecyclerView.ViewHolder.access$6100(paramViewHolder)) && (!RecyclerView.this.removeAnimatingView(itemView)) && (paramViewHolder.isTmpDetached())) {
        removeDetachedView(itemView, false);
      }
    }
  }
  
  public static abstract class ItemDecoration
  {
    @Deprecated
    public void getItemOffsets(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      getItemOffsets(paramRect, ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition(), paramRecyclerView);
    }
    
    @Deprecated
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      onDraw(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      onDrawOver(paramCanvas, paramRecyclerView);
    }
  }
  
  public static abstract class LayoutManager
  {
    ChildHelper mChildHelper;
    private boolean mIsAttachedToWindow = false;
    RecyclerView mRecyclerView;
    private boolean mRequestedSimpleAnimations = false;
    RecyclerView.SmoothScroller mSmoothScroller;
    
    private void addViewInt(View paramView, int paramInt, boolean paramBoolean)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      RecyclerView.LayoutParams localLayoutParams;
      if ((paramBoolean) || (localViewHolder.isRemoved()))
      {
        mRecyclerView.mViewInfoStore.addToDisappearedInLayout(localViewHolder);
        localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
        if ((!localViewHolder.wasReturnedFromScrap()) && (!localViewHolder.isScrap())) {
          break label128;
        }
        if (!localViewHolder.isScrap()) {
          break label120;
        }
        localViewHolder.unScrap();
        label68:
        mChildHelper.attachViewToParent(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      for (;;)
      {
        if (mPendingInvalidate)
        {
          itemView.invalidate();
          mPendingInvalidate = false;
        }
        return;
        mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(localViewHolder);
        break;
        label120:
        localViewHolder.clearReturnedFromScrapFlag();
        break label68;
        label128:
        if (paramView.getParent() == mRecyclerView)
        {
          int j = mChildHelper.indexOfChild(paramView);
          int i = paramInt;
          if (paramInt == -1) {
            i = mChildHelper.getChildCount();
          }
          if (j == -1) {
            throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + mRecyclerView.indexOfChild(paramView));
          }
          if (j != i) {
            mRecyclerView.mLayout.moveView(j, i);
          }
        }
        else
        {
          mChildHelper.addView(paramView, paramInt, false);
          mInsetsDirty = true;
          if ((mSmoothScroller != null) && (mSmoothScroller.isRunning())) {
            mSmoothScroller.onChildAttachedToWindow(paramView);
          }
        }
      }
    }
    
    private void detachViewInternal(int paramInt, View paramView)
    {
      mChildHelper.detachViewFromParent(paramInt);
    }
    
    public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      int j = 1073741824;
      int i = Math.max(0, paramInt1 - paramInt2);
      if (paramBoolean) {
        if (paramInt3 >= 0)
        {
          paramInt1 = paramInt3;
          paramInt2 = j;
        }
      }
      for (;;)
      {
        return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
        paramInt2 = 0;
        paramInt1 = 0;
        continue;
        paramInt2 = j;
        paramInt1 = paramInt3;
        if (paramInt3 < 0) {
          if (paramInt3 == -1)
          {
            paramInt1 = i;
            paramInt2 = j;
          }
          else if (paramInt3 == -2)
          {
            paramInt2 = Integer.MIN_VALUE;
            paramInt1 = i;
          }
          else
          {
            paramInt2 = 0;
            paramInt1 = 0;
          }
        }
      }
    }
    
    public static Properties getProperties(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
    {
      Properties localProperties = new Properties();
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt1, paramInt2);
      orientation = paramContext.getInt(R.styleable.RecyclerView_android_orientation, 1);
      spanCount = paramContext.getInt(R.styleable.RecyclerView_spanCount, 1);
      reverseLayout = paramContext.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
      stackFromEnd = paramContext.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
      paramContext.recycle();
      return localProperties;
    }
    
    private void onSmoothScrollerStopped(RecyclerView.SmoothScroller paramSmoothScroller)
    {
      if (mSmoothScroller == paramSmoothScroller) {
        mSmoothScroller = null;
      }
    }
    
    private void scrapOrRecycleView(RecyclerView.Recycler paramRecycler, int paramInt, View paramView)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      if (localViewHolder.shouldIgnore()) {
        return;
      }
      if ((localViewHolder.isInvalid()) && (!localViewHolder.isRemoved()) && (!mRecyclerView.mAdapter.hasStableIds()))
      {
        removeViewAt(paramInt);
        paramRecycler.recycleViewHolderInternal(localViewHolder);
        return;
      }
      detachViewAt(paramInt);
      paramRecycler.scrapView(paramView);
    }
    
    public void addDisappearingView(View paramView)
    {
      addDisappearingView(paramView, -1);
    }
    
    public void addDisappearingView(View paramView, int paramInt)
    {
      addViewInt(paramView, paramInt, true);
    }
    
    public void addView(View paramView)
    {
      addView(paramView, -1);
    }
    
    public void addView(View paramView, int paramInt)
    {
      addViewInt(paramView, paramInt, false);
    }
    
    public void assertInLayoutOrScroll(String paramString)
    {
      if (mRecyclerView != null) {
        mRecyclerView.assertInLayoutOrScroll(paramString);
      }
    }
    
    public void assertNotInLayoutOrScroll(String paramString)
    {
      if (mRecyclerView != null) {
        mRecyclerView.assertNotInLayoutOrScroll(paramString);
      }
    }
    
    public void attachView(View paramView)
    {
      attachView(paramView, -1);
    }
    
    public void attachView(View paramView, int paramInt)
    {
      attachView(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
    }
    
    public void attachView(View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      if (localViewHolder.isRemoved()) {
        mRecyclerView.mViewInfoStore.addToDisappearedInLayout(localViewHolder);
      }
      for (;;)
      {
        mChildHelper.attachViewToParent(paramView, paramInt, paramLayoutParams, localViewHolder.isRemoved());
        return;
        mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(localViewHolder);
      }
    }
    
    public void calculateItemDecorationsForChild(View paramView, Rect paramRect)
    {
      if (mRecyclerView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(mRecyclerView.getItemDecorInsetsForChild(paramView));
    }
    
    public boolean canScrollHorizontally()
    {
      return false;
    }
    
    public boolean canScrollVertically()
    {
      return false;
    }
    
    public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
    {
      return paramLayoutParams != null;
    }
    
    public int computeHorizontalScrollExtent(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeHorizontalScrollOffset(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeHorizontalScrollRange(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollExtent(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollOffset(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollRange(RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void detachAndScrapAttachedViews(RecyclerView.Recycler paramRecycler)
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        scrapOrRecycleView(paramRecycler, i, getChildAt(i));
        i -= 1;
      }
    }
    
    public void detachAndScrapView(View paramView, RecyclerView.Recycler paramRecycler)
    {
      scrapOrRecycleView(paramRecycler, mChildHelper.indexOfChild(paramView), paramView);
    }
    
    public void detachAndScrapViewAt(int paramInt, RecyclerView.Recycler paramRecycler)
    {
      scrapOrRecycleView(paramRecycler, paramInt, getChildAt(paramInt));
    }
    
    public void detachView(View paramView)
    {
      int i = mChildHelper.indexOfChild(paramView);
      if (i >= 0) {
        detachViewInternal(i, paramView);
      }
    }
    
    public void detachViewAt(int paramInt)
    {
      detachViewInternal(paramInt, getChildAt(paramInt));
    }
    
    void dispatchAttachedToWindow(RecyclerView paramRecyclerView)
    {
      mIsAttachedToWindow = true;
      onAttachedToWindow(paramRecyclerView);
    }
    
    void dispatchDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
    {
      mIsAttachedToWindow = false;
      onDetachedFromWindow(paramRecyclerView, paramRecycler);
    }
    
    public void endAnimation(View paramView)
    {
      if (mRecyclerView.mItemAnimator != null) {
        mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(paramView));
      }
    }
    
    public View findViewByPosition(int paramInt)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = getChildAt(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(localView);
        if ((localViewHolder != null) && (localViewHolder.getLayoutPosition() == paramInt) && (!localViewHolder.shouldIgnore()) && ((mRecyclerView.mState.isPreLayout()) || (!localViewHolder.isRemoved()))) {
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    public abstract RecyclerView.LayoutParams generateDefaultLayoutParams();
    
    public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
    }
    
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
        return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.LayoutParams(paramLayoutParams);
    }
    
    public int getBaseline()
    {
      return -1;
    }
    
    public int getBottomDecorationHeight(View paramView)
    {
      return getLayoutParamsmDecorInsets.bottom;
    }
    
    public View getChildAt(int paramInt)
    {
      if (mChildHelper != null) {
        return mChildHelper.getChildAt(paramInt);
      }
      return null;
    }
    
    public int getChildCount()
    {
      if (mChildHelper != null) {
        return mChildHelper.getChildCount();
      }
      return 0;
    }
    
    public boolean getClipToPadding()
    {
      return (mRecyclerView != null) && (mRecyclerView.mClipToPadding);
    }
    
    public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      if ((mRecyclerView == null) || (mRecyclerView.mAdapter == null)) {}
      while (!canScrollHorizontally()) {
        return 1;
      }
      return mRecyclerView.mAdapter.getItemCount();
    }
    
    public int getDecoratedBottom(View paramView)
    {
      return paramView.getBottom() + getBottomDecorationHeight(paramView);
    }
    
    public int getDecoratedLeft(View paramView)
    {
      return paramView.getLeft() - getLeftDecorationWidth(paramView);
    }
    
    public int getDecoratedMeasuredHeight(View paramView)
    {
      Rect localRect = getLayoutParamsmDecorInsets;
      int i = paramView.getMeasuredHeight();
      int j = top;
      return bottom + (i + j);
    }
    
    public int getDecoratedMeasuredWidth(View paramView)
    {
      Rect localRect = getLayoutParamsmDecorInsets;
      int i = paramView.getMeasuredWidth();
      int j = left;
      return right + (i + j);
    }
    
    public int getDecoratedRight(View paramView)
    {
      return paramView.getRight() + getRightDecorationWidth(paramView);
    }
    
    public int getDecoratedTop(View paramView)
    {
      return paramView.getTop() - getTopDecorationHeight(paramView);
    }
    
    public View getFocusedChild()
    {
      if (mRecyclerView == null) {}
      View localView;
      do
      {
        return null;
        localView = mRecyclerView.getFocusedChild();
      } while ((localView == null) || (mChildHelper.isHidden(localView)));
      return localView;
    }
    
    public int getHeight()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getHeight();
      }
      return 0;
    }
    
    public int getItemCount()
    {
      if (mRecyclerView != null) {}
      for (RecyclerView.Adapter localAdapter = mRecyclerView.getAdapter(); localAdapter != null; localAdapter = null) {
        return localAdapter.getItemCount();
      }
      return 0;
    }
    
    public int getItemViewType(View paramView)
    {
      return RecyclerView.getChildViewHolderInt(paramView).getItemViewType();
    }
    
    public int getLayoutDirection()
    {
      return ViewCompat.getLayoutDirection(mRecyclerView);
    }
    
    public int getLeftDecorationWidth(View paramView)
    {
      return getLayoutParamsmDecorInsets.left;
    }
    
    public int getMinimumHeight()
    {
      return ViewCompat.getMinimumHeight(mRecyclerView);
    }
    
    public int getMinimumWidth()
    {
      return ViewCompat.getMinimumWidth(mRecyclerView);
    }
    
    public int getPaddingBottom()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getPaddingBottom();
      }
      return 0;
    }
    
    public int getPaddingEnd()
    {
      if (mRecyclerView != null) {
        return ViewCompat.getPaddingEnd(mRecyclerView);
      }
      return 0;
    }
    
    public int getPaddingLeft()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getPaddingLeft();
      }
      return 0;
    }
    
    public int getPaddingRight()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getPaddingRight();
      }
      return 0;
    }
    
    public int getPaddingStart()
    {
      if (mRecyclerView != null) {
        return ViewCompat.getPaddingStart(mRecyclerView);
      }
      return 0;
    }
    
    public int getPaddingTop()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getPaddingTop();
      }
      return 0;
    }
    
    public int getPosition(View paramView)
    {
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
    }
    
    public int getRightDecorationWidth(View paramView)
    {
      return getLayoutParamsmDecorInsets.right;
    }
    
    public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      if ((mRecyclerView == null) || (mRecyclerView.mAdapter == null)) {}
      while (!canScrollVertically()) {
        return 1;
      }
      return mRecyclerView.mAdapter.getItemCount();
    }
    
    public int getSelectionModeForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int getTopDecorationHeight(View paramView)
    {
      return getLayoutParamsmDecorInsets.top;
    }
    
    public int getWidth()
    {
      if (mRecyclerView != null) {
        return mRecyclerView.getWidth();
      }
      return 0;
    }
    
    public boolean hasFocus()
    {
      return (mRecyclerView != null) && (mRecyclerView.hasFocus());
    }
    
    public void ignoreView(View paramView)
    {
      if ((paramView.getParent() != mRecyclerView) || (mRecyclerView.indexOfChild(paramView) == -1)) {
        throw new IllegalArgumentException("View should be fully attached to be ignored");
      }
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      paramView.addFlags(128);
      mRecyclerView.mViewInfoStore.removeViewHolder(paramView);
    }
    
    public boolean isAttachedToWindow()
    {
      return mIsAttachedToWindow;
    }
    
    public boolean isFocused()
    {
      return (mRecyclerView != null) && (mRecyclerView.isFocused());
    }
    
    public boolean isLayoutHierarchical(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return false;
    }
    
    public boolean isSmoothScrolling()
    {
      return (mSmoothScroller != null) && (mSmoothScroller.isRunning());
    }
    
    public void layoutDecorated(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      Rect localRect = getLayoutParamsmDecorInsets;
      paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
    }
    
    public void measureChild(View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = mRecyclerView.getItemDecorInsetsForChild(paramView);
      int i = left;
      int j = right;
      int k = top;
      int m = bottom;
      paramView.measure(getChildMeasureSpec(getWidth(), i + j + paramInt1 + (getPaddingLeft() + getPaddingRight()), width, canScrollHorizontally()), getChildMeasureSpec(getHeight(), m + k + paramInt2 + (getPaddingTop() + getPaddingBottom()), height, canScrollVertically()));
    }
    
    public void measureChildWithMargins(View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = mRecyclerView.getItemDecorInsetsForChild(paramView);
      int i = left;
      int j = right;
      int k = top;
      int m = bottom;
      paramView.measure(getChildMeasureSpec(getWidth(), i + j + paramInt1 + (getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin), width, canScrollHorizontally()), getChildMeasureSpec(getHeight(), m + k + paramInt2 + (getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin), height, canScrollVertically()));
    }
    
    public void moveView(int paramInt1, int paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView == null) {
        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
      }
      detachViewAt(paramInt1);
      attachView(localView, paramInt2);
    }
    
    public void offsetChildrenHorizontal(int paramInt)
    {
      if (mRecyclerView != null) {
        mRecyclerView.offsetChildrenHorizontal(paramInt);
      }
    }
    
    public void offsetChildrenVertical(int paramInt)
    {
      if (mRecyclerView != null) {
        mRecyclerView.offsetChildrenVertical(paramInt);
      }
    }
    
    public void onAdapterChanged(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2) {}
    
    public boolean onAddFocusables(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
    {
      return false;
    }
    
    public void onAttachedToWindow(RecyclerView paramRecyclerView) {}
    
    @Deprecated
    public void onDetachedFromWindow(RecyclerView paramRecyclerView) {}
    
    public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
    {
      onDetachedFromWindow(paramRecyclerView);
    }
    
    public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return null;
    }
    
    public void onInitializeAccessibilityEvent(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AccessibilityEvent paramAccessibilityEvent)
    {
      boolean bool2 = true;
      paramRecycler = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      if ((mRecyclerView == null) || (paramRecycler == null)) {
        return;
      }
      boolean bool1 = bool2;
      if (!ViewCompat.canScrollVertically(mRecyclerView, 1))
      {
        bool1 = bool2;
        if (!ViewCompat.canScrollVertically(mRecyclerView, -1))
        {
          bool1 = bool2;
          if (!ViewCompat.canScrollHorizontally(mRecyclerView, -1)) {
            if (!ViewCompat.canScrollHorizontally(mRecyclerView, 1)) {
              break label111;
            }
          }
        }
      }
      label111:
      for (bool1 = bool2;; bool1 = false)
      {
        paramRecycler.setScrollable(bool1);
        if (mRecyclerView.mAdapter == null) {
          break;
        }
        paramRecycler.setItemCount(mRecyclerView.mAdapter.getItemCount());
        return;
      }
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      onInitializeAccessibilityEvent(mRecyclerView.mRecycler, mRecyclerView.mState, paramAccessibilityEvent);
    }
    
    void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      onInitializeAccessibilityNodeInfo(mRecyclerView.mRecycler, mRecyclerView.mState, paramAccessibilityNodeInfoCompat);
    }
    
    public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      if ((ViewCompat.canScrollVertically(mRecyclerView, -1)) || (ViewCompat.canScrollHorizontally(mRecyclerView, -1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(8192);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      if ((ViewCompat.canScrollVertically(mRecyclerView, 1)) || (ViewCompat.canScrollHorizontally(mRecyclerView, 1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(4096);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      paramAccessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(paramRecycler, paramState), getColumnCountForAccessibility(paramRecycler, paramState), isLayoutHierarchical(paramRecycler, paramState), getSelectionModeForAccessibility(paramRecycler, paramState)));
    }
    
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      int i;
      if (canScrollVertically())
      {
        i = getPosition(paramView);
        if (!canScrollHorizontally()) {
          break label51;
        }
      }
      label51:
      for (int j = getPosition(paramView);; j = 0)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, 1, false, false));
        return;
        i = 0;
        break;
      }
    }
    
    void onInitializeAccessibilityNodeInfoForItem(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      if ((localViewHolder != null) && (!localViewHolder.isRemoved()) && (!mChildHelper.isHidden(itemView))) {
        onInitializeAccessibilityNodeInfoForItem(mRecyclerView.mRecycler, mRecyclerView.mState, paramView, paramAccessibilityNodeInfoCompat);
      }
    }
    
    public View onInterceptFocusSearch(View paramView, int paramInt)
    {
      return null;
    }
    
    public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsChanged(RecyclerView paramRecyclerView) {}
    
    public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
    {
      onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
    }
    
    public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    public void onMeasure(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
    {
      mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
    }
    
    public boolean onRequestChildFocus(RecyclerView paramRecyclerView, RecyclerView.State paramState, View paramView1, View paramView2)
    {
      return onRequestChildFocus(paramRecyclerView, paramView1, paramView2);
    }
    
    @Deprecated
    public boolean onRequestChildFocus(RecyclerView paramRecyclerView, View paramView1, View paramView2)
    {
      return (isSmoothScrolling()) || (paramRecyclerView.isComputingLayout());
    }
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public void onScrollStateChanged(int paramInt) {}
    
    boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
    {
      return performAccessibilityAction(mRecyclerView.mRecycler, mRecyclerView.mState, paramInt, paramBundle);
    }
    
    public boolean performAccessibilityAction(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt, Bundle paramBundle)
    {
      if (mRecyclerView == null) {}
      int i;
      do
      {
        return false;
        switch (paramInt)
        {
        default: 
          paramInt = 0;
          i = 0;
        }
      } while ((i == 0) && (paramInt == 0));
      mRecyclerView.scrollBy(paramInt, i);
      return true;
      if (ViewCompat.canScrollVertically(mRecyclerView, -1)) {}
      for (paramInt = -(getHeight() - getPaddingTop() - getPaddingBottom());; paramInt = 0)
      {
        i = paramInt;
        int j;
        if (ViewCompat.canScrollHorizontally(mRecyclerView, -1))
        {
          j = -(getWidth() - getPaddingLeft() - getPaddingRight());
          i = paramInt;
          paramInt = j;
          break;
          if (!ViewCompat.canScrollVertically(mRecyclerView, 1)) {
            break label207;
          }
        }
        label207:
        for (paramInt = getHeight() - getPaddingTop() - getPaddingBottom();; paramInt = 0)
        {
          i = paramInt;
          if (ViewCompat.canScrollHorizontally(mRecyclerView, 1))
          {
            j = getWidth();
            int k = getPaddingLeft();
            int m = getPaddingRight();
            i = paramInt;
            paramInt = j - k - m;
            break;
          }
          paramInt = 0;
          break;
        }
      }
    }
    
    public boolean performAccessibilityActionForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    boolean performAccessibilityActionForItem(View paramView, int paramInt, Bundle paramBundle)
    {
      return performAccessibilityActionForItem(mRecyclerView.mRecycler, mRecyclerView.mState, paramView, paramInt, paramBundle);
    }
    
    public void postOnAnimation(Runnable paramRunnable)
    {
      if (mRecyclerView != null) {
        ViewCompat.postOnAnimation(mRecyclerView, paramRunnable);
      }
    }
    
    public void removeAllViews()
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        mChildHelper.removeViewAt(i);
        i -= 1;
      }
    }
    
    public void removeAndRecycleAllViews(RecyclerView.Recycler paramRecycler)
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        if (!RecyclerView.getChildViewHolderInt(getChildAt(i)).shouldIgnore()) {
          removeAndRecycleViewAt(i, paramRecycler);
        }
        i -= 1;
      }
    }
    
    void removeAndRecycleScrapInt(RecyclerView.Recycler paramRecycler)
    {
      int j = paramRecycler.getScrapCount();
      int i = j - 1;
      while (i >= 0)
      {
        View localView = paramRecycler.getScrapViewAt(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(localView);
        if (!localViewHolder.shouldIgnore())
        {
          localViewHolder.setIsRecyclable(false);
          if (localViewHolder.isTmpDetached()) {
            mRecyclerView.removeDetachedView(localView, false);
          }
          if (mRecyclerView.mItemAnimator != null) {
            mRecyclerView.mItemAnimator.endAnimation(localViewHolder);
          }
          localViewHolder.setIsRecyclable(true);
          paramRecycler.quickRecycleScrapView(localView);
        }
        i -= 1;
      }
      paramRecycler.clearScrap();
      if (j > 0) {
        mRecyclerView.invalidate();
      }
    }
    
    public void removeAndRecycleView(View paramView, RecyclerView.Recycler paramRecycler)
    {
      removeView(paramView);
      paramRecycler.recycleView(paramView);
    }
    
    public void removeAndRecycleViewAt(int paramInt, RecyclerView.Recycler paramRecycler)
    {
      View localView = getChildAt(paramInt);
      removeViewAt(paramInt);
      paramRecycler.recycleView(localView);
    }
    
    public boolean removeCallbacks(Runnable paramRunnable)
    {
      if (mRecyclerView != null) {
        return mRecyclerView.removeCallbacks(paramRunnable);
      }
      return false;
    }
    
    public void removeDetachedView(View paramView)
    {
      mRecyclerView.removeDetachedView(paramView, false);
    }
    
    public void removeView(View paramView)
    {
      mChildHelper.removeView(paramView);
    }
    
    public void removeViewAt(int paramInt)
    {
      if (getChildAt(paramInt) != null) {
        mChildHelper.removeViewAt(paramInt);
      }
    }
    
    public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
    {
      int i2 = getPaddingLeft();
      int m = getPaddingTop();
      int i3 = getWidth() - getPaddingRight();
      int i1 = getHeight();
      int i6 = getPaddingBottom();
      int i4 = paramView.getLeft() + left;
      int n = paramView.getTop() + top;
      int i5 = i4 + paramRect.width();
      int i7 = paramRect.height();
      int i = Math.min(0, i4 - i2);
      int j = Math.min(0, n - m);
      int k = Math.max(0, i5 - i3);
      i1 = Math.max(0, n + i7 - (i1 - i6));
      if (getLayoutDirection() == 1) {
        if (k != 0)
        {
          i = k;
          if (j == 0) {
            break label207;
          }
          label144:
          if ((i == 0) && (j == 0)) {
            break label233;
          }
          if (!paramBoolean) {
            break label222;
          }
          paramRecyclerView.scrollBy(i, j);
        }
      }
      for (;;)
      {
        return true;
        i = Math.max(i, i5 - i3);
        break;
        if (i != 0) {
          break;
        }
        for (;;)
        {
          i = Math.min(i4 - i2, k);
        }
        label207:
        j = Math.min(n - m, i1);
        break label144;
        label222:
        paramRecyclerView.smoothScrollBy(i, j);
      }
      label233:
      return false;
    }
    
    public void requestLayout()
    {
      if (mRecyclerView != null) {
        mRecyclerView.requestLayout();
      }
    }
    
    public void requestSimpleAnimationsInNextLayout()
    {
      mRequestedSimpleAnimations = true;
    }
    
    public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void scrollToPosition(int paramInt) {}
    
    public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void setMeasuredDimension(int paramInt1, int paramInt2)
    {
      mRecyclerView.setMeasuredDimension(paramInt1, paramInt2);
    }
    
    void setRecyclerView(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        mRecyclerView = null;
        mChildHelper = null;
        return;
      }
      mRecyclerView = paramRecyclerView;
      mChildHelper = mChildHelper;
    }
    
    public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
    {
      Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }
    
    public void startSmoothScroll(RecyclerView.SmoothScroller paramSmoothScroller)
    {
      if ((mSmoothScroller != null) && (paramSmoothScroller != mSmoothScroller) && (mSmoothScroller.isRunning())) {
        mSmoothScroller.stop();
      }
      mSmoothScroller = paramSmoothScroller;
      mSmoothScroller.start(mRecyclerView, this);
    }
    
    public void stopIgnoringView(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      paramView.stopIgnoring();
      paramView.resetInternal();
      paramView.addFlags(4);
    }
    
    void stopSmoothScroller()
    {
      if (mSmoothScroller != null) {
        mSmoothScroller.stop();
      }
    }
    
    public boolean supportsPredictiveItemAnimations()
    {
      return false;
    }
    
    public static class Properties
    {
      public int orientation;
      public boolean reverseLayout;
      public int spanCount;
      public boolean stackFromEnd;
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    final Rect mDecorInsets = new Rect();
    boolean mInsetsDirty = true;
    boolean mPendingInvalidate = false;
    RecyclerView.ViewHolder mViewHolder;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public int getViewAdapterPosition()
    {
      return mViewHolder.getAdapterPosition();
    }
    
    public int getViewLayoutPosition()
    {
      return mViewHolder.getLayoutPosition();
    }
    
    public int getViewPosition()
    {
      return mViewHolder.getPosition();
    }
    
    public boolean isItemChanged()
    {
      return mViewHolder.isUpdated();
    }
    
    public boolean isItemRemoved()
    {
      return mViewHolder.isRemoved();
    }
    
    public boolean isViewInvalid()
    {
      return mViewHolder.isInvalid();
    }
    
    public boolean viewNeedsUpdate()
    {
      return mViewHolder.needsUpdate();
    }
  }
  
  public static abstract interface OnChildAttachStateChangeListener
  {
    public abstract void onChildViewAttachedToWindow(View paramView);
    
    public abstract void onChildViewDetachedFromWindow(View paramView);
  }
  
  public static abstract interface OnItemTouchListener
  {
    public abstract boolean onInterceptTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
    
    public abstract void onRequestDisallowInterceptTouchEvent(boolean paramBoolean);
    
    public abstract void onTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
  }
  
  public static abstract class OnScrollListener
  {
    public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {}
    
    public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  public static class RecycledViewPool
  {
    private static final int DEFAULT_MAX_SCRAP = 5;
    private int mAttachCount = 0;
    private SparseIntArray mMaxScrap = new SparseIntArray();
    private SparseArray<ArrayList<RecyclerView.ViewHolder>> mScrap = new SparseArray();
    
    private ArrayList<RecyclerView.ViewHolder> getScrapHeapForType(int paramInt)
    {
      ArrayList localArrayList2 = (ArrayList)mScrap.get(paramInt);
      ArrayList localArrayList1 = localArrayList2;
      if (localArrayList2 == null)
      {
        localArrayList2 = new ArrayList();
        mScrap.put(paramInt, localArrayList2);
        localArrayList1 = localArrayList2;
        if (mMaxScrap.indexOfKey(paramInt) < 0)
        {
          mMaxScrap.put(paramInt, 5);
          localArrayList1 = localArrayList2;
        }
      }
      return localArrayList1;
    }
    
    void attach(RecyclerView.Adapter paramAdapter)
    {
      mAttachCount += 1;
    }
    
    public void clear()
    {
      mScrap.clear();
    }
    
    void detach()
    {
      mAttachCount -= 1;
    }
    
    public RecyclerView.ViewHolder getRecycledView(int paramInt)
    {
      ArrayList localArrayList = (ArrayList)mScrap.get(paramInt);
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        paramInt = localArrayList.size() - 1;
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)localArrayList.get(paramInt);
        localArrayList.remove(paramInt);
        return localViewHolder;
      }
      return null;
    }
    
    void onAdapterChanged(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2, boolean paramBoolean)
    {
      if (paramAdapter1 != null) {
        detach();
      }
      if ((!paramBoolean) && (mAttachCount == 0)) {
        clear();
      }
      if (paramAdapter2 != null) {
        attach(paramAdapter2);
      }
    }
    
    public void putRecycledView(RecyclerView.ViewHolder paramViewHolder)
    {
      int i = paramViewHolder.getItemViewType();
      ArrayList localArrayList = getScrapHeapForType(i);
      if (mMaxScrap.get(i) <= localArrayList.size()) {
        return;
      }
      paramViewHolder.resetInternal();
      localArrayList.add(paramViewHolder);
    }
    
    public void setMaxRecycledViews(int paramInt1, int paramInt2)
    {
      mMaxScrap.put(paramInt1, paramInt2);
      ArrayList localArrayList = (ArrayList)mScrap.get(paramInt1);
      if (localArrayList != null) {
        while (localArrayList.size() > paramInt2) {
          localArrayList.remove(localArrayList.size() - 1);
        }
      }
    }
    
    int size()
    {
      int i = 0;
      int k;
      for (int j = 0; i < mScrap.size(); j = k)
      {
        ArrayList localArrayList = (ArrayList)mScrap.valueAt(i);
        k = j;
        if (localArrayList != null) {
          k = j + localArrayList.size();
        }
        i += 1;
      }
      return j;
    }
  }
  
  public final class Recycler
  {
    private static final int DEFAULT_CACHE_SIZE = 2;
    final ArrayList<RecyclerView.ViewHolder> mAttachedScrap = new ArrayList();
    final ArrayList<RecyclerView.ViewHolder> mCachedViews = new ArrayList();
    private ArrayList<RecyclerView.ViewHolder> mChangedScrap = null;
    private RecyclerView.RecycledViewPool mRecyclerPool;
    private final List<RecyclerView.ViewHolder> mUnmodifiableAttachedScrap = Collections.unmodifiableList(mAttachedScrap);
    private RecyclerView.ViewCacheExtension mViewCacheExtension;
    private int mViewCacheMax = 2;
    
    public Recycler() {}
    
    private void attachAccessibilityDelegate(View paramView)
    {
      if (isAccessibilityEnabled())
      {
        if (ViewCompat.getImportantForAccessibility(paramView) == 0) {
          ViewCompat.setImportantForAccessibility(paramView, 1);
        }
        if (!ViewCompat.hasAccessibilityDelegate(paramView)) {
          ViewCompat.setAccessibilityDelegate(paramView, mAccessibilityDelegate.getItemDelegate());
        }
      }
    }
    
    private void invalidateDisplayListInt(RecyclerView.ViewHolder paramViewHolder)
    {
      if ((itemView instanceof ViewGroup)) {
        invalidateDisplayListInt((ViewGroup)itemView, false);
      }
    }
    
    private void invalidateDisplayListInt(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      int i = paramViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = paramViewGroup.getChildAt(i);
        if ((localView instanceof ViewGroup)) {
          invalidateDisplayListInt((ViewGroup)localView, true);
        }
        i -= 1;
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
        return;
      }
      i = paramViewGroup.getVisibility();
      paramViewGroup.setVisibility(4);
      paramViewGroup.setVisibility(i);
    }
    
    final void addViewHolderToRecycledViewPool(RecyclerView.ViewHolder paramViewHolder)
    {
      ViewCompat.setAccessibilityDelegate(itemView, null);
      dispatchViewRecycled(paramViewHolder);
      mOwnerRecyclerView = null;
      getRecycledViewPool().putRecycledView(paramViewHolder);
    }
    
    public final void bindViewToPosition(View paramView, int paramInt)
    {
      boolean bool = true;
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      if (localViewHolder == null) {
        throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter");
      }
      int i = mAdapterHelper.findPositionOffset(paramInt);
      if ((i < 0) || (i >= mAdapter.getItemCount())) {
        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + i + ").state:" + mState.getItemCount());
      }
      mOwnerRecyclerView = RecyclerView.this;
      mAdapter.bindViewHolder(localViewHolder, i);
      attachAccessibilityDelegate(paramView);
      if (mState.isPreLayout()) {
        mPreLayoutPosition = paramInt;
      }
      paramView = itemView.getLayoutParams();
      if (paramView == null)
      {
        paramView = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
        itemView.setLayoutParams(paramView);
        mInsetsDirty = true;
        mViewHolder = localViewHolder;
        if (itemView.getParent() != null) {
          break label256;
        }
      }
      for (;;)
      {
        mPendingInvalidate = bool;
        return;
        if (!checkLayoutParams(paramView))
        {
          paramView = (RecyclerView.LayoutParams)generateLayoutParams(paramView);
          itemView.setLayoutParams(paramView);
          break;
        }
        paramView = (RecyclerView.LayoutParams)paramView;
        break;
        label256:
        bool = false;
      }
    }
    
    public final void clear()
    {
      mAttachedScrap.clear();
      recycleAndClearCachedViews();
    }
    
    final void clearOldPositions()
    {
      int j = 0;
      int k = mCachedViews.size();
      int i = 0;
      while (i < k)
      {
        ((RecyclerView.ViewHolder)mCachedViews.get(i)).clearOldPosition();
        i += 1;
      }
      k = mAttachedScrap.size();
      i = 0;
      while (i < k)
      {
        ((RecyclerView.ViewHolder)mAttachedScrap.get(i)).clearOldPosition();
        i += 1;
      }
      if (mChangedScrap != null)
      {
        k = mChangedScrap.size();
        i = j;
        while (i < k)
        {
          ((RecyclerView.ViewHolder)mChangedScrap.get(i)).clearOldPosition();
          i += 1;
        }
      }
    }
    
    final void clearScrap()
    {
      mAttachedScrap.clear();
      if (mChangedScrap != null) {
        mChangedScrap.clear();
      }
    }
    
    public final int convertPreLayoutPositionToPostLayout(int paramInt)
    {
      if ((paramInt < 0) || (paramInt >= mState.getItemCount())) {
        throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + mState.getItemCount());
      }
      if (!mState.isPreLayout()) {
        return paramInt;
      }
      return mAdapterHelper.findPositionOffset(paramInt);
    }
    
    final void dispatchViewRecycled(RecyclerView.ViewHolder paramViewHolder)
    {
      if (mRecyclerListener != null) {
        mRecyclerListener.onViewRecycled(paramViewHolder);
      }
      if (mAdapter != null) {
        mAdapter.onViewRecycled(paramViewHolder);
      }
      if (mState != null) {
        mViewInfoStore.removeViewHolder(paramViewHolder);
      }
    }
    
    final RecyclerView.ViewHolder getChangedScrapViewForPosition(int paramInt)
    {
      int j = 0;
      int k;
      if (mChangedScrap != null)
      {
        k = mChangedScrap.size();
        if (k != 0) {}
      }
      else
      {
        return null;
      }
      int i = 0;
      RecyclerView.ViewHolder localViewHolder;
      while (i < k)
      {
        localViewHolder = (RecyclerView.ViewHolder)mChangedScrap.get(i);
        if ((!localViewHolder.wasReturnedFromScrap()) && (localViewHolder.getLayoutPosition() == paramInt))
        {
          localViewHolder.addFlags(32);
          return localViewHolder;
        }
        i += 1;
      }
      if (mAdapter.hasStableIds())
      {
        paramInt = mAdapterHelper.findPositionOffset(paramInt);
        if ((paramInt > 0) && (paramInt < mAdapter.getItemCount()))
        {
          long l = mAdapter.getItemId(paramInt);
          paramInt = j;
          while (paramInt < k)
          {
            localViewHolder = (RecyclerView.ViewHolder)mChangedScrap.get(paramInt);
            if ((!localViewHolder.wasReturnedFromScrap()) && (localViewHolder.getItemId() == l))
            {
              localViewHolder.addFlags(32);
              return localViewHolder;
            }
            paramInt += 1;
          }
        }
      }
      return null;
    }
    
    final RecyclerView.RecycledViewPool getRecycledViewPool()
    {
      if (mRecyclerPool == null) {
        mRecyclerPool = new RecyclerView.RecycledViewPool();
      }
      return mRecyclerPool;
    }
    
    final int getScrapCount()
    {
      return mAttachedScrap.size();
    }
    
    public final List<RecyclerView.ViewHolder> getScrapList()
    {
      return mUnmodifiableAttachedScrap;
    }
    
    final View getScrapViewAt(int paramInt)
    {
      return mAttachedScrap.get(paramInt)).itemView;
    }
    
    final RecyclerView.ViewHolder getScrapViewForId(long paramLong, int paramInt, boolean paramBoolean)
    {
      int i = mAttachedScrap.size() - 1;
      RecyclerView.ViewHolder localViewHolder2;
      RecyclerView.ViewHolder localViewHolder1;
      while (i >= 0)
      {
        localViewHolder2 = (RecyclerView.ViewHolder)mAttachedScrap.get(i);
        if ((localViewHolder2.getItemId() == paramLong) && (!localViewHolder2.wasReturnedFromScrap()))
        {
          if (paramInt == localViewHolder2.getItemViewType())
          {
            localViewHolder2.addFlags(32);
            localViewHolder1 = localViewHolder2;
            if (localViewHolder2.isRemoved())
            {
              localViewHolder1 = localViewHolder2;
              if (!mState.isPreLayout())
              {
                localViewHolder2.setFlags(2, 14);
                localViewHolder1 = localViewHolder2;
              }
            }
            return localViewHolder1;
          }
          if (!paramBoolean)
          {
            mAttachedScrap.remove(i);
            removeDetachedView(itemView, false);
            quickRecycleScrapView(itemView);
          }
        }
        i -= 1;
      }
      i = mCachedViews.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label245;
        }
        localViewHolder2 = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if (localViewHolder2.getItemId() == paramLong)
        {
          if (paramInt == localViewHolder2.getItemViewType())
          {
            localViewHolder1 = localViewHolder2;
            if (paramBoolean) {
              break;
            }
            mCachedViews.remove(i);
            return localViewHolder2;
          }
          if (!paramBoolean) {
            recycleCachedViewAt(i);
          }
        }
        i -= 1;
      }
      label245:
      return null;
    }
    
    final RecyclerView.ViewHolder getScrapViewForPosition(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int j = 0;
      int k = mAttachedScrap.size();
      int i = 0;
      Object localObject;
      RecyclerView.ViewHolder localViewHolder;
      for (;;)
      {
        if (i < k)
        {
          localObject = (RecyclerView.ViewHolder)mAttachedScrap.get(i);
          if ((((RecyclerView.ViewHolder)localObject).wasReturnedFromScrap()) || (((RecyclerView.ViewHolder)localObject).getLayoutPosition() != paramInt1) || (((RecyclerView.ViewHolder)localObject).isInvalid()) || ((!RecyclerView.State.access$2200(mState)) && (((RecyclerView.ViewHolder)localObject).isRemoved()))) {
            break label246;
          }
          if ((paramInt2 != -1) && (((RecyclerView.ViewHolder)localObject).getItemViewType() != paramInt2)) {
            Log.e("RecyclerView", "Scrap view for position " + paramInt1 + " isn't dirty but has wrong view type! (found " + ((RecyclerView.ViewHolder)localObject).getItemViewType() + " but expected " + paramInt2 + ")");
          }
        }
        else
        {
          if (paramBoolean) {
            break label283;
          }
          localObject = mChildHelper.findHiddenNonRemovedView(paramInt1, paramInt2);
          if (localObject == null) {
            break label283;
          }
          localViewHolder = RecyclerView.getChildViewHolderInt((View)localObject);
          mChildHelper.unhide((View)localObject);
          paramInt1 = mChildHelper.indexOfChild((View)localObject);
          if (paramInt1 != -1) {
            break;
          }
          throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + localViewHolder);
        }
        ((RecyclerView.ViewHolder)localObject).addFlags(32);
        return (RecyclerView.ViewHolder)localObject;
        label246:
        i += 1;
      }
      mChildHelper.detachViewFromParent(paramInt1);
      scrapView((View)localObject);
      localViewHolder.addFlags(8224);
      return localViewHolder;
      label283:
      i = mCachedViews.size();
      paramInt2 = j;
      for (;;)
      {
        if (paramInt2 >= i) {
          break label358;
        }
        localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(paramInt2);
        if ((!localViewHolder.isInvalid()) && (localViewHolder.getLayoutPosition() == paramInt1))
        {
          localObject = localViewHolder;
          if (paramBoolean) {
            break;
          }
          mCachedViews.remove(paramInt2);
          return localViewHolder;
        }
        paramInt2 += 1;
      }
      label358:
      return null;
    }
    
    public final View getViewForPosition(int paramInt)
    {
      return getViewForPosition(paramInt, false);
    }
    
    final View getViewForPosition(int paramInt, boolean paramBoolean)
    {
      boolean bool = true;
      if ((paramInt < 0) || (paramInt >= mState.getItemCount())) {
        throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + mState.getItemCount());
      }
      Object localObject2;
      int i;
      if (mState.isPreLayout())
      {
        localObject2 = getChangedScrapViewForPosition(paramInt);
        if (localObject2 != null) {
          i = 1;
        }
      }
      for (;;)
      {
        Object localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = getScrapViewForPosition(paramInt, -1, paramBoolean);
          localObject1 = localObject2;
          if (localObject2 != null) {
            if (!validateViewHolderForOffsetPosition((RecyclerView.ViewHolder)localObject2)) {
              if (!paramBoolean)
              {
                ((RecyclerView.ViewHolder)localObject2).addFlags(4);
                if (((RecyclerView.ViewHolder)localObject2).isScrap())
                {
                  removeDetachedView(itemView, false);
                  ((RecyclerView.ViewHolder)localObject2).unScrap();
                  label174:
                  recycleViewHolderInternal((RecyclerView.ViewHolder)localObject2);
                }
              }
              else
              {
                localObject1 = null;
              }
            }
          }
        }
        for (;;)
        {
          Object localObject3 = localObject1;
          int k = i;
          int j;
          if (localObject1 == null)
          {
            k = mAdapterHelper.findPositionOffset(paramInt);
            if ((k < 0) || (k >= mAdapter.getItemCount()))
            {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + k + ").state:" + mState.getItemCount());
              i = 0;
              break;
              if (!((RecyclerView.ViewHolder)localObject2).wasReturnedFromScrap()) {
                break label174;
              }
              ((RecyclerView.ViewHolder)localObject2).clearReturnedFromScrapFlag();
              break label174;
              i = 1;
              localObject1 = localObject2;
              continue;
            }
            int m = mAdapter.getItemViewType(k);
            localObject2 = localObject1;
            j = i;
            if (mAdapter.hasStableIds())
            {
              localObject1 = getScrapViewForId(mAdapter.getItemId(k), m, paramBoolean);
              localObject2 = localObject1;
              j = i;
              if (localObject1 != null)
              {
                mPosition = k;
                j = 1;
                localObject2 = localObject1;
              }
            }
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (mViewCacheExtension != null)
              {
                localObject3 = mViewCacheExtension.getViewForPositionAndType(this, paramInt, m);
                localObject1 = localObject2;
                if (localObject3 != null)
                {
                  localObject2 = getChildViewHolder((View)localObject3);
                  if (localObject2 == null) {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                  }
                  localObject1 = localObject2;
                  if (((RecyclerView.ViewHolder)localObject2).shouldIgnore()) {
                    throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                  }
                }
              }
            }
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject1 = getRecycledViewPool().getRecycledView(m);
              localObject2 = localObject1;
              if (localObject1 != null)
              {
                ((RecyclerView.ViewHolder)localObject1).resetInternal();
                localObject2 = localObject1;
                if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST)
                {
                  invalidateDisplayListInt((RecyclerView.ViewHolder)localObject1);
                  localObject2 = localObject1;
                }
              }
            }
            localObject3 = localObject2;
            k = j;
            if (localObject2 == null) {
              localObject2 = mAdapter.createViewHolder(RecyclerView.this, m);
            }
          }
          for (i = j;; i = k)
          {
            if ((i != 0) && (!mState.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).hasAnyOfTheFlags(8192)))
            {
              ((RecyclerView.ViewHolder)localObject2).setFlags(0, 8192);
              if (RecyclerView.State.access$2300(mState))
              {
                j = RecyclerView.ItemAnimator.buildAdapterChangeFlagsForAnimations((RecyclerView.ViewHolder)localObject2);
                localObject1 = mItemAnimator.recordPreLayoutInformation(mState, (RecyclerView.ViewHolder)localObject2, j | 0x1000, ((RecyclerView.ViewHolder)localObject2).getUnmodifiedPayloads());
                RecyclerView.this.recordAnimationInfoIfBouncedHiddenView((RecyclerView.ViewHolder)localObject2, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject1);
              }
            }
            if ((mState.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).isBound()))
            {
              mPreLayoutPosition = paramInt;
              paramInt = 0;
            }
            for (;;)
            {
              localObject1 = itemView.getLayoutParams();
              if (localObject1 == null)
              {
                localObject1 = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
                itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                label737:
                mViewHolder = ((RecyclerView.ViewHolder)localObject2);
                if ((i == 0) || (paramInt == 0)) {
                  break label909;
                }
              }
              label909:
              for (paramBoolean = bool;; paramBoolean = false)
              {
                mPendingInvalidate = paramBoolean;
                return itemView;
                if ((((RecyclerView.ViewHolder)localObject2).isBound()) && (!((RecyclerView.ViewHolder)localObject2).needsUpdate()) && (!((RecyclerView.ViewHolder)localObject2).isInvalid())) {
                  break label914;
                }
                j = mAdapterHelper.findPositionOffset(paramInt);
                mOwnerRecyclerView = RecyclerView.this;
                mAdapter.bindViewHolder((RecyclerView.ViewHolder)localObject2, j);
                attachAccessibilityDelegate(itemView);
                if (mState.isPreLayout()) {
                  mPreLayoutPosition = paramInt;
                }
                paramInt = 1;
                break;
                if (!checkLayoutParams((ViewGroup.LayoutParams)localObject1))
                {
                  localObject1 = (RecyclerView.LayoutParams)generateLayoutParams((ViewGroup.LayoutParams)localObject1);
                  itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                  break label737;
                }
                localObject1 = (RecyclerView.LayoutParams)localObject1;
                break label737;
              }
              label914:
              paramInt = 0;
            }
            localObject2 = localObject3;
          }
        }
        localObject2 = null;
        i = 0;
      }
    }
    
    final void markItemDecorInsetsDirty()
    {
      int j = mCachedViews.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)mCachedViews.get(i)).itemView.getLayoutParams();
        if (localLayoutParams != null) {
          mInsetsDirty = true;
        }
        i += 1;
      }
    }
    
    final void markKnownViewsInvalid()
    {
      int j;
      int i;
      if ((mAdapter != null) && (mAdapter.hasStableIds()))
      {
        j = mCachedViews.size();
        i = 0;
      }
      while (i < j)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if (localViewHolder != null)
        {
          localViewHolder.addFlags(6);
          localViewHolder.addChangePayload(null);
        }
        i += 1;
        continue;
        recycleAndClearCachedViews();
      }
    }
    
    final void offsetPositionRecordsForInsert(int paramInt1, int paramInt2)
    {
      int j = mCachedViews.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if ((localViewHolder != null) && (localViewHolder.getLayoutPosition() >= paramInt1)) {
          localViewHolder.offsetPosition(paramInt2, true);
        }
        i += 1;
      }
    }
    
    final void offsetPositionRecordsForMove(int paramInt1, int paramInt2)
    {
      int i;
      int j;
      int k;
      int m;
      label25:
      RecyclerView.ViewHolder localViewHolder;
      if (paramInt1 < paramInt2)
      {
        i = -1;
        j = paramInt2;
        k = paramInt1;
        int n = mCachedViews.size();
        m = 0;
        if (m >= n) {
          return;
        }
        localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(m);
        if ((localViewHolder != null) && (mPosition >= k) && (mPosition <= j))
        {
          if (mPosition != paramInt1) {
            break label109;
          }
          localViewHolder.offsetPosition(paramInt2 - paramInt1, false);
        }
      }
      for (;;)
      {
        m += 1;
        break label25;
        i = 1;
        j = paramInt1;
        k = paramInt2;
        break;
        label109:
        localViewHolder.offsetPosition(i, false);
      }
    }
    
    final void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int i = mCachedViews.size() - 1;
      if (i >= 0)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if (localViewHolder != null)
        {
          if (localViewHolder.getLayoutPosition() < paramInt1 + paramInt2) {
            break label63;
          }
          localViewHolder.offsetPosition(-paramInt2, paramBoolean);
        }
        for (;;)
        {
          i -= 1;
          break;
          label63:
          if (localViewHolder.getLayoutPosition() >= paramInt1)
          {
            localViewHolder.addFlags(8);
            recycleCachedViewAt(i);
          }
        }
      }
    }
    
    final void onAdapterChanged(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2, boolean paramBoolean)
    {
      clear();
      getRecycledViewPool().onAdapterChanged(paramAdapter1, paramAdapter2, paramBoolean);
    }
    
    final void quickRecycleScrapView(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      RecyclerView.ViewHolder.access$4802(paramView, null);
      RecyclerView.ViewHolder.access$4902(paramView, false);
      paramView.clearReturnedFromScrapFlag();
      recycleViewHolderInternal(paramView);
    }
    
    final void recycleAndClearCachedViews()
    {
      int i = mCachedViews.size() - 1;
      while (i >= 0)
      {
        recycleCachedViewAt(i);
        i -= 1;
      }
      mCachedViews.clear();
    }
    
    final void recycleCachedViewAt(int paramInt)
    {
      addViewHolderToRecycledViewPool((RecyclerView.ViewHolder)mCachedViews.get(paramInt));
      mCachedViews.remove(paramInt);
    }
    
    public final void recycleView(View paramView)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.getChildViewHolderInt(paramView);
      if (localViewHolder.isTmpDetached()) {
        removeDetachedView(paramView, false);
      }
      if (localViewHolder.isScrap()) {
        localViewHolder.unScrap();
      }
      for (;;)
      {
        recycleViewHolderInternal(localViewHolder);
        return;
        if (localViewHolder.wasReturnedFromScrap()) {
          localViewHolder.clearReturnedFromScrapFlag();
        }
      }
    }
    
    final void recycleViewHolderInternal(RecyclerView.ViewHolder paramViewHolder)
    {
      boolean bool = true;
      int j = 0;
      if ((paramViewHolder.isScrap()) || (itemView.getParent() != null))
      {
        StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramViewHolder.isScrap()).append(" isAttached:");
        if (itemView.getParent() != null) {}
        for (;;)
        {
          throw new IllegalArgumentException(bool);
          bool = false;
        }
      }
      if (paramViewHolder.isTmpDetached()) {
        throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramViewHolder);
      }
      if (paramViewHolder.shouldIgnore()) {
        throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
      }
      bool = RecyclerView.ViewHolder.access$4700(paramViewHolder);
      int i;
      if ((mAdapter != null) && (bool) && (mAdapter.onFailedToRecycleView(paramViewHolder)))
      {
        i = 1;
        if ((i == 0) && (!paramViewHolder.isRecyclable())) {
          break label286;
        }
        if (paramViewHolder.hasAnyOfTheFlags(14)) {
          break label281;
        }
        i = mCachedViews.size();
        if ((i == mViewCacheMax) && (i > 0)) {
          recycleCachedViewAt(0);
        }
        if (i >= mViewCacheMax) {
          break label281;
        }
        mCachedViews.add(paramViewHolder);
        i = 1;
        label232:
        if (i != 0) {
          break label278;
        }
        addViewHolderToRecycledViewPool(paramViewHolder);
        j = 1;
      }
      for (;;)
      {
        mViewInfoStore.removeViewHolder(paramViewHolder);
        if ((i == 0) && (j == 0) && (bool)) {
          mOwnerRecyclerView = null;
        }
        return;
        i = 0;
        break;
        label278:
        continue;
        label281:
        i = 0;
        break label232;
        label286:
        i = 0;
      }
    }
    
    final void recycleViewInternal(View paramView)
    {
      recycleViewHolderInternal(RecyclerView.getChildViewHolderInt(paramView));
    }
    
    final void scrapView(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      if ((paramView.hasAnyOfTheFlags(12)) || (!paramView.isUpdated()) || (RecyclerView.this.canReuseUpdatedViewHolder(paramView)))
      {
        if ((paramView.isInvalid()) && (!paramView.isRemoved()) && (!mAdapter.hasStableIds())) {
          throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
        }
        paramView.setScrapContainer(this, false);
        mAttachedScrap.add(paramView);
        return;
      }
      if (mChangedScrap == null) {
        mChangedScrap = new ArrayList();
      }
      paramView.setScrapContainer(this, true);
      mChangedScrap.add(paramView);
    }
    
    final void setAdapterPositionsAsUnknown()
    {
      int j = mCachedViews.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if (localViewHolder != null) {
          localViewHolder.addFlags(512);
        }
        i += 1;
      }
    }
    
    final void setRecycledViewPool(RecyclerView.RecycledViewPool paramRecycledViewPool)
    {
      if (mRecyclerPool != null) {
        mRecyclerPool.detach();
      }
      mRecyclerPool = paramRecycledViewPool;
      if (paramRecycledViewPool != null) {
        mRecyclerPool.attach(getAdapter());
      }
    }
    
    final void setViewCacheExtension(RecyclerView.ViewCacheExtension paramViewCacheExtension)
    {
      mViewCacheExtension = paramViewCacheExtension;
    }
    
    public final void setViewCacheSize(int paramInt)
    {
      mViewCacheMax = paramInt;
      int i = mCachedViews.size() - 1;
      while ((i >= 0) && (mCachedViews.size() > paramInt))
      {
        recycleCachedViewAt(i);
        i -= 1;
      }
    }
    
    final void unscrapView(RecyclerView.ViewHolder paramViewHolder)
    {
      if (RecyclerView.ViewHolder.access$4900(paramViewHolder)) {
        mChangedScrap.remove(paramViewHolder);
      }
      for (;;)
      {
        RecyclerView.ViewHolder.access$4802(paramViewHolder, null);
        RecyclerView.ViewHolder.access$4902(paramViewHolder, false);
        paramViewHolder.clearReturnedFromScrapFlag();
        return;
        mAttachedScrap.remove(paramViewHolder);
      }
    }
    
    final boolean validateViewHolderForOffsetPosition(RecyclerView.ViewHolder paramViewHolder)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramViewHolder.isRemoved()) {
        bool1 = mState.isPreLayout();
      }
      do
      {
        do
        {
          return bool1;
          if ((mPosition < 0) || (mPosition >= mAdapter.getItemCount())) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramViewHolder);
          }
          if (mState.isPreLayout()) {
            break;
          }
          bool1 = bool2;
        } while (mAdapter.getItemViewType(mPosition) != paramViewHolder.getItemViewType());
        if (!mAdapter.hasStableIds()) {
          break;
        }
        bool1 = bool2;
      } while (paramViewHolder.getItemId() != mAdapter.getItemId(mPosition));
      return true;
      return true;
    }
    
    final void viewRangeUpdate(int paramInt1, int paramInt2)
    {
      int i = mCachedViews.size() - 1;
      while (i >= 0)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mCachedViews.get(i);
        if (localViewHolder != null)
        {
          int j = localViewHolder.getLayoutPosition();
          if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
          {
            localViewHolder.addFlags(2);
            recycleCachedViewAt(i);
          }
        }
        i -= 1;
      }
    }
  }
  
  public static abstract interface RecyclerListener
  {
    public abstract void onViewRecycled(RecyclerView.ViewHolder paramViewHolder);
  }
  
  private class RecyclerViewDataObserver
    extends RecyclerView.AdapterDataObserver
  {
    private RecyclerViewDataObserver() {}
    
    public void onChanged()
    {
      assertNotInLayoutOrScroll(null);
      if (mAdapter.hasStableIds())
      {
        RecyclerView.State.access$1902(mState, true);
        RecyclerView.this.setDataSetChangedAfterLayout();
      }
      for (;;)
      {
        if (!mAdapterHelper.hasPendingUpdates()) {
          requestLayout();
        }
        return;
        RecyclerView.State.access$1902(mState, true);
        RecyclerView.this.setDataSetChangedAfterLayout();
      }
    }
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      assertNotInLayoutOrScroll(null);
      if (mAdapterHelper.onItemRangeChanged(paramInt1, paramInt2, paramObject)) {
        triggerUpdateProcessor();
      }
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      assertNotInLayoutOrScroll(null);
      if (mAdapterHelper.onItemRangeInserted(paramInt1, paramInt2)) {
        triggerUpdateProcessor();
      }
    }
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      assertNotInLayoutOrScroll(null);
      if (mAdapterHelper.onItemRangeMoved(paramInt1, paramInt2, paramInt3)) {
        triggerUpdateProcessor();
      }
    }
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      assertNotInLayoutOrScroll(null);
      if (mAdapterHelper.onItemRangeRemoved(paramInt1, paramInt2)) {
        triggerUpdateProcessor();
      }
    }
    
    void triggerUpdateProcessor()
    {
      if ((mPostUpdatesOnAnimation) && (mHasFixedSize) && (mIsAttached))
      {
        ViewCompat.postOnAnimation(RecyclerView.this, mUpdateChildViewsRunnable);
        return;
      }
      RecyclerView.access$4302(RecyclerView.this, true);
      requestLayout();
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public final RecyclerView.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new RecyclerView.SavedState(paramAnonymousParcel);
      }
      
      public final RecyclerView.SavedState[] newArray(int paramAnonymousInt)
      {
        return new RecyclerView.SavedState[paramAnonymousInt];
      }
    };
    Parcelable mLayoutState;
    
    SavedState(Parcel paramParcel)
    {
      super();
      mLayoutState = paramParcel.readParcelable(RecyclerView.LayoutManager.class.getClassLoader());
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void copyFrom(SavedState paramSavedState)
    {
      mLayoutState = mLayoutState;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(mLayoutState, 0);
    }
  }
  
  public static class SimpleOnItemTouchListener
    implements RecyclerView.OnItemTouchListener
  {
    public boolean onInterceptTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean) {}
    
    public void onTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent) {}
  }
  
  public static abstract class SmoothScroller
  {
    private RecyclerView.LayoutManager mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private final Action mRecyclingAction = new Action(0, 0);
    private boolean mRunning;
    private int mTargetPosition = -1;
    private View mTargetView;
    
    private void onAnimation(int paramInt1, int paramInt2)
    {
      RecyclerView localRecyclerView = mRecyclerView;
      if ((!mRunning) || (mTargetPosition == -1) || (localRecyclerView == null)) {
        stop();
      }
      mPendingInitialRun = false;
      if (mTargetView != null)
      {
        if (getChildPosition(mTargetView) != mTargetPosition) {
          break label151;
        }
        onTargetFound(mTargetView, mState, mRecyclingAction);
        mRecyclingAction.runIfNecessary(localRecyclerView);
        stop();
      }
      for (;;)
      {
        if (mRunning)
        {
          onSeekTargetStep(paramInt1, paramInt2, mState, mRecyclingAction);
          boolean bool = mRecyclingAction.hasJumpTarget();
          mRecyclingAction.runIfNecessary(localRecyclerView);
          if (bool)
          {
            if (!mRunning) {
              break;
            }
            mPendingInitialRun = true;
            mViewFlinger.postOnAnimation();
          }
        }
        return;
        label151:
        Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
        mTargetView = null;
      }
      stop();
    }
    
    public View findViewByPosition(int paramInt)
    {
      return mRecyclerView.mLayout.findViewByPosition(paramInt);
    }
    
    public int getChildCount()
    {
      return mRecyclerView.mLayout.getChildCount();
    }
    
    public int getChildPosition(View paramView)
    {
      return mRecyclerView.getChildLayoutPosition(paramView);
    }
    
    public RecyclerView.LayoutManager getLayoutManager()
    {
      return mLayoutManager;
    }
    
    public int getTargetPosition()
    {
      return mTargetPosition;
    }
    
    @Deprecated
    public void instantScrollToPosition(int paramInt)
    {
      mRecyclerView.scrollToPosition(paramInt);
    }
    
    public boolean isPendingInitialRun()
    {
      return mPendingInitialRun;
    }
    
    public boolean isRunning()
    {
      return mRunning;
    }
    
    protected void normalize(PointF paramPointF)
    {
      double d = Math.sqrt(x * x + y * y);
      x = ((float)(x / d));
      y = ((float)(y / d));
    }
    
    protected void onChildAttachedToWindow(View paramView)
    {
      if (getChildPosition(paramView) == getTargetPosition()) {
        mTargetView = paramView;
      }
    }
    
    protected abstract void onSeekTargetStep(int paramInt1, int paramInt2, RecyclerView.State paramState, Action paramAction);
    
    protected abstract void onStart();
    
    protected abstract void onStop();
    
    protected abstract void onTargetFound(View paramView, RecyclerView.State paramState, Action paramAction);
    
    public void setTargetPosition(int paramInt)
    {
      mTargetPosition = paramInt;
    }
    
    void start(RecyclerView paramRecyclerView, RecyclerView.LayoutManager paramLayoutManager)
    {
      mRecyclerView = paramRecyclerView;
      mLayoutManager = paramLayoutManager;
      if (mTargetPosition == -1) {
        throw new IllegalArgumentException("Invalid target position");
      }
      RecyclerView.State.access$5602(mRecyclerView.mState, mTargetPosition);
      mRunning = true;
      mPendingInitialRun = true;
      mTargetView = findViewByPosition(getTargetPosition());
      onStart();
      mRecyclerView.mViewFlinger.postOnAnimation();
    }
    
    protected final void stop()
    {
      if (!mRunning) {
        return;
      }
      onStop();
      RecyclerView.State.access$5602(mRecyclerView.mState, -1);
      mTargetView = null;
      mTargetPosition = -1;
      mPendingInitialRun = false;
      mRunning = false;
      mLayoutManager.onSmoothScrollerStopped(this);
      mLayoutManager = null;
      mRecyclerView = null;
    }
    
    public static class Action
    {
      public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
      private boolean changed = false;
      private int consecutiveUpdates = 0;
      private int mDuration;
      private int mDx;
      private int mDy;
      private Interpolator mInterpolator;
      private int mJumpToPosition = -1;
      
      public Action(int paramInt1, int paramInt2)
      {
        this(paramInt1, paramInt2, Integer.MIN_VALUE, null);
      }
      
      public Action(int paramInt1, int paramInt2, int paramInt3)
      {
        this(paramInt1, paramInt2, paramInt3, null);
      }
      
      public Action(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        mDx = paramInt1;
        mDy = paramInt2;
        mDuration = paramInt3;
        mInterpolator = paramInterpolator;
      }
      
      private void runIfNecessary(RecyclerView paramRecyclerView)
      {
        if (mJumpToPosition >= 0)
        {
          int i = mJumpToPosition;
          mJumpToPosition = -1;
          paramRecyclerView.jumpToPositionForSmoothScroller(i);
          changed = false;
          return;
        }
        if (changed)
        {
          validate();
          if (mInterpolator == null) {
            if (mDuration == Integer.MIN_VALUE) {
              mViewFlinger.smoothScrollBy(mDx, mDy);
            }
          }
          for (;;)
          {
            consecutiveUpdates += 1;
            if (consecutiveUpdates > 10) {
              Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            changed = false;
            return;
            mViewFlinger.smoothScrollBy(mDx, mDy, mDuration);
            continue;
            mViewFlinger.smoothScrollBy(mDx, mDy, mDuration, mInterpolator);
          }
        }
        consecutiveUpdates = 0;
      }
      
      private void validate()
      {
        if ((mInterpolator != null) && (mDuration <= 0)) {
          throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        if (mDuration <= 0) {
          throw new IllegalStateException("Scroll duration must be a positive number");
        }
      }
      
      public int getDuration()
      {
        return mDuration;
      }
      
      public int getDx()
      {
        return mDx;
      }
      
      public int getDy()
      {
        return mDy;
      }
      
      public Interpolator getInterpolator()
      {
        return mInterpolator;
      }
      
      boolean hasJumpTarget()
      {
        return mJumpToPosition >= 0;
      }
      
      public void jumpTo(int paramInt)
      {
        mJumpToPosition = paramInt;
      }
      
      public void setDuration(int paramInt)
      {
        changed = true;
        mDuration = paramInt;
      }
      
      public void setDx(int paramInt)
      {
        changed = true;
        mDx = paramInt;
      }
      
      public void setDy(int paramInt)
      {
        changed = true;
        mDy = paramInt;
      }
      
      public void setInterpolator(Interpolator paramInterpolator)
      {
        changed = true;
        mInterpolator = paramInterpolator;
      }
      
      public void update(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        mDx = paramInt1;
        mDy = paramInt2;
        mDuration = paramInt3;
        mInterpolator = paramInterpolator;
        changed = true;
      }
    }
  }
  
  public static class State
  {
    private SparseArray<Object> mData;
    private int mDeletedInvisibleItemCountSincePreviousLayout = 0;
    private boolean mInPreLayout = false;
    int mItemCount = 0;
    private int mPreviousLayoutItemCount = 0;
    private boolean mRunPredictiveAnimations = false;
    private boolean mRunSimpleAnimations = false;
    private boolean mStructureChanged = false;
    private int mTargetPosition = -1;
    private boolean mTrackOldChangeHolders = false;
    
    public boolean didStructureChange()
    {
      return mStructureChanged;
    }
    
    public <T> T get(int paramInt)
    {
      if (mData == null) {
        return null;
      }
      return (T)mData.get(paramInt);
    }
    
    public int getItemCount()
    {
      if (mInPreLayout) {
        return mPreviousLayoutItemCount - mDeletedInvisibleItemCountSincePreviousLayout;
      }
      return mItemCount;
    }
    
    public int getTargetScrollPosition()
    {
      return mTargetPosition;
    }
    
    public boolean hasTargetScrollPosition()
    {
      return mTargetPosition != -1;
    }
    
    public boolean isPreLayout()
    {
      return mInPreLayout;
    }
    
    public void put(int paramInt, Object paramObject)
    {
      if (mData == null) {
        mData = new SparseArray();
      }
      mData.put(paramInt, paramObject);
    }
    
    public void remove(int paramInt)
    {
      if (mData == null) {
        return;
      }
      mData.remove(paramInt);
    }
    
    State reset()
    {
      mTargetPosition = -1;
      if (mData != null) {
        mData.clear();
      }
      mItemCount = 0;
      mStructureChanged = false;
      return this;
    }
    
    public String toString()
    {
      return "State{mTargetPosition=" + mTargetPosition + ", mData=" + mData + ", mItemCount=" + mItemCount + ", mPreviousLayoutItemCount=" + mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + mStructureChanged + ", mInPreLayout=" + mInPreLayout + ", mRunSimpleAnimations=" + mRunSimpleAnimations + ", mRunPredictiveAnimations=" + mRunPredictiveAnimations + '}';
    }
    
    public boolean willRunPredictiveAnimations()
    {
      return mRunPredictiveAnimations;
    }
    
    public boolean willRunSimpleAnimations()
    {
      return mRunSimpleAnimations;
    }
  }
  
  public static abstract class ViewCacheExtension
  {
    public abstract View getViewForPositionAndType(RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2);
  }
  
  private class ViewFlinger
    implements Runnable
  {
    private boolean mEatRunOnAnimationRequest = false;
    private Interpolator mInterpolator = RecyclerView.sQuinticInterpolator;
    private int mLastFlingX;
    private int mLastFlingY;
    private boolean mReSchedulePostAnimationCallback = false;
    private ScrollerCompat mScroller = ScrollerCompat.create(getContext(), RecyclerView.sQuinticInterpolator);
    
    public ViewFlinger() {}
    
    private int computeScrollDuration(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int j = Math.abs(paramInt1);
      int k = Math.abs(paramInt2);
      int i;
      if (j > k)
      {
        i = 1;
        paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
        paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
        if (i == 0) {
          break label140;
        }
      }
      label140:
      for (paramInt1 = getWidth();; paramInt1 = getHeight())
      {
        paramInt4 = paramInt1 / 2;
        float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
        float f1 = paramInt4;
        float f2 = paramInt4;
        f3 = distanceInfluenceForSnapDuration(f3);
        if (paramInt3 <= 0) {
          break label151;
        }
        paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / paramInt3)) * 4;
        return Math.min(paramInt1, 2000);
        i = 0;
        break;
      }
      label151:
      if (i != 0) {}
      for (paramInt2 = j;; paramInt2 = k)
      {
        paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
        break;
      }
    }
    
    private void disableRunOnAnimationRequests()
    {
      mReSchedulePostAnimationCallback = false;
      mEatRunOnAnimationRequest = true;
    }
    
    private float distanceInfluenceForSnapDuration(float paramFloat)
    {
      return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
    }
    
    private void enableRunOnAnimationRequests()
    {
      mEatRunOnAnimationRequest = false;
      if (mReSchedulePostAnimationCallback) {
        postOnAnimation();
      }
    }
    
    public void fling(int paramInt1, int paramInt2)
    {
      RecyclerView.this.setScrollState(2);
      mLastFlingY = 0;
      mLastFlingX = 0;
      mScroller.fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
      postOnAnimation();
    }
    
    void postOnAnimation()
    {
      if (mEatRunOnAnimationRequest)
      {
        mReSchedulePostAnimationCallback = true;
        return;
      }
      removeCallbacks(this);
      ViewCompat.postOnAnimation(RecyclerView.this, this);
    }
    
    public void run()
    {
      disableRunOnAnimationRequests();
      RecyclerView.this.consumePendingUpdateOperations();
      ScrollerCompat localScrollerCompat = mScroller;
      RecyclerView.SmoothScroller localSmoothScroller = mLayout.mSmoothScroller;
      int i6;
      int i7;
      int i4;
      int i5;
      int i1;
      int i;
      int m;
      int i3;
      int j;
      int n;
      int k;
      if (localScrollerCompat.computeScrollOffset())
      {
        i6 = localScrollerCompat.getCurrX();
        i7 = localScrollerCompat.getCurrY();
        i4 = i6 - mLastFlingX;
        i5 = i7 - mLastFlingY;
        i1 = 0;
        i = 0;
        i2 = 0;
        m = 0;
        mLastFlingX = i6;
        mLastFlingY = i7;
        i3 = 0;
        j = 0;
        n = 0;
        k = 0;
        if (mAdapter == null) {
          break label683;
        }
        eatRequestLayout();
        RecyclerView.this.onEnterLayoutOrScroll();
        TraceCompat.beginSection("RV Scroll");
        if (i4 != 0)
        {
          i = mLayout.scrollHorizontallyBy(i4, mRecycler, mState);
          j = i4 - i;
        }
        if (i5 != 0)
        {
          m = mLayout.scrollVerticallyBy(i5, mRecycler, mState);
          k = i5 - m;
        }
        TraceCompat.endSection();
        RecyclerView.this.repositionShadowingViews();
        RecyclerView.this.onExitLayoutOrScroll();
        resumeRequestLayout(false);
        n = k;
        i2 = m;
        i3 = j;
        i1 = i;
        if (localSmoothScroller == null) {
          break label683;
        }
        n = k;
        i2 = m;
        i3 = j;
        i1 = i;
        if (localSmoothScroller.isPendingInitialRun()) {
          break label683;
        }
        n = k;
        i2 = m;
        i3 = j;
        i1 = i;
        if (!localSmoothScroller.isRunning()) {
          break label683;
        }
        n = mState.getItemCount();
        if (n != 0) {
          break label638;
        }
        localSmoothScroller.stop();
        i1 = i;
        if (!mItemDecorations.isEmpty()) {
          invalidate();
        }
        if (ViewCompat.getOverScrollMode(RecyclerView.this) != 2) {
          RecyclerView.this.considerReleasingGlowsOnScroll(i4, i5);
        }
        if ((j != 0) || (k != 0))
        {
          n = (int)localScrollerCompat.getCurrVelocity();
          if (j == i6) {
            break label750;
          }
          if (j >= 0) {
            break label696;
          }
          i = -n;
        }
      }
      label389:
      label406:
      label534:
      label561:
      label581:
      label638:
      label683:
      label696:
      label728:
      label733:
      label738:
      label750:
      for (int i2 = i;; i2 = 0)
      {
        if (k != i7) {
          if (k < 0) {
            i = -n;
          }
        }
        for (;;)
        {
          if (ViewCompat.getOverScrollMode(RecyclerView.this) != 2) {
            absorbGlows(i2, i);
          }
          if (((i2 != 0) || (j == i6) || (localScrollerCompat.getFinalX() == 0)) && ((i != 0) || (k == i7) || (localScrollerCompat.getFinalY() == 0))) {
            localScrollerCompat.abortAnimation();
          }
          if ((i1 != 0) || (m != 0)) {
            dispatchOnScrolled(i1, m);
          }
          if (!awakenScrollBars()) {
            invalidate();
          }
          if ((i5 != 0) && (mLayout.canScrollVertically()) && (m == i5))
          {
            i = 1;
            if ((i4 == 0) || (!mLayout.canScrollHorizontally()) || (i1 != i4)) {
              break label728;
            }
            j = 1;
            if (((i4 != 0) || (i5 != 0)) && (j == 0) && (i == 0)) {
              break label733;
            }
            i = 1;
            if ((!localScrollerCompat.isFinished()) && (i != 0)) {
              break label738;
            }
            RecyclerView.this.setScrollState(0);
          }
          for (;;)
          {
            if (localSmoothScroller != null)
            {
              if (localSmoothScroller.isPendingInitialRun()) {
                localSmoothScroller.onAnimation(0, 0);
              }
              if (!mReSchedulePostAnimationCallback) {
                localSmoothScroller.stop();
              }
            }
            enableRunOnAnimationRequests();
            return;
            if (localSmoothScroller.getTargetPosition() >= n) {
              localSmoothScroller.setTargetPosition(n - 1);
            }
            localSmoothScroller.onAnimation(i4 - j, i5 - k);
            i1 = i;
            i3 = j;
            i2 = m;
            n = k;
            m = i2;
            j = i3;
            k = n;
            break;
            if (j > 0)
            {
              i = n;
              break label389;
            }
            i = 0;
            break label389;
            i = n;
            if (k > 0) {
              break label406;
            }
            i = 0;
            break label406;
            i = 0;
            break label534;
            j = 0;
            break label561;
            i = 0;
            break label581;
            postOnAnimation();
          }
          i = 0;
        }
      }
    }
    
    public void smoothScrollBy(int paramInt1, int paramInt2)
    {
      smoothScrollBy(paramInt1, paramInt2, 0, 0);
    }
    
    public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3)
    {
      smoothScrollBy(paramInt1, paramInt2, paramInt3, RecyclerView.sQuinticInterpolator);
    }
    
    public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      smoothScrollBy(paramInt1, paramInt2, computeScrollDuration(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    
    public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (mInterpolator != paramInterpolator)
      {
        mInterpolator = paramInterpolator;
        mScroller = ScrollerCompat.create(getContext(), paramInterpolator);
      }
      RecyclerView.this.setScrollState(2);
      mLastFlingY = 0;
      mLastFlingX = 0;
      mScroller.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
      postOnAnimation();
    }
    
    public void stop()
    {
      removeCallbacks(this);
      mScroller.abortAnimation();
    }
  }
  
  public static abstract class ViewHolder
  {
    static final int FLAG_ADAPTER_FULLUPDATE = 1024;
    static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
    static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
    static final int FLAG_BOUND = 1;
    static final int FLAG_IGNORE = 128;
    static final int FLAG_INVALID = 4;
    static final int FLAG_MOVED = 2048;
    static final int FLAG_NOT_RECYCLABLE = 16;
    static final int FLAG_REMOVED = 8;
    static final int FLAG_RETURNED_FROM_SCRAP = 32;
    static final int FLAG_TMP_DETACHED = 256;
    static final int FLAG_UPDATE = 2;
    private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
    public final View itemView;
    private int mFlags;
    private boolean mInChangeScrap = false;
    private int mIsRecyclableCount = 0;
    long mItemId = -1L;
    int mItemViewType = -1;
    int mOldPosition = -1;
    RecyclerView mOwnerRecyclerView;
    List<Object> mPayloads = null;
    int mPosition = -1;
    int mPreLayoutPosition = -1;
    private RecyclerView.Recycler mScrapContainer = null;
    ViewHolder mShadowedHolder = null;
    ViewHolder mShadowingHolder = null;
    List<Object> mUnmodifiedPayloads = null;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    
    public ViewHolder(View paramView)
    {
      if (paramView == null) {
        throw new IllegalArgumentException("itemView may not be null");
      }
      itemView = paramView;
    }
    
    private void createPayloadsIfNeeded()
    {
      if (mPayloads == null)
      {
        mPayloads = new ArrayList();
        mUnmodifiedPayloads = Collections.unmodifiableList(mPayloads);
      }
    }
    
    private boolean doesTransientStatePreventRecycling()
    {
      return ((mFlags & 0x10) == 0) && (ViewCompat.hasTransientState(itemView));
    }
    
    private void onEnteredHiddenState()
    {
      mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(itemView);
      ViewCompat.setImportantForAccessibility(itemView, 4);
    }
    
    private void onLeftHiddenState()
    {
      ViewCompat.setImportantForAccessibility(itemView, mWasImportantForAccessibilityBeforeHidden);
      mWasImportantForAccessibilityBeforeHidden = 0;
    }
    
    private boolean shouldBeKeptAsChild()
    {
      return (mFlags & 0x10) != 0;
    }
    
    void addChangePayload(Object paramObject)
    {
      if (paramObject == null) {
        addFlags(1024);
      }
      while ((mFlags & 0x400) != 0) {
        return;
      }
      createPayloadsIfNeeded();
      mPayloads.add(paramObject);
    }
    
    void addFlags(int paramInt)
    {
      mFlags |= paramInt;
    }
    
    void clearOldPosition()
    {
      mOldPosition = -1;
      mPreLayoutPosition = -1;
    }
    
    void clearPayload()
    {
      if (mPayloads != null) {
        mPayloads.clear();
      }
      mFlags &= 0xFBFF;
    }
    
    void clearReturnedFromScrapFlag()
    {
      mFlags &= 0xFFFFFFDF;
    }
    
    void clearTmpDetachFlag()
    {
      mFlags &= 0xFEFF;
    }
    
    void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      addFlags(8);
      offsetPosition(paramInt2, paramBoolean);
      mPosition = paramInt1;
    }
    
    public final int getAdapterPosition()
    {
      if (mOwnerRecyclerView == null) {
        return -1;
      }
      return mOwnerRecyclerView.getAdapterPositionFor(this);
    }
    
    public final long getItemId()
    {
      return mItemId;
    }
    
    public final int getItemViewType()
    {
      return mItemViewType;
    }
    
    public final int getLayoutPosition()
    {
      if (mPreLayoutPosition == -1) {
        return mPosition;
      }
      return mPreLayoutPosition;
    }
    
    public final int getOldPosition()
    {
      return mOldPosition;
    }
    
    @Deprecated
    public final int getPosition()
    {
      if (mPreLayoutPosition == -1) {
        return mPosition;
      }
      return mPreLayoutPosition;
    }
    
    List<Object> getUnmodifiedPayloads()
    {
      if ((mFlags & 0x400) == 0)
      {
        if ((mPayloads == null) || (mPayloads.size() == 0)) {
          return FULLUPDATE_PAYLOADS;
        }
        return mUnmodifiedPayloads;
      }
      return FULLUPDATE_PAYLOADS;
    }
    
    boolean hasAnyOfTheFlags(int paramInt)
    {
      return (mFlags & paramInt) != 0;
    }
    
    boolean isAdapterPositionUnknown()
    {
      return ((mFlags & 0x200) != 0) || (isInvalid());
    }
    
    boolean isBound()
    {
      return (mFlags & 0x1) != 0;
    }
    
    boolean isInvalid()
    {
      return (mFlags & 0x4) != 0;
    }
    
    public final boolean isRecyclable()
    {
      return ((mFlags & 0x10) == 0) && (!ViewCompat.hasTransientState(itemView));
    }
    
    boolean isRemoved()
    {
      return (mFlags & 0x8) != 0;
    }
    
    boolean isScrap()
    {
      return mScrapContainer != null;
    }
    
    boolean isTmpDetached()
    {
      return (mFlags & 0x100) != 0;
    }
    
    boolean isUpdated()
    {
      return (mFlags & 0x2) != 0;
    }
    
    boolean needsUpdate()
    {
      return (mFlags & 0x2) != 0;
    }
    
    void offsetPosition(int paramInt, boolean paramBoolean)
    {
      if (mOldPosition == -1) {
        mOldPosition = mPosition;
      }
      if (mPreLayoutPosition == -1) {
        mPreLayoutPosition = mPosition;
      }
      if (paramBoolean) {
        mPreLayoutPosition += paramInt;
      }
      mPosition += paramInt;
      if (itemView.getLayoutParams() != null) {
        itemView.getLayoutParams()).mInsetsDirty = true;
      }
    }
    
    void resetInternal()
    {
      mFlags = 0;
      mPosition = -1;
      mOldPosition = -1;
      mItemId = -1L;
      mPreLayoutPosition = -1;
      mIsRecyclableCount = 0;
      mShadowedHolder = null;
      mShadowingHolder = null;
      clearPayload();
      mWasImportantForAccessibilityBeforeHidden = 0;
    }
    
    void saveOldPosition()
    {
      if (mOldPosition == -1) {
        mOldPosition = mPosition;
      }
    }
    
    void setFlags(int paramInt1, int paramInt2)
    {
      mFlags = (mFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
    }
    
    public final void setIsRecyclable(boolean paramBoolean)
    {
      int i;
      if (paramBoolean)
      {
        i = mIsRecyclableCount - 1;
        mIsRecyclableCount = i;
        if (mIsRecyclableCount >= 0) {
          break label61;
        }
        mIsRecyclableCount = 0;
        Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      }
      label61:
      do
      {
        return;
        i = mIsRecyclableCount + 1;
        break;
        if ((!paramBoolean) && (mIsRecyclableCount == 1))
        {
          mFlags |= 0x10;
          return;
        }
      } while ((!paramBoolean) || (mIsRecyclableCount != 0));
      mFlags &= 0xFFFFFFEF;
    }
    
    void setScrapContainer(RecyclerView.Recycler paramRecycler, boolean paramBoolean)
    {
      mScrapContainer = paramRecycler;
      mInChangeScrap = paramBoolean;
    }
    
    boolean shouldIgnore()
    {
      return (mFlags & 0x80) != 0;
    }
    
    void stopIgnoring()
    {
      mFlags &= 0xFF7F;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + mPosition + " id=" + mItemId + ", oldPos=" + mOldPosition + ", pLpos:" + mPreLayoutPosition);
      StringBuilder localStringBuilder2;
      if (isScrap())
      {
        localStringBuilder2 = localStringBuilder1.append(" scrap ");
        if (!mInChangeScrap) {
          break label289;
        }
      }
      label289:
      for (String str = "[changeScrap]";; str = "[attachedScrap]")
      {
        localStringBuilder2.append(str);
        if (isInvalid()) {
          localStringBuilder1.append(" invalid");
        }
        if (!isBound()) {
          localStringBuilder1.append(" unbound");
        }
        if (needsUpdate()) {
          localStringBuilder1.append(" update");
        }
        if (isRemoved()) {
          localStringBuilder1.append(" removed");
        }
        if (shouldIgnore()) {
          localStringBuilder1.append(" ignored");
        }
        if (isTmpDetached()) {
          localStringBuilder1.append(" tmpDetached");
        }
        if (!isRecyclable()) {
          localStringBuilder1.append(" not recyclable(" + mIsRecyclableCount + ")");
        }
        if (isAdapterPositionUnknown()) {
          localStringBuilder1.append(" undefined adapter position");
        }
        if (itemView.getParent() == null) {
          localStringBuilder1.append(" no parent");
        }
        localStringBuilder1.append("}");
        return localStringBuilder1.toString();
      }
    }
    
    void unScrap()
    {
      mScrapContainer.unscrapView(this);
    }
    
    boolean wasReturnedFromScrap()
    {
      return (mFlags & 0x20) != 0;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */