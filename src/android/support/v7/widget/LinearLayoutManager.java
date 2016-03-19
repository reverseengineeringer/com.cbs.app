package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.helper.ItemTouchHelper.ViewDropHandler;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.LayoutManager
  implements ItemTouchHelper.ViewDropHandler
{
  private static final boolean DEBUG = false;
  public static final int HORIZONTAL = 0;
  public static final int INVALID_OFFSET = Integer.MIN_VALUE;
  private static final float MAX_SCROLL_FACTOR = 0.33F;
  private static final String TAG = "LinearLayoutManager";
  public static final int VERTICAL = 1;
  final AnchorInfo mAnchorInfo = new AnchorInfo();
  private boolean mLastStackFromEnd;
  private LayoutState mLayoutState;
  int mOrientation;
  OrientationHelper mOrientationHelper;
  SavedState mPendingSavedState = null;
  int mPendingScrollPosition = -1;
  int mPendingScrollPositionOffset = Integer.MIN_VALUE;
  private boolean mRecycleChildrenOnDetach;
  private boolean mReverseLayout = false;
  boolean mShouldReverseLayout = false;
  private boolean mSmoothScrollbarEnabled = true;
  private boolean mStackFromEnd = false;
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setOrientation(paramInt);
    setReverseLayout(paramBoolean);
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(orientation);
    setReverseLayout(reverseLayout);
    setStackFromEnd(stackFromEnd);
  }
  
  private int computeScrollExtent(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    OrientationHelper localOrientationHelper = mOrientationHelper;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleChildClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollExtent(paramState, localOrientationHelper, localView, findFirstVisibleChildClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled);
    }
  }
  
  private int computeScrollOffset(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    OrientationHelper localOrientationHelper = mOrientationHelper;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleChildClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollOffset(paramState, localOrientationHelper, localView, findFirstVisibleChildClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled, mShouldReverseLayout);
    }
  }
  
  private int computeScrollRange(RecyclerView.State paramState)
  {
    boolean bool2 = false;
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    OrientationHelper localOrientationHelper = mOrientationHelper;
    if (!mSmoothScrollbarEnabled) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = findFirstVisibleChildClosestToStart(bool1, true);
      bool1 = bool2;
      if (!mSmoothScrollbarEnabled) {
        bool1 = true;
      }
      return ScrollbarHelper.computeScrollRange(paramState, localOrientationHelper, localView, findFirstVisibleChildClosestToEnd(bool1, true), this, mSmoothScrollbarEnabled);
    }
  }
  
  private int convertFocusDirectionToLayoutDirection(int paramInt)
  {
    int j = -1;
    int i = j;
    switch (paramInt)
    {
    default: 
      i = Integer.MIN_VALUE;
    case 1: 
    case 2: 
    case 33: 
    case 130: 
    case 17: 
      do
      {
        do
        {
          return i;
          return 1;
          i = j;
        } while (mOrientation == 1);
        return Integer.MIN_VALUE;
        if (mOrientation == 1) {
          return 1;
        }
        return Integer.MIN_VALUE;
        i = j;
      } while (mOrientation == 0);
      return Integer.MIN_VALUE;
    }
    if (mOrientation == 0) {
      return 1;
    }
    return Integer.MIN_VALUE;
  }
  
  private View findFirstReferenceChild(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return findReferenceChild(paramRecycler, paramState, 0, getChildCount(), paramState.getItemCount());
  }
  
  private View findFirstVisibleChildClosestToEnd(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mShouldReverseLayout) {
      return findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2);
    }
    return findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private View findFirstVisibleChildClosestToStart(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mShouldReverseLayout) {
      return findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2);
  }
  
  private View findLastReferenceChild(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return findReferenceChild(paramRecycler, paramState, getChildCount() - 1, -1, paramState.getItemCount());
  }
  
  private View findReferenceChildClosestToEnd(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mShouldReverseLayout) {
      return findFirstReferenceChild(paramRecycler, paramState);
    }
    return findLastReferenceChild(paramRecycler, paramState);
  }
  
  private View findReferenceChildClosestToStart(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mShouldReverseLayout) {
      return findLastReferenceChild(paramRecycler, paramState);
    }
    return findFirstReferenceChild(paramRecycler, paramState);
  }
  
  private int fixLayoutEndGap(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i = mOrientationHelper.getEndAfterPadding() - paramInt;
    if (i > 0)
    {
      int j = -scrollBy(-i, paramRecycler, paramState);
      i = j;
      if (paramBoolean)
      {
        paramInt = mOrientationHelper.getEndAfterPadding() - (paramInt + j);
        i = j;
        if (paramInt > 0)
        {
          mOrientationHelper.offsetChildren(paramInt);
          i = j + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private int fixLayoutStartGap(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i = paramInt - mOrientationHelper.getStartAfterPadding();
    if (i > 0)
    {
      int j = -scrollBy(i, paramRecycler, paramState);
      i = j;
      if (paramBoolean)
      {
        paramInt = paramInt + j - mOrientationHelper.getStartAfterPadding();
        i = j;
        if (paramInt > 0)
        {
          mOrientationHelper.offsetChildren(-paramInt);
          i = j - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View getChildClosestToEnd()
  {
    if (mShouldReverseLayout) {}
    for (int i = 0;; i = getChildCount() - 1) {
      return getChildAt(i);
    }
  }
  
  private View getChildClosestToStart()
  {
    if (mShouldReverseLayout) {}
    for (int i = getChildCount() - 1;; i = 0) {
      return getChildAt(i);
    }
  }
  
  private void layoutForPredictiveAnimations(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
  {
    if ((!paramState.willRunPredictiveAnimations()) || (getChildCount() == 0) || (paramState.isPreLayout()) || (!supportsPredictiveItemAnimations())) {
      return;
    }
    int i = 0;
    int j = 0;
    List localList = paramRecycler.getScrapList();
    int n = localList.size();
    int i1 = getPosition(getChildAt(0));
    int k = 0;
    RecyclerView.ViewHolder localViewHolder;
    int i2;
    label106:
    int m;
    if (k < n)
    {
      localViewHolder = (RecyclerView.ViewHolder)localList.get(k);
      if (localViewHolder.isRemoved()) {
        break label341;
      }
      if (localViewHolder.getLayoutPosition() < i1)
      {
        i2 = 1;
        if (i2 == mShouldReverseLayout) {
          break label180;
        }
        m = -1;
        label118:
        if (m != -1) {
          break label186;
        }
        m = mOrientationHelper.getDecoratedMeasurement(itemView) + i;
        i = j;
        j = m;
      }
    }
    for (;;)
    {
      m = k + 1;
      k = j;
      j = i;
      i = k;
      k = m;
      break;
      i2 = 0;
      break label106;
      label180:
      m = 1;
      break label118;
      label186:
      m = mOrientationHelper.getDecoratedMeasurement(itemView) + j;
      j = i;
      i = m;
      continue;
      mLayoutState.mScrapList = localList;
      if (i > 0)
      {
        updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), paramInt1);
        mLayoutState.mExtra = i;
        mLayoutState.mAvailable = 0;
        mLayoutState.assignPositionFromScrapList();
        fill(paramRecycler, mLayoutState, paramState, false);
      }
      if (j > 0)
      {
        updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), paramInt2);
        mLayoutState.mExtra = j;
        mLayoutState.mAvailable = 0;
        mLayoutState.assignPositionFromScrapList();
        fill(paramRecycler, mLayoutState, paramState, false);
      }
      mLayoutState.mScrapList = null;
      return;
      label341:
      m = i;
      i = j;
      j = m;
    }
  }
  
  private void logChildren()
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      new StringBuilder("item ").append(getPosition(localView)).append(", coord:").append(mOrientationHelper.getDecoratedStart(localView));
      i += 1;
    }
  }
  
  private void recycleByLayoutState(RecyclerView.Recycler paramRecycler, LayoutState paramLayoutState)
  {
    if (!mRecycle) {
      return;
    }
    if (mLayoutDirection == -1)
    {
      recycleViewsFromEnd(paramRecycler, mScrollingOffset);
      return;
    }
    recycleViewsFromStart(paramRecycler, mScrollingOffset);
  }
  
  private void recycleChildren(RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          removeAndRecycleViewAt(paramInt2, paramRecycler);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          removeAndRecycleViewAt(i, paramRecycler);
          i -= 1;
        }
      }
    }
  }
  
  private void recycleViewsFromEnd(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    int i = getChildCount();
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int j = mOrientationHelper.getEnd() - paramInt;
      View localView;
      if (mShouldReverseLayout)
      {
        paramInt = 0;
        while (paramInt < i)
        {
          localView = getChildAt(paramInt);
          if (mOrientationHelper.getDecoratedStart(localView) < j)
          {
            recycleChildren(paramRecycler, 0, paramInt);
            return;
          }
          paramInt += 1;
        }
      }
      else
      {
        paramInt = i - 1;
        while (paramInt >= 0)
        {
          localView = getChildAt(paramInt);
          if (mOrientationHelper.getDecoratedStart(localView) < j)
          {
            recycleChildren(paramRecycler, i - 1, paramInt);
            return;
          }
          paramInt -= 1;
        }
      }
    }
  }
  
  private void recycleViewsFromStart(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int j = getChildCount();
      int i;
      View localView;
      if (mShouldReverseLayout)
      {
        i = j - 1;
        while (i >= 0)
        {
          localView = getChildAt(i);
          if (mOrientationHelper.getDecoratedEnd(localView) > paramInt)
          {
            recycleChildren(paramRecycler, j - 1, i);
            return;
          }
          i -= 1;
        }
      }
      else
      {
        i = 0;
        while (i < j)
        {
          localView = getChildAt(i);
          if (mOrientationHelper.getDecoratedEnd(localView) > paramInt)
          {
            recycleChildren(paramRecycler, 0, i);
            return;
          }
          i += 1;
        }
      }
    }
  }
  
  private void resolveShouldLayoutReverse()
  {
    boolean bool = true;
    if ((mOrientation == 1) || (!isLayoutRTL())) {
      bool = mReverseLayout;
    }
    for (;;)
    {
      mShouldReverseLayout = bool;
      return;
      if (mReverseLayout) {
        bool = false;
      }
    }
  }
  
  private boolean updateAnchorFromChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AnchorInfo paramAnchorInfo)
  {
    int i = 0;
    if (getChildCount() == 0) {}
    do
    {
      return false;
      View localView = getFocusedChild();
      if ((localView != null) && (paramAnchorInfo.isViewValidAsAnchor(localView, paramState)))
      {
        paramAnchorInfo.assignFromViewAndKeepVisibleRect(localView);
        return true;
      }
    } while (mLastStackFromEnd != mStackFromEnd);
    if (mLayoutFromEnd)
    {
      paramRecycler = findReferenceChildClosestToEnd(paramRecycler, paramState);
      label66:
      if (paramRecycler == null) {
        break label165;
      }
      paramAnchorInfo.assignFromView(paramRecycler);
      if ((!paramState.isPreLayout()) && (supportsPredictiveItemAnimations()))
      {
        if ((mOrientationHelper.getDecoratedStart(paramRecycler) >= mOrientationHelper.getEndAfterPadding()) || (mOrientationHelper.getDecoratedEnd(paramRecycler) < mOrientationHelper.getStartAfterPadding())) {
          i = 1;
        }
        if (i != 0) {
          if (!mLayoutFromEnd) {
            break label167;
          }
        }
      }
    }
    label165:
    label167:
    for (i = mOrientationHelper.getEndAfterPadding();; i = mOrientationHelper.getStartAfterPadding())
    {
      mCoordinate = i;
      return true;
      paramRecycler = findReferenceChildClosestToStart(paramRecycler, paramState);
      break label66;
      break;
    }
  }
  
  private boolean updateAnchorFromPendingData(RecyclerView.State paramState, AnchorInfo paramAnchorInfo)
  {
    boolean bool = false;
    if ((paramState.isPreLayout()) || (mPendingScrollPosition == -1)) {
      return false;
    }
    if ((mPendingScrollPosition < 0) || (mPendingScrollPosition >= paramState.getItemCount()))
    {
      mPendingScrollPosition = -1;
      mPendingScrollPositionOffset = Integer.MIN_VALUE;
      return false;
    }
    mPosition = mPendingScrollPosition;
    if ((mPendingSavedState != null) && (mPendingSavedState.hasValidAnchor()))
    {
      mLayoutFromEnd = mPendingSavedState.mAnchorLayoutFromEnd;
      if (mLayoutFromEnd)
      {
        mCoordinate = (mOrientationHelper.getEndAfterPadding() - mPendingSavedState.mAnchorOffset);
        return true;
      }
      mCoordinate = (mOrientationHelper.getStartAfterPadding() + mPendingSavedState.mAnchorOffset);
      return true;
    }
    if (mPendingScrollPositionOffset == Integer.MIN_VALUE)
    {
      paramState = findViewByPosition(mPendingScrollPosition);
      int i;
      if (paramState != null)
      {
        if (mOrientationHelper.getDecoratedMeasurement(paramState) > mOrientationHelper.getTotalSpace())
        {
          paramAnchorInfo.assignCoordinateFromPadding();
          return true;
        }
        if (mOrientationHelper.getDecoratedStart(paramState) - mOrientationHelper.getStartAfterPadding() < 0)
        {
          mCoordinate = mOrientationHelper.getStartAfterPadding();
          mLayoutFromEnd = false;
          return true;
        }
        if (mOrientationHelper.getEndAfterPadding() - mOrientationHelper.getDecoratedEnd(paramState) < 0)
        {
          mCoordinate = mOrientationHelper.getEndAfterPadding();
          mLayoutFromEnd = true;
          return true;
        }
        if (mLayoutFromEnd) {}
        for (i = mOrientationHelper.getDecoratedEnd(paramState) + mOrientationHelper.getTotalSpaceChange();; i = mOrientationHelper.getDecoratedStart(paramState))
        {
          mCoordinate = i;
          return true;
        }
      }
      if (getChildCount() > 0)
      {
        i = getPosition(getChildAt(0));
        if (mPendingScrollPosition >= i) {
          break label351;
        }
      }
      label351:
      for (int j = 1;; j = 0)
      {
        if (j == mShouldReverseLayout) {
          bool = true;
        }
        mLayoutFromEnd = bool;
        paramAnchorInfo.assignCoordinateFromPadding();
        return true;
      }
    }
    mLayoutFromEnd = mShouldReverseLayout;
    if (mShouldReverseLayout)
    {
      mCoordinate = (mOrientationHelper.getEndAfterPadding() - mPendingScrollPositionOffset);
      return true;
    }
    mCoordinate = (mOrientationHelper.getStartAfterPadding() + mPendingScrollPositionOffset);
    return true;
  }
  
  private void updateAnchorInfoForLayout(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AnchorInfo paramAnchorInfo)
  {
    if (updateAnchorFromPendingData(paramState, paramAnchorInfo)) {}
    while (updateAnchorFromChildren(paramRecycler, paramState, paramAnchorInfo)) {
      return;
    }
    paramAnchorInfo.assignCoordinateFromPadding();
    if (mStackFromEnd) {}
    for (int i = paramState.getItemCount() - 1;; i = 0)
    {
      mPosition = i;
      return;
    }
  }
  
  private void updateLayoutState(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.State paramState)
  {
    int i = -1;
    int j = 1;
    mLayoutState.mExtra = getExtraLayoutSpace(paramState);
    mLayoutState.mLayoutDirection = paramInt1;
    if (paramInt1 == 1)
    {
      paramState = mLayoutState;
      mExtra += mOrientationHelper.getEndPadding();
      paramState = getChildClosestToEnd();
      localLayoutState = mLayoutState;
      if (mShouldReverseLayout) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        mItemDirection = paramInt1;
        mLayoutState.mCurrentPosition = (getPosition(paramState) + mLayoutState.mItemDirection);
        mLayoutState.mOffset = mOrientationHelper.getDecoratedEnd(paramState);
        paramInt1 = mOrientationHelper.getDecoratedEnd(paramState) - mOrientationHelper.getEndAfterPadding();
        mLayoutState.mAvailable = paramInt2;
        if (paramBoolean)
        {
          paramState = mLayoutState;
          mAvailable -= paramInt1;
        }
        mLayoutState.mScrollingOffset = paramInt1;
        return;
      }
    }
    paramState = getChildClosestToStart();
    LayoutState localLayoutState = mLayoutState;
    mExtra += mOrientationHelper.getStartAfterPadding();
    localLayoutState = mLayoutState;
    if (mShouldReverseLayout) {}
    for (paramInt1 = j;; paramInt1 = -1)
    {
      mItemDirection = paramInt1;
      mLayoutState.mCurrentPosition = (getPosition(paramState) + mLayoutState.mItemDirection);
      mLayoutState.mOffset = mOrientationHelper.getDecoratedStart(paramState);
      paramInt1 = -mOrientationHelper.getDecoratedStart(paramState) + mOrientationHelper.getStartAfterPadding();
      break;
    }
  }
  
  private void updateLayoutStateToFillEnd(int paramInt1, int paramInt2)
  {
    mLayoutState.mAvailable = (mOrientationHelper.getEndAfterPadding() - paramInt2);
    LayoutState localLayoutState = mLayoutState;
    if (mShouldReverseLayout) {}
    for (int i = -1;; i = 1)
    {
      mItemDirection = i;
      mLayoutState.mCurrentPosition = paramInt1;
      mLayoutState.mLayoutDirection = 1;
      mLayoutState.mOffset = paramInt2;
      mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void updateLayoutStateToFillEnd(AnchorInfo paramAnchorInfo)
  {
    updateLayoutStateToFillEnd(mPosition, mCoordinate);
  }
  
  private void updateLayoutStateToFillStart(int paramInt1, int paramInt2)
  {
    mLayoutState.mAvailable = (paramInt2 - mOrientationHelper.getStartAfterPadding());
    mLayoutState.mCurrentPosition = paramInt1;
    LayoutState localLayoutState = mLayoutState;
    if (mShouldReverseLayout) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      mItemDirection = paramInt1;
      mLayoutState.mLayoutDirection = -1;
      mLayoutState.mOffset = paramInt2;
      mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void updateLayoutStateToFillStart(AnchorInfo paramAnchorInfo)
  {
    updateLayoutStateToFillStart(mPosition, mCoordinate);
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (mPendingSavedState == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  public boolean canScrollHorizontally()
  {
    return mOrientation == 0;
  }
  
  public boolean canScrollVertically()
  {
    return mOrientation == 1;
  }
  
  public int computeHorizontalScrollExtent(RecyclerView.State paramState)
  {
    return computeScrollExtent(paramState);
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.State paramState)
  {
    return computeScrollOffset(paramState);
  }
  
  public int computeHorizontalScrollRange(RecyclerView.State paramState)
  {
    return computeScrollRange(paramState);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    int i = 1;
    int j = 0;
    if (getChildCount() == 0) {
      return null;
    }
    if (paramInt < getPosition(getChildAt(0))) {
      j = 1;
    }
    paramInt = i;
    if (j != mShouldReverseLayout) {
      paramInt = -1;
    }
    if (mOrientation == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
  }
  
  public int computeVerticalScrollExtent(RecyclerView.State paramState)
  {
    return computeScrollExtent(paramState);
  }
  
  public int computeVerticalScrollOffset(RecyclerView.State paramState)
  {
    return computeScrollOffset(paramState);
  }
  
  public int computeVerticalScrollRange(RecyclerView.State paramState)
  {
    return computeScrollRange(paramState);
  }
  
  LayoutState createLayoutState()
  {
    return new LayoutState();
  }
  
  void ensureLayoutState()
  {
    if (mLayoutState == null) {
      mLayoutState = createLayoutState();
    }
    if (mOrientationHelper == null) {
      mOrientationHelper = OrientationHelper.createOrientationHelper(this, mOrientation);
    }
  }
  
  int fill(RecyclerView.Recycler paramRecycler, LayoutState paramLayoutState, RecyclerView.State paramState, boolean paramBoolean)
  {
    int k = mAvailable;
    if (mScrollingOffset != Integer.MIN_VALUE)
    {
      if (mAvailable < 0) {
        mScrollingOffset += mAvailable;
      }
      recycleByLayoutState(paramRecycler, paramLayoutState);
    }
    int i = mAvailable + mExtra;
    LayoutChunkResult localLayoutChunkResult = new LayoutChunkResult();
    do
    {
      int j;
      do
      {
        if ((i <= 0) || (!paramLayoutState.hasMore(paramState))) {
          break;
        }
        localLayoutChunkResult.resetInternal();
        layoutChunk(paramRecycler, paramState, paramLayoutState, localLayoutChunkResult);
        if (mFinished) {
          break;
        }
        mOffset += mConsumed * mLayoutDirection;
        if ((mIgnoreConsumed) && (mLayoutState.mScrapList == null))
        {
          j = i;
          if (paramState.isPreLayout()) {}
        }
        else
        {
          mAvailable -= mConsumed;
          j = i - mConsumed;
        }
        if (mScrollingOffset != Integer.MIN_VALUE)
        {
          mScrollingOffset += mConsumed;
          if (mAvailable < 0) {
            mScrollingOffset += mAvailable;
          }
          recycleByLayoutState(paramRecycler, paramLayoutState);
        }
        i = j;
      } while (!paramBoolean);
      i = j;
    } while (!mFocusable);
    return k - mAvailable;
  }
  
  public int findFirstCompletelyVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), true, false);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findFirstVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), false, true);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findLastCompletelyVisibleItemPosition()
  {
    View localView = findOneVisibleChild(getChildCount() - 1, -1, true, false);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findLastVisibleItemPosition()
  {
    View localView = findOneVisibleChild(getChildCount() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  View findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    ensureLayoutState();
    int j = mOrientationHelper.getStartAfterPadding();
    int k = mOrientationHelper.getEndAfterPadding();
    if (paramInt2 > paramInt1) {}
    Object localObject;
    View localView;
    for (int i = 1;; i = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2) {
        break label130;
      }
      localView = getChildAt(paramInt1);
      int m = mOrientationHelper.getDecoratedStart(localView);
      int n = mOrientationHelper.getDecoratedEnd(localView);
      if ((m >= k) || (n <= j)) {
        break label133;
      }
      if ((paramBoolean1) && ((m < j) || (n > k))) {
        break;
      }
      return localView;
    }
    if ((paramBoolean2) && (localObject == null)) {
      localObject = localView;
    }
    label130:
    label133:
    for (;;)
    {
      paramInt1 += i;
      break;
      return (View)localObject;
    }
  }
  
  View findReferenceChild(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    paramRecycler = null;
    ensureLayoutState();
    int j = mOrientationHelper.getStartAfterPadding();
    int k = mOrientationHelper.getEndAfterPadding();
    int i;
    label35:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      paramState = null;
      if (paramInt1 == paramInt2) {
        break label145;
      }
      localView = getChildAt(paramInt1);
      int m = getPosition(localView);
      if ((m < 0) || (m >= paramInt3)) {
        break label157;
      }
      if (!((RecyclerView.LayoutParams)localView.getLayoutParams()).isItemRemoved()) {
        break label103;
      }
      if (paramState != null) {
        break label157;
      }
      paramState = localView;
    }
    label103:
    label145:
    label155:
    label157:
    for (;;)
    {
      paramInt1 += i;
      break label35;
      i = -1;
      break;
      Object localObject;
      if (mOrientationHelper.getDecoratedStart(localView) < k)
      {
        localObject = localView;
        if (mOrientationHelper.getDecoratedEnd(localView) >= j) {}
      }
      else
      {
        if (paramRecycler != null) {
          break label157;
        }
        paramRecycler = localView;
        continue;
        if (paramRecycler == null) {
          break label155;
        }
        localObject = paramRecycler;
      }
      return (View)localObject;
      return paramState;
    }
  }
  
  public View findViewByPosition(int paramInt)
  {
    int i = getChildCount();
    Object localObject;
    if (i == 0) {
      localObject = null;
    }
    View localView;
    do
    {
      return (View)localObject;
      int j = paramInt - getPosition(getChildAt(0));
      if ((j < 0) || (j >= i)) {
        break;
      }
      localView = getChildAt(j);
      localObject = localView;
    } while (getPosition(localView) == paramInt);
    return super.findViewByPosition(paramInt);
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    return new RecyclerView.LayoutParams(-2, -2);
  }
  
  protected int getExtraLayoutSpace(RecyclerView.State paramState)
  {
    if (paramState.hasTargetScrollPosition()) {
      return mOrientationHelper.getTotalSpace();
    }
    return 0;
  }
  
  public int getOrientation()
  {
    return mOrientation;
  }
  
  public boolean getRecycleChildrenOnDetach()
  {
    return mRecycleChildrenOnDetach;
  }
  
  public boolean getReverseLayout()
  {
    return mReverseLayout;
  }
  
  public boolean getStackFromEnd()
  {
    return mStackFromEnd;
  }
  
  protected boolean isLayoutRTL()
  {
    return getLayoutDirection() == 1;
  }
  
  public boolean isSmoothScrollbarEnabled()
  {
    return mSmoothScrollbarEnabled;
  }
  
  void layoutChunk(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LayoutState paramLayoutState, LayoutChunkResult paramLayoutChunkResult)
  {
    paramRecycler = paramLayoutState.next(paramRecycler);
    if (paramRecycler == null)
    {
      mFinished = true;
      return;
    }
    paramState = (RecyclerView.LayoutParams)paramRecycler.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label61:
    int i;
    int j;
    label120:
    int k;
    int m;
    if (mScrapList == null)
    {
      bool2 = mShouldReverseLayout;
      if (mLayoutDirection == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label215;
        }
        addView(paramRecycler);
        measureChildWithMargins(paramRecycler, 0, 0);
        mConsumed = mOrientationHelper.getDecoratedMeasurement(paramRecycler);
        if (mOrientation != 1) {
          break label322;
        }
        if (!isLayoutRTL()) {
          break label271;
        }
        i = getWidth() - getPaddingRight();
        j = i - mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler);
        if (mLayoutDirection != -1) {
          break label293;
        }
        k = mOffset;
        m = mOffset - mConsumed;
      }
    }
    for (;;)
    {
      layoutDecorated(paramRecycler, j + leftMargin, m + topMargin, i - rightMargin, k - bottomMargin);
      if ((paramState.isItemRemoved()) || (paramState.isItemChanged())) {
        mIgnoreConsumed = true;
      }
      mFocusable = paramRecycler.isFocusable();
      return;
      bool1 = false;
      break;
      label215:
      addView(paramRecycler, 0);
      break label61;
      bool2 = mShouldReverseLayout;
      if (mLayoutDirection == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label262;
        }
        addDisappearingView(paramRecycler);
        break;
      }
      label262:
      addDisappearingView(paramRecycler, 0);
      break label61;
      label271:
      j = getPaddingLeft();
      i = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler) + j;
      break label120;
      label293:
      m = mOffset;
      k = mOffset;
      int n = mConsumed;
      k += n;
      continue;
      label322:
      m = getPaddingTop();
      k = mOrientationHelper.getDecoratedMeasurementInOther(paramRecycler) + m;
      if (mLayoutDirection == -1)
      {
        i = mOffset;
        j = mOffset - mConsumed;
      }
      else
      {
        j = mOffset;
        i = mOffset;
        n = mConsumed;
        i += n;
      }
    }
  }
  
  void onAnchorReady(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, AnchorInfo paramAnchorInfo) {}
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramRecycler);
    if (mRecycleChildrenOnDetach)
    {
      removeAndRecycleAllViews(paramRecycler);
      paramRecycler.clear();
    }
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    resolveShouldLayoutReverse();
    if (getChildCount() == 0) {}
    label42:
    label133:
    label135:
    label141:
    for (;;)
    {
      return null;
      paramInt = convertFocusDirectionToLayoutDirection(paramInt);
      if (paramInt != Integer.MIN_VALUE)
      {
        ensureLayoutState();
        if (paramInt == -1)
        {
          paramView = findReferenceChildClosestToStart(paramRecycler, paramState);
          if (paramView == null) {
            break label133;
          }
          ensureLayoutState();
          updateLayoutState(paramInt, (int)(0.33F * mOrientationHelper.getTotalSpace()), false, paramState);
          mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
          mLayoutState.mRecycle = false;
          fill(paramRecycler, mLayoutState, paramState, true);
          if (paramInt != -1) {
            break label135;
          }
        }
        for (paramRecycler = getChildClosestToStart();; paramRecycler = getChildClosestToEnd())
        {
          if ((paramRecycler == paramView) || (!paramRecycler.isFocusable())) {
            break label141;
          }
          return paramRecycler;
          paramView = findReferenceChildClosestToEnd(paramRecycler, paramState);
          break label42;
          break;
        }
      }
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      paramAccessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
      paramAccessibilityEvent.setToIndex(findLastVisibleItemPosition());
    }
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (((mPendingSavedState != null) || (mPendingScrollPosition != -1)) && (paramState.getItemCount() == 0))
    {
      removeAndRecycleAllViews(paramRecycler);
      return;
    }
    if ((mPendingSavedState != null) && (mPendingSavedState.hasValidAnchor())) {
      mPendingScrollPosition = mPendingSavedState.mAnchorPosition;
    }
    ensureLayoutState();
    mLayoutState.mRecycle = false;
    resolveShouldLayoutReverse();
    mAnchorInfo.reset();
    mAnchorInfo.mLayoutFromEnd = (mShouldReverseLayout ^ mStackFromEnd);
    updateAnchorInfoForLayout(paramRecycler, paramState, mAnchorInfo);
    int i = getExtraLayoutSpace(paramState);
    int j;
    int k;
    int m;
    Object localObject;
    label244:
    label257:
    int n;
    if (mLayoutState.mLastScrollDelta >= 0)
    {
      j = 0;
      k = j + mOrientationHelper.getStartAfterPadding();
      m = i + mOrientationHelper.getEndPadding();
      i = m;
      j = k;
      if (paramState.isPreLayout())
      {
        i = m;
        j = k;
        if (mPendingScrollPosition != -1)
        {
          i = m;
          j = k;
          if (mPendingScrollPositionOffset != Integer.MIN_VALUE)
          {
            localObject = findViewByPosition(mPendingScrollPosition);
            i = m;
            j = k;
            if (localObject != null)
            {
              if (!mShouldReverseLayout) {
                break label613;
              }
              i = mOrientationHelper.getEndAfterPadding() - mOrientationHelper.getDecoratedEnd((View)localObject) - mPendingScrollPositionOffset;
              if (i <= 0) {
                break label645;
              }
              j = k + i;
              i = m;
            }
          }
        }
      }
      onAnchorReady(paramRecycler, paramState, mAnchorInfo);
      detachAndScrapAttachedViews(paramRecycler);
      mLayoutState.mIsPreLayout = paramState.isPreLayout();
      if (!mAnchorInfo.mLayoutFromEnd) {
        break label657;
      }
      updateLayoutStateToFillStart(mAnchorInfo);
      mLayoutState.mExtra = j;
      fill(paramRecycler, mLayoutState, paramState, false);
      m = mLayoutState.mOffset;
      n = mLayoutState.mCurrentPosition;
      j = i;
      if (mLayoutState.mAvailable > 0) {
        j = i + mLayoutState.mAvailable;
      }
      updateLayoutStateToFillEnd(mAnchorInfo);
      mLayoutState.mExtra = j;
      localObject = mLayoutState;
      mCurrentPosition += mLayoutState.mItemDirection;
      fill(paramRecycler, mLayoutState, paramState, false);
      k = mLayoutState.mOffset;
      if (mLayoutState.mAvailable <= 0) {
        break label901;
      }
      i = mLayoutState.mAvailable;
      updateLayoutStateToFillStart(n, m);
      mLayoutState.mExtra = i;
      fill(paramRecycler, mLayoutState, paramState, false);
    }
    label486:
    label613:
    label645:
    label657:
    label856:
    label901:
    for (i = mLayoutState.mOffset;; i = m)
    {
      j = i;
      i = k;
      k = i;
      m = j;
      if (getChildCount() > 0)
      {
        if (!(mShouldReverseLayout ^ mStackFromEnd)) {
          break label856;
        }
        k = fixLayoutEndGap(i, paramRecycler, paramState, true);
        m = j + k;
        j = fixLayoutStartGap(m, paramRecycler, paramState, false);
        m += j;
      }
      for (k = i + k + j;; k = i + n)
      {
        layoutForPredictiveAnimations(paramRecycler, paramState, m, k);
        if (!paramState.isPreLayout())
        {
          mPendingScrollPosition = -1;
          mPendingScrollPositionOffset = Integer.MIN_VALUE;
          mOrientationHelper.onLayoutComplete();
        }
        mLastStackFromEnd = mStackFromEnd;
        mPendingSavedState = null;
        return;
        j = i;
        i = 0;
        break;
        i = mOrientationHelper.getDecoratedStart((View)localObject);
        j = mOrientationHelper.getStartAfterPadding();
        i = mPendingScrollPositionOffset - (i - j);
        break label244;
        i = m - i;
        j = k;
        break label257;
        updateLayoutStateToFillEnd(mAnchorInfo);
        mLayoutState.mExtra = i;
        fill(paramRecycler, mLayoutState, paramState, false);
        k = mLayoutState.mOffset;
        n = mLayoutState.mCurrentPosition;
        i = j;
        if (mLayoutState.mAvailable > 0) {
          i = j + mLayoutState.mAvailable;
        }
        updateLayoutStateToFillStart(mAnchorInfo);
        mLayoutState.mExtra = i;
        localObject = mLayoutState;
        mCurrentPosition += mLayoutState.mItemDirection;
        fill(paramRecycler, mLayoutState, paramState, false);
        m = mLayoutState.mOffset;
        i = k;
        j = m;
        if (mLayoutState.mAvailable <= 0) {
          break label486;
        }
        i = mLayoutState.mAvailable;
        updateLayoutStateToFillEnd(n, k);
        mLayoutState.mExtra = i;
        fill(paramRecycler, mLayoutState, paramState, false);
        i = mLayoutState.mOffset;
        j = m;
        break label486;
        k = fixLayoutStartGap(j, paramRecycler, paramState, true);
        i += k;
        n = fixLayoutEndGap(i, paramRecycler, paramState, false);
        m = j + k + n;
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      mPendingSavedState = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (mPendingSavedState != null) {
      return new SavedState(mPendingSavedState);
    }
    SavedState localSavedState = new SavedState();
    if (getChildCount() > 0)
    {
      ensureLayoutState();
      boolean bool = mLastStackFromEnd ^ mShouldReverseLayout;
      mAnchorLayoutFromEnd = bool;
      if (bool)
      {
        localView = getChildClosestToEnd();
        mAnchorOffset = (mOrientationHelper.getEndAfterPadding() - mOrientationHelper.getDecoratedEnd(localView));
        mAnchorPosition = getPosition(localView);
        return localSavedState;
      }
      View localView = getChildClosestToStart();
      mAnchorPosition = getPosition(localView);
      mAnchorOffset = (mOrientationHelper.getDecoratedStart(localView) - mOrientationHelper.getStartAfterPadding());
      return localSavedState;
    }
    localSavedState.invalidateAnchor();
    return localSavedState;
  }
  
  public void prepareForDrop(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
    ensureLayoutState();
    resolveShouldLayoutReverse();
    paramInt1 = getPosition(paramView1);
    paramInt2 = getPosition(paramView2);
    if (paramInt1 < paramInt2) {
      paramInt1 = 1;
    }
    while (mShouldReverseLayout) {
      if (paramInt1 == 1)
      {
        scrollToPositionWithOffset(paramInt2, mOrientationHelper.getEndAfterPadding() - (mOrientationHelper.getDecoratedStart(paramView2) + mOrientationHelper.getDecoratedMeasurement(paramView1)));
        return;
        paramInt1 = -1;
      }
      else
      {
        scrollToPositionWithOffset(paramInt2, mOrientationHelper.getEndAfterPadding() - mOrientationHelper.getDecoratedEnd(paramView2));
        return;
      }
    }
    if (paramInt1 == -1)
    {
      scrollToPositionWithOffset(paramInt2, mOrientationHelper.getDecoratedStart(paramView2));
      return;
    }
    scrollToPositionWithOffset(paramInt2, mOrientationHelper.getDecoratedEnd(paramView2) - mOrientationHelper.getDecoratedMeasurement(paramView1));
  }
  
  int scrollBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if ((getChildCount() == 0) || (paramInt == 0)) {
      return 0;
    }
    mLayoutState.mRecycle = true;
    ensureLayoutState();
    if (paramInt > 0) {}
    int j;
    int k;
    for (int i = 1;; i = -1)
    {
      j = Math.abs(paramInt);
      updateLayoutState(i, j, true, paramState);
      k = mLayoutState.mScrollingOffset + fill(paramRecycler, mLayoutState, paramState, false);
      if (k >= 0) {
        break;
      }
      return 0;
    }
    if (j > k) {
      paramInt = i * k;
    }
    mOrientationHelper.offsetChildren(-paramInt);
    mLayoutState.mLastScrollDelta = paramInt;
    return paramInt;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 1) {
      return 0;
    }
    return scrollBy(paramInt, paramRecycler, paramState);
  }
  
  public void scrollToPosition(int paramInt)
  {
    mPendingScrollPosition = paramInt;
    mPendingScrollPositionOffset = Integer.MIN_VALUE;
    if (mPendingSavedState != null) {
      mPendingSavedState.invalidateAnchor();
    }
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2)
  {
    mPendingScrollPosition = paramInt1;
    mPendingScrollPositionOffset = paramInt2;
    if (mPendingSavedState != null) {
      mPendingSavedState.invalidateAnchor();
    }
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (mOrientation == 0) {
      return 0;
    }
    return scrollBy(paramInt, paramRecycler, paramState);
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    assertNotInLayoutOrScroll(null);
    if (paramInt == mOrientation) {
      return;
    }
    mOrientation = paramInt;
    mOrientationHelper = null;
    requestLayout();
  }
  
  public void setRecycleChildrenOnDetach(boolean paramBoolean)
  {
    mRecycleChildrenOnDetach = paramBoolean;
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (paramBoolean == mReverseLayout) {
      return;
    }
    mReverseLayout = paramBoolean;
    requestLayout();
  }
  
  public void setSmoothScrollbarEnabled(boolean paramBoolean)
  {
    mSmoothScrollbarEnabled = paramBoolean;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (mStackFromEnd == paramBoolean) {
      return;
    }
    mStackFromEnd = paramBoolean;
    requestLayout();
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
  {
    paramRecyclerView = new LinearSmoothScroller(paramRecyclerView.getContext())
    {
      public PointF computeScrollVectorForPosition(int paramAnonymousInt)
      {
        return LinearLayoutManager.this.computeScrollVectorForPosition(paramAnonymousInt);
      }
    };
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return (mPendingSavedState == null) && (mLastStackFromEnd == mStackFromEnd);
  }
  
  void validateChildOrder()
  {
    boolean bool2 = true;
    boolean bool1 = true;
    new StringBuilder("validating child count ").append(getChildCount());
    if (getChildCount() <= 0) {}
    for (;;)
    {
      return;
      int j = getPosition(getChildAt(0));
      int k = mOrientationHelper.getDecoratedStart(getChildAt(0));
      int i;
      Object localObject;
      int m;
      int n;
      if (mShouldReverseLayout)
      {
        i = 1;
        while (i < getChildCount())
        {
          localObject = getChildAt(i);
          m = getPosition((View)localObject);
          n = mOrientationHelper.getDecoratedStart((View)localObject);
          if (m < j)
          {
            logChildren();
            localObject = new StringBuilder("detected invalid position. loc invalid? ");
            if (n < k) {}
            for (;;)
            {
              throw new RuntimeException(bool1);
              bool1 = false;
            }
          }
          if (n > k)
          {
            logChildren();
            throw new RuntimeException("detected invalid location");
          }
          i += 1;
        }
      }
      else
      {
        i = 1;
        while (i < getChildCount())
        {
          localObject = getChildAt(i);
          m = getPosition((View)localObject);
          n = mOrientationHelper.getDecoratedStart((View)localObject);
          if (m < j)
          {
            logChildren();
            localObject = new StringBuilder("detected invalid position. loc invalid? ");
            if (n < k) {}
            for (bool1 = bool2;; bool1 = false) {
              throw new RuntimeException(bool1);
            }
          }
          if (n < k)
          {
            logChildren();
            throw new RuntimeException("detected invalid location");
          }
          i += 1;
        }
      }
    }
  }
  
  class AnchorInfo
  {
    int mCoordinate;
    boolean mLayoutFromEnd;
    int mPosition;
    
    AnchorInfo() {}
    
    private boolean isViewValidAsAnchor(View paramView, RecyclerView.State paramState)
    {
      paramView = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      return (!paramView.isItemRemoved()) && (paramView.getViewLayoutPosition() >= 0) && (paramView.getViewLayoutPosition() < paramState.getItemCount());
    }
    
    void assignCoordinateFromPadding()
    {
      if (mLayoutFromEnd) {}
      for (int i = mOrientationHelper.getEndAfterPadding();; i = mOrientationHelper.getStartAfterPadding())
      {
        mCoordinate = i;
        return;
      }
    }
    
    public void assignFromView(View paramView)
    {
      if (mLayoutFromEnd) {}
      for (mCoordinate = (mOrientationHelper.getDecoratedEnd(paramView) + mOrientationHelper.getTotalSpaceChange());; mCoordinate = mOrientationHelper.getDecoratedStart(paramView))
      {
        mPosition = getPosition(paramView);
        return;
      }
    }
    
    public void assignFromViewAndKeepVisibleRect(View paramView)
    {
      int j = mOrientationHelper.getTotalSpaceChange();
      if (j >= 0) {
        assignFromView(paramView);
      }
      int i;
      do
      {
        int k;
        do
        {
          do
          {
            do
            {
              return;
              mPosition = getPosition(paramView);
              if (!mLayoutFromEnd) {
                break;
              }
              i = mOrientationHelper.getEndAfterPadding() - j - mOrientationHelper.getDecoratedEnd(paramView);
              mCoordinate = (mOrientationHelper.getEndAfterPadding() - i);
            } while (i <= 0);
            j = mOrientationHelper.getDecoratedMeasurement(paramView);
            k = mCoordinate;
            m = mOrientationHelper.getStartAfterPadding();
            j = k - j - (m + Math.min(mOrientationHelper.getDecoratedStart(paramView) - m, 0));
          } while (j >= 0);
          k = mCoordinate;
          mCoordinate = (Math.min(i, -j) + k);
          return;
          k = mOrientationHelper.getDecoratedStart(paramView);
          i = k - mOrientationHelper.getStartAfterPadding();
          mCoordinate = k;
        } while (i <= 0);
        int m = mOrientationHelper.getDecoratedMeasurement(paramView);
        int n = mOrientationHelper.getEndAfterPadding();
        int i1 = mOrientationHelper.getDecoratedEnd(paramView);
        j = mOrientationHelper.getEndAfterPadding() - Math.min(0, n - j - i1) - (k + m);
      } while (j >= 0);
      mCoordinate -= Math.min(i, -j);
    }
    
    void reset()
    {
      mPosition = -1;
      mCoordinate = Integer.MIN_VALUE;
      mLayoutFromEnd = false;
    }
    
    public String toString()
    {
      return "AnchorInfo{mPosition=" + mPosition + ", mCoordinate=" + mCoordinate + ", mLayoutFromEnd=" + mLayoutFromEnd + '}';
    }
  }
  
  protected static class LayoutChunkResult
  {
    public int mConsumed;
    public boolean mFinished;
    public boolean mFocusable;
    public boolean mIgnoreConsumed;
    
    void resetInternal()
    {
      mConsumed = 0;
      mFinished = false;
      mIgnoreConsumed = false;
      mFocusable = false;
    }
  }
  
  static class LayoutState
  {
    static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    static final int ITEM_DIRECTION_HEAD = -1;
    static final int ITEM_DIRECTION_TAIL = 1;
    static final int LAYOUT_END = 1;
    static final int LAYOUT_START = -1;
    static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
    static final String TAG = "LinearLayoutManager#LayoutState";
    int mAvailable;
    int mCurrentPosition;
    int mExtra = 0;
    boolean mIsPreLayout = false;
    int mItemDirection;
    int mLastScrollDelta;
    int mLayoutDirection;
    int mOffset;
    boolean mRecycle = true;
    List<RecyclerView.ViewHolder> mScrapList = null;
    int mScrollingOffset;
    
    private View nextViewFromScrapList()
    {
      int j = mScrapList.size();
      int i = 0;
      while (i < j)
      {
        View localView = mScrapList.get(i)).itemView;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if ((!localLayoutParams.isItemRemoved()) && (mCurrentPosition == localLayoutParams.getViewLayoutPosition()))
        {
          assignPositionFromScrapList(localView);
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    public void assignPositionFromScrapList()
    {
      assignPositionFromScrapList(null);
    }
    
    public void assignPositionFromScrapList(View paramView)
    {
      paramView = nextViewInLimitedList(paramView);
      if (paramView == null)
      {
        mCurrentPosition = -1;
        return;
      }
      mCurrentPosition = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
    }
    
    boolean hasMore(RecyclerView.State paramState)
    {
      return (mCurrentPosition >= 0) && (mCurrentPosition < paramState.getItemCount());
    }
    
    void log()
    {
      new StringBuilder("avail:").append(mAvailable).append(", ind:").append(mCurrentPosition).append(", dir:").append(mItemDirection).append(", offset:").append(mOffset).append(", layoutDir:").append(mLayoutDirection);
    }
    
    View next(RecyclerView.Recycler paramRecycler)
    {
      if (mScrapList != null) {
        return nextViewFromScrapList();
      }
      paramRecycler = paramRecycler.getViewForPosition(mCurrentPosition);
      mCurrentPosition += mItemDirection;
      return paramRecycler;
    }
    
    public View nextViewInLimitedList(View paramView)
    {
      int m = mScrapList.size();
      Object localObject = null;
      int i = Integer.MAX_VALUE;
      int j = 0;
      if (j < m)
      {
        View localView = mScrapList.get(j)).itemView;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if ((localView == paramView) || (localLayoutParams.isItemRemoved())) {
          break label121;
        }
        int k = (localLayoutParams.getViewLayoutPosition() - mCurrentPosition) * mItemDirection;
        if ((k < 0) || (k >= i)) {
          break label121;
        }
        localObject = localView;
        if (k != 0)
        {
          localObject = localView;
          i = k;
        }
      }
      label121:
      for (;;)
      {
        j += 1;
        break;
        return (View)localObject;
      }
    }
  }
  
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public final LinearLayoutManager.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new LinearLayoutManager.SavedState(paramAnonymousParcel);
      }
      
      public final LinearLayoutManager.SavedState[] newArray(int paramAnonymousInt)
      {
        return new LinearLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    boolean mAnchorLayoutFromEnd;
    int mAnchorOffset;
    int mAnchorPosition;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      mAnchorPosition = paramParcel.readInt();
      mAnchorOffset = paramParcel.readInt();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        mAnchorLayoutFromEnd = bool;
        return;
        bool = false;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      mAnchorPosition = mAnchorPosition;
      mAnchorOffset = mAnchorOffset;
      mAnchorLayoutFromEnd = mAnchorLayoutFromEnd;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    boolean hasValidAnchor()
    {
      return mAnchorPosition >= 0;
    }
    
    void invalidateAnchor()
    {
      mAnchorPosition = -1;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(mAnchorPosition);
      paramParcel.writeInt(mAnchorOffset);
      if (mAnchorLayoutFromEnd) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */