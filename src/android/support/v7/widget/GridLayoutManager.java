package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  private static final boolean DEBUG = false;
  public static final int DEFAULT_SPAN_COUNT = -1;
  static final int MAIN_DIR_SPEC = View.MeasureSpec.makeMeasureSpec(0, 0);
  private static final String TAG = "GridLayoutManager";
  int[] mCachedBorders;
  final Rect mDecorInsets = new Rect();
  boolean mPendingSpanCountChange = false;
  final SparseIntArray mPreLayoutSpanIndexCache = new SparseIntArray();
  final SparseIntArray mPreLayoutSpanSizeCache = new SparseIntArray();
  View[] mSet;
  int mSpanCount = -1;
  SpanSizeLookup mSpanSizeLookup = new DefaultSpanSizeLookup();
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    setSpanCount(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    setSpanCount(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setSpanCount(getPropertiesspanCount);
  }
  
  private void assignSpans(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    int j;
    int k;
    label47:
    LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 1;
      paramInt2 = 0;
      j = paramInt1;
      paramInt1 = paramInt2;
      if ((mOrientation != 1) || (!isLayoutRTL())) {
        break label154;
      }
      paramInt2 = mSpanCount;
      k = -1;
      paramInt2 -= 1;
      if (paramInt1 == j) {
        return;
      }
      View localView = mSet[paramInt1];
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      LayoutParams.access$102(localLayoutParams, getSpanSize(paramRecycler, paramState, getPosition(localView)));
      if ((k != -1) || (mSpanSize <= 1)) {
        break label163;
      }
      LayoutParams.access$002(localLayoutParams, paramInt2 - (mSpanSize - 1));
    }
    for (;;)
    {
      paramInt2 += mSpanSize * k;
      paramInt1 += i;
      break label47;
      paramInt1 -= 1;
      i = -1;
      j = -1;
      break;
      label154:
      k = 1;
      paramInt2 = 0;
      break label47;
      label163:
      LayoutParams.access$002(localLayoutParams, paramInt2);
    }
  }
  
  private void cachePreLayoutSpanMapping()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      LayoutParams localLayoutParams = (LayoutParams)getChildAt(i).getLayoutParams();
      int k = localLayoutParams.getViewLayoutPosition();
      mPreLayoutSpanSizeCache.put(k, localLayoutParams.getSpanSize());
      mPreLayoutSpanIndexCache.put(k, localLayoutParams.getSpanIndex());
      i += 1;
    }
  }
  
  private void calculateItemBorders(int paramInt)
  {
    int j = 0;
    if ((mCachedBorders == null) || (mCachedBorders.length != mSpanCount + 1) || (mCachedBorders[(mCachedBorders.length - 1)] != paramInt)) {
      mCachedBorders = new int[mSpanCount + 1];
    }
    mCachedBorders[0] = 0;
    int m = paramInt / mSpanCount;
    int n = paramInt % mSpanCount;
    int k = 1;
    int i = 0;
    paramInt = j;
    j = k;
    if (j <= mSpanCount)
    {
      paramInt += n;
      if ((paramInt <= 0) || (mSpanCount - paramInt >= n)) {
        break label145;
      }
      paramInt -= mSpanCount;
    }
    label145:
    for (k = m + 1;; k = m)
    {
      i += k;
      mCachedBorders[j] = i;
      j += 1;
      break;
      return;
    }
  }
  
  private void clearPreLayoutSpanMappingCache()
  {
    mPreLayoutSpanSizeCache.clear();
    mPreLayoutSpanIndexCache.clear();
  }
  
  private void ensureAnchorIsInFirstSpan(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.AnchorInfo paramAnchorInfo)
  {
    for (int i = getSpanIndex(paramRecycler, paramState, mPosition); (i > 0) && (mPosition > 0); i = getSpanIndex(paramRecycler, paramState, mPosition)) {
      mPosition -= 1;
    }
  }
  
  private void ensureViewSet()
  {
    if ((mSet == null) || (mSet.length != mSpanCount)) {
      mSet = new View[mSpanCount];
    }
  }
  
  private int getMainDirSpec(int paramInt)
  {
    if (paramInt < 0) {
      return MAIN_DIR_SPEC;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  private int getSpanGroupIndex(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      return mSpanSizeLookup.getSpanGroupIndex(paramInt, mSpanCount);
    }
    paramInt = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (paramInt == -1) {
      return 0;
    }
    return mSpanSizeLookup.getSpanGroupIndex(paramInt, mSpanCount);
  }
  
  private int getSpanIndex(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    int i;
    if (!paramState.isPreLayout()) {
      i = mSpanSizeLookup.getCachedSpanIndex(paramInt, mSpanCount);
    }
    int j;
    do
    {
      return i;
      j = mPreLayoutSpanIndexCache.get(paramInt, -1);
      i = j;
    } while (j != -1);
    paramInt = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (paramInt == -1) {
      return 0;
    }
    return mSpanSizeLookup.getCachedSpanIndex(paramInt, mSpanCount);
  }
  
  private int getSpanSize(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    int i;
    if (!paramState.isPreLayout()) {
      i = mSpanSizeLookup.getSpanSize(paramInt);
    }
    int j;
    do
    {
      return i;
      j = mPreLayoutSpanSizeCache.get(paramInt, -1);
      i = j;
    } while (j != -1);
    paramInt = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (paramInt == -1) {
      return 1;
    }
    return mSpanSizeLookup.getSpanSize(paramInt);
  }
  
  private void measureChildWithDecorationsAndMargin(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    calculateItemDecorationsForChild(paramView, mDecorInsets);
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int i;
    if (!paramBoolean)
    {
      i = paramInt1;
      if (mOrientation != 1) {}
    }
    else
    {
      i = updateSpecWithExtra(paramInt1, leftMargin + mDecorInsets.left, rightMargin + mDecorInsets.right);
    }
    if (!paramBoolean)
    {
      paramInt1 = paramInt2;
      if (mOrientation != 0) {}
    }
    else
    {
      paramInt1 = updateSpecWithExtra(paramInt2, topMargin + mDecorInsets.top, bottomMargin + mDecorInsets.bottom);
    }
    paramView.measure(i, paramInt1);
  }
  
  private void updateMeasurements()
  {
    if (getOrientation() == 1) {}
    for (int i = getWidth() - getPaddingRight() - getPaddingLeft();; i = getHeight() - getPaddingBottom() - getPaddingTop())
    {
      calculateItemBorders(i);
      return;
    }
  }
  
  private int updateSpecWithExtra(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i;
    do
    {
      return paramInt1;
      i = View.MeasureSpec.getMode(paramInt1);
    } while ((i != Integer.MIN_VALUE) && (i != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i);
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  View findReferenceChild(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    ensureLayoutState();
    int j = mOrientationHelper.getStartAfterPadding();
    int k = mOrientationHelper.getEndAfterPadding();
    int i;
    Object localObject2;
    label37:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label162;
      }
      localView = getChildAt(paramInt1);
      int m = getPosition(localView);
      if ((m < 0) || (m >= paramInt3) || (getSpanIndex(paramRecycler, paramState, m) != 0)) {
        break label177;
      }
      if (!((RecyclerView.LayoutParams)localView.getLayoutParams()).isItemRemoved()) {
        break label118;
      }
      if (localObject2 != null) {
        break label177;
      }
      localObject2 = localView;
    }
    label118:
    label162:
    label174:
    label177:
    for (;;)
    {
      paramInt1 += i;
      break label37;
      i = -1;
      break;
      Object localObject3;
      if (mOrientationHelper.getDecoratedStart(localView) < k)
      {
        localObject3 = localView;
        if (mOrientationHelper.getDecoratedEnd(localView) >= j) {}
      }
      else
      {
        if (localObject1 != null) {
          break label177;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label174;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 1) {
      return mSpanCount;
    }
    if (paramState.getItemCount() <= 0) {
      return 0;
    }
    return getSpanGroupIndex(paramRecycler, paramState, paramState.getItemCount() - 1);
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 0) {
      return mSpanCount;
    }
    if (paramState.getItemCount() <= 0) {
      return 0;
    }
    return getSpanGroupIndex(paramRecycler, paramState, paramState.getItemCount() - 1);
  }
  
  public int getSpanCount()
  {
    return mSpanCount;
  }
  
  public SpanSizeLookup getSpanSizeLookup()
  {
    return mSpanSizeLookup;
  }
  
  void layoutChunk(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.LayoutState paramLayoutState, LinearLayoutManager.LayoutChunkResult paramLayoutChunkResult)
  {
    boolean bool;
    int k;
    int m;
    int n;
    if (mItemDirection == 1)
    {
      bool = true;
      k = 0;
      m = 0;
      i = mSpanCount;
      n = k;
      j = m;
      if (!bool)
      {
        i = getSpanIndex(paramRecycler, paramState, mCurrentPosition) + getSpanSize(paramRecycler, paramState, mCurrentPosition);
        j = m;
        n = k;
      }
    }
    for (;;)
    {
      if ((n >= mSpanCount) || (!paramLayoutState.hasMore(paramState)) || (i <= 0)) {
        break label225;
      }
      m = mCurrentPosition;
      k = getSpanSize(paramRecycler, paramState, m);
      if (k > mSpanCount)
      {
        throw new IllegalArgumentException("Item at position " + m + " requires " + k + " spans but GridLayoutManager has only " + mSpanCount + " spans.");
        bool = false;
        break;
      }
      i -= k;
      if (i < 0) {
        break label225;
      }
      View localView = paramLayoutState.next(paramRecycler);
      if (localView == null) {
        break label225;
      }
      j += k;
      mSet[n] = localView;
      n += 1;
    }
    label225:
    if (n == 0)
    {
      mFinished = true;
      return;
    }
    assignSpans(paramRecycler, paramState, n, j, bool);
    int j = 0;
    int i = 0;
    if (j < n)
    {
      paramRecycler = mSet[j];
      if (mScrapList == null) {
        if (bool)
        {
          addView(paramRecycler);
          label287:
          paramState = (LayoutParams)paramRecycler.getLayoutParams();
          k = View.MeasureSpec.makeMeasureSpec(mCachedBorders[(mSpanIndex + mSpanSize)] - mCachedBorders[mSpanIndex], 1073741824);
          if (mOrientation != 1) {
            break label411;
          }
          measureChildWithDecorationsAndMargin(paramRecycler, k, getMainDirSpec(height), false);
          label350:
          k = mOrientationHelper.getDecoratedMeasurement(paramRecycler);
          if (k <= i) {
            break label894;
          }
          i = k;
        }
      }
    }
    label411:
    label535:
    label633:
    label849:
    label885:
    label894:
    for (;;)
    {
      j += 1;
      break;
      addView(paramRecycler, 0);
      break label287;
      if (bool)
      {
        addDisappearingView(paramRecycler);
        break label287;
      }
      addDisappearingView(paramRecycler, 0);
      break label287;
      measureChildWithDecorationsAndMargin(paramRecycler, getMainDirSpec(width), k, false);
      break label350;
      k = getMainDirSpec(i);
      j = 0;
      if (j < n)
      {
        paramRecycler = mSet[j];
        if (mOrientationHelper.getDecoratedMeasurement(paramRecycler) != i)
        {
          paramState = (LayoutParams)paramRecycler.getLayoutParams();
          m = View.MeasureSpec.makeMeasureSpec(mCachedBorders[(mSpanIndex + mSpanSize)] - mCachedBorders[mSpanIndex], 1073741824);
          if (mOrientation != 1) {
            break label535;
          }
          measureChildWithDecorationsAndMargin(paramRecycler, m, k, true);
        }
        for (;;)
        {
          j += 1;
          break;
          measureChildWithDecorationsAndMargin(paramRecycler, k, m, true);
        }
      }
      mConsumed = i;
      int i1 = 0;
      if (mOrientation == 1) {
        if (mLayoutDirection == -1)
        {
          j = mOffset;
          k = 0;
          m = j;
          j -= i;
          i = m;
          m = i1;
          int i4 = 0;
          i1 = k;
          int i2 = i;
          int i3 = m;
          k = i4;
          i = i1;
          m = i2;
          i1 = i3;
          if (k >= n) {
            break label885;
          }
          paramRecycler = mSet[k];
          paramState = (LayoutParams)paramRecycler.getLayoutParams();
          if (mOrientation != 1) {
            break label849;
          }
          i1 = getPaddingLeft() + mCachedBorders[mSpanIndex];
          i = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler);
          i += i1;
        }
      }
      for (;;)
      {
        layoutDecorated(paramRecycler, i1 + leftMargin, j + topMargin, i - rightMargin, m - bottomMargin);
        if ((paramState.isItemRemoved()) || (paramState.isItemChanged())) {
          mIgnoreConsumed = true;
        }
        mFocusable |= paramRecycler.isFocusable();
        k += 1;
        break label633;
        j = mOffset;
        i += j;
        k = 0;
        m = i1;
        break;
        if (mLayoutDirection == -1)
        {
          k = mOffset;
          m = k - i;
          i = 0;
          j = 0;
          break;
        }
        m = mOffset;
        j = 0;
        k = i + m;
        i = 0;
        break;
        j = getPaddingTop();
        j = mCachedBorders[mSpanIndex] + j;
        m = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler) + j;
      }
      Arrays.fill(mSet, null);
      return;
    }
  }
  
  void onAnchorReady(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.AnchorInfo paramAnchorInfo)
  {
    super.onAnchorReady(paramRecycler, paramState, paramAnchorInfo);
    updateMeasurements();
    if ((paramState.getItemCount() > 0) && (!paramState.isPreLayout())) {
      ensureAnchorIsInFirstSpan(paramRecycler, paramState, paramAnchorInfo);
    }
    ensureViewSet();
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof LayoutParams))
    {
      super.onInitializeAccessibilityNodeInfoForItem(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramView = (LayoutParams)localLayoutParams;
    int i = getSpanGroupIndex(paramRecycler, paramState, paramView.getViewLayoutPosition());
    if (mOrientation == 0)
    {
      j = paramView.getSpanIndex();
      k = paramView.getSpanSize();
      if ((mSpanCount > 1) && (paramView.getSpanSize() == mSpanCount)) {}
      for (bool = true;; bool = false)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, k, i, 1, bool, false));
        return;
      }
    }
    int j = paramView.getSpanIndex();
    int k = paramView.getSpanSize();
    if ((mSpanCount > 1) && (paramView.getSpanSize() == mSpanCount)) {}
    for (boolean bool = true;; bool = false)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, k, bool, false));
      return;
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (paramState.isPreLayout()) {
      cachePreLayoutSpanMapping();
    }
    super.onLayoutChildren(paramRecycler, paramState);
    clearPreLayoutSpanMappingCache();
    if (!paramState.isPreLayout()) {
      mPendingSpanCountChange = false;
    }
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    updateMeasurements();
    ensureViewSet();
    return super.scrollHorizontallyBy(paramInt, paramRecycler, paramState);
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    updateMeasurements();
    ensureViewSet();
    return super.scrollVerticallyBy(paramInt, paramRecycler, paramState);
  }
  
  public void setSpanCount(int paramInt)
  {
    if (paramInt == mSpanCount) {
      return;
    }
    mPendingSpanCountChange = true;
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    }
    mSpanCount = paramInt;
    mSpanSizeLookup.invalidateSpanIndexCache();
  }
  
  public void setSpanSizeLookup(SpanSizeLookup paramSpanSizeLookup)
  {
    mSpanSizeLookup = paramSpanSizeLookup;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }
    super.setStackFromEnd(false);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return (mPendingSavedState == null) && (!mPendingSpanCountChange);
  }
  
  public static final class DefaultSpanSizeLookup
    extends GridLayoutManager.SpanSizeLookup
  {
    public final int getSpanIndex(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
    
    public final int getSpanSize(int paramInt)
    {
      return 1;
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    public static final int INVALID_SPAN_ID = -1;
    private int mSpanIndex = -1;
    private int mSpanSize = 0;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(RecyclerView.LayoutParams paramLayoutParams)
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
    
    public int getSpanIndex()
    {
      return mSpanIndex;
    }
    
    public int getSpanSize()
    {
      return mSpanSize;
    }
  }
  
  public static abstract class SpanSizeLookup
  {
    private boolean mCacheSpanIndices = false;
    final SparseIntArray mSpanIndexCache = new SparseIntArray();
    
    int findReferenceIndexFromCache(int paramInt)
    {
      int i = 0;
      int j = mSpanIndexCache.size() - 1;
      while (i <= j)
      {
        int k = i + j >>> 1;
        if (mSpanIndexCache.keyAt(k) < paramInt) {
          i = k + 1;
        } else {
          j = k - 1;
        }
      }
      paramInt = i - 1;
      if ((paramInt >= 0) && (paramInt < mSpanIndexCache.size())) {
        return mSpanIndexCache.keyAt(paramInt);
      }
      return -1;
    }
    
    int getCachedSpanIndex(int paramInt1, int paramInt2)
    {
      int i;
      if (!mCacheSpanIndices) {
        i = getSpanIndex(paramInt1, paramInt2);
      }
      int j;
      do
      {
        return i;
        j = mSpanIndexCache.get(paramInt1, -1);
        i = j;
      } while (j != -1);
      paramInt2 = getSpanIndex(paramInt1, paramInt2);
      mSpanIndexCache.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    public int getSpanGroupIndex(int paramInt1, int paramInt2)
    {
      int n = getSpanSize(paramInt1);
      int k = 0;
      int i = 0;
      int j = 0;
      int m;
      if (k < paramInt1)
      {
        m = getSpanSize(k);
        j += m;
        if (j == paramInt2)
        {
          j = i + 1;
          i = 0;
        }
      }
      for (;;)
      {
        m = k + 1;
        k = i;
        i = j;
        j = k;
        k = m;
        break;
        if (j > paramInt2)
        {
          j = i + 1;
          i = m;
          continue;
          paramInt1 = i;
          if (j + n > paramInt2) {
            paramInt1 = i + 1;
          }
          return paramInt1;
        }
        else
        {
          m = j;
          j = i;
          i = m;
        }
      }
    }
    
    public int getSpanIndex(int paramInt1, int paramInt2)
    {
      int n = getSpanSize(paramInt1);
      if (n == paramInt2) {
        return 0;
      }
      int j;
      int i;
      if ((mCacheSpanIndices) && (mSpanIndexCache.size() > 0))
      {
        j = findReferenceIndexFromCache(paramInt1);
        if (j >= 0)
        {
          i = mSpanIndexCache.get(j) + getSpanSize(j);
          j += 1;
        }
      }
      for (;;)
      {
        if (j < paramInt1)
        {
          int k = getSpanSize(j);
          int m = i + k;
          if (m == paramInt2) {
            i = 0;
          }
          for (;;)
          {
            j += 1;
            break;
            i = k;
            if (m <= paramInt2) {
              i = m;
            }
          }
        }
        if (i + n > paramInt2) {
          break;
        }
        return i;
        j = 0;
        i = 0;
      }
    }
    
    public abstract int getSpanSize(int paramInt);
    
    public void invalidateSpanIndexCache()
    {
      mSpanIndexCache.clear();
    }
    
    public boolean isSpanIndexCacheEnabled()
    {
      return mCacheSpanIndices;
    }
    
    public void setSpanIndexCacheEnabled(boolean paramBoolean)
    {
      mCacheSpanIndices = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */