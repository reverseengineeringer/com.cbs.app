package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class RecyclerView$Recycler
{
  private static final int DEFAULT_CACHE_SIZE = 2;
  final ArrayList<RecyclerView.ViewHolder> mAttachedScrap = new ArrayList();
  final ArrayList<RecyclerView.ViewHolder> mCachedViews = new ArrayList();
  private ArrayList<RecyclerView.ViewHolder> mChangedScrap = null;
  private RecyclerView.RecycledViewPool mRecyclerPool;
  private final List<RecyclerView.ViewHolder> mUnmodifiableAttachedScrap = Collections.unmodifiableList(mAttachedScrap);
  private RecyclerView.ViewCacheExtension mViewCacheExtension;
  private int mViewCacheMax = 2;
  
  public RecyclerView$Recycler(RecyclerView paramRecyclerView) {}
  
  private void attachAccessibilityDelegate(View paramView)
  {
    if (this$0.isAccessibilityEnabled())
    {
      if (ViewCompat.getImportantForAccessibility(paramView) == 0) {
        ViewCompat.setImportantForAccessibility(paramView, 1);
      }
      if (!ViewCompat.hasAccessibilityDelegate(paramView)) {
        ViewCompat.setAccessibilityDelegate(paramView, RecyclerView.access$4600(this$0).getItemDelegate());
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
    int i = this$0.mAdapterHelper.findPositionOffset(paramInt);
    if ((i < 0) || (i >= RecyclerView.access$2900(this$0).getItemCount())) {
      throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + i + ").state:" + this$0.mState.getItemCount());
    }
    mOwnerRecyclerView = this$0;
    RecyclerView.access$2900(this$0).bindViewHolder(localViewHolder, i);
    attachAccessibilityDelegate(paramView);
    if (this$0.mState.isPreLayout()) {
      mPreLayoutPosition = paramInt;
    }
    paramView = itemView.getLayoutParams();
    if (paramView == null)
    {
      paramView = (RecyclerView.LayoutParams)this$0.generateDefaultLayoutParams();
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
      if (!this$0.checkLayoutParams(paramView))
      {
        paramView = (RecyclerView.LayoutParams)this$0.generateLayoutParams(paramView);
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
    if ((paramInt < 0) || (paramInt >= this$0.mState.getItemCount())) {
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + this$0.mState.getItemCount());
    }
    if (!this$0.mState.isPreLayout()) {
      return paramInt;
    }
    return this$0.mAdapterHelper.findPositionOffset(paramInt);
  }
  
  final void dispatchViewRecycled(RecyclerView.ViewHolder paramViewHolder)
  {
    if (RecyclerView.access$5100(this$0) != null) {
      RecyclerView.access$5100(this$0).onViewRecycled(paramViewHolder);
    }
    if (RecyclerView.access$2900(this$0) != null) {
      RecyclerView.access$2900(this$0).onViewRecycled(paramViewHolder);
    }
    if (this$0.mState != null) {
      this$0.mViewInfoStore.removeViewHolder(paramViewHolder);
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
    if (RecyclerView.access$2900(this$0).hasStableIds())
    {
      paramInt = this$0.mAdapterHelper.findPositionOffset(paramInt);
      if ((paramInt > 0) && (paramInt < RecyclerView.access$2900(this$0).getItemCount()))
      {
        long l = RecyclerView.access$2900(this$0).getItemId(paramInt);
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
            if (!this$0.mState.isPreLayout())
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
          this$0.removeDetachedView(itemView, false);
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
        if ((((RecyclerView.ViewHolder)localObject).wasReturnedFromScrap()) || (((RecyclerView.ViewHolder)localObject).getLayoutPosition() != paramInt1) || (((RecyclerView.ViewHolder)localObject).isInvalid()) || ((!RecyclerView.State.access$2200(this$0.mState)) && (((RecyclerView.ViewHolder)localObject).isRemoved()))) {
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
        localObject = this$0.mChildHelper.findHiddenNonRemovedView(paramInt1, paramInt2);
        if (localObject == null) {
          break label283;
        }
        localViewHolder = RecyclerView.getChildViewHolderInt((View)localObject);
        this$0.mChildHelper.unhide((View)localObject);
        paramInt1 = this$0.mChildHelper.indexOfChild((View)localObject);
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
    this$0.mChildHelper.detachViewFromParent(paramInt1);
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
    if ((paramInt < 0) || (paramInt >= this$0.mState.getItemCount())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + this$0.mState.getItemCount());
    }
    Object localObject2;
    int i;
    if (this$0.mState.isPreLayout())
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
                this$0.removeDetachedView(itemView, false);
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
          k = this$0.mAdapterHelper.findPositionOffset(paramInt);
          if ((k < 0) || (k >= RecyclerView.access$2900(this$0).getItemCount()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + k + ").state:" + this$0.mState.getItemCount());
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
          int m = RecyclerView.access$2900(this$0).getItemViewType(k);
          localObject2 = localObject1;
          j = i;
          if (RecyclerView.access$2900(this$0).hasStableIds())
          {
            localObject1 = getScrapViewForId(RecyclerView.access$2900(this$0).getItemId(k), m, paramBoolean);
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
                localObject2 = this$0.getChildViewHolder((View)localObject3);
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
              if (RecyclerView.access$4400())
              {
                invalidateDisplayListInt((RecyclerView.ViewHolder)localObject1);
                localObject2 = localObject1;
              }
            }
          }
          localObject3 = localObject2;
          k = j;
          if (localObject2 == null) {
            localObject2 = RecyclerView.access$2900(this$0).createViewHolder(this$0, m);
          }
        }
        for (i = j;; i = k)
        {
          if ((i != 0) && (!this$0.mState.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).hasAnyOfTheFlags(8192)))
          {
            ((RecyclerView.ViewHolder)localObject2).setFlags(0, 8192);
            if (RecyclerView.State.access$2300(this$0.mState))
            {
              j = RecyclerView.ItemAnimator.buildAdapterChangeFlagsForAnimations((RecyclerView.ViewHolder)localObject2);
              localObject1 = this$0.mItemAnimator.recordPreLayoutInformation(this$0.mState, (RecyclerView.ViewHolder)localObject2, j | 0x1000, ((RecyclerView.ViewHolder)localObject2).getUnmodifiedPayloads());
              RecyclerView.access$4500(this$0, (RecyclerView.ViewHolder)localObject2, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject1);
            }
          }
          if ((this$0.mState.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).isBound()))
          {
            mPreLayoutPosition = paramInt;
            paramInt = 0;
          }
          for (;;)
          {
            localObject1 = itemView.getLayoutParams();
            if (localObject1 == null)
            {
              localObject1 = (RecyclerView.LayoutParams)this$0.generateDefaultLayoutParams();
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
              j = this$0.mAdapterHelper.findPositionOffset(paramInt);
              mOwnerRecyclerView = this$0;
              RecyclerView.access$2900(this$0).bindViewHolder((RecyclerView.ViewHolder)localObject2, j);
              attachAccessibilityDelegate(itemView);
              if (this$0.mState.isPreLayout()) {
                mPreLayoutPosition = paramInt;
              }
              paramInt = 1;
              break;
              if (!this$0.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
              {
                localObject1 = (RecyclerView.LayoutParams)this$0.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
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
    if ((RecyclerView.access$2900(this$0) != null) && (RecyclerView.access$2900(this$0).hasStableIds()))
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
      this$0.removeDetachedView(paramView, false);
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
    if ((RecyclerView.access$2900(this$0) != null) && (bool) && (RecyclerView.access$2900(this$0).onFailedToRecycleView(paramViewHolder)))
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
      this$0.mViewInfoStore.removeViewHolder(paramViewHolder);
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
    if ((paramView.hasAnyOfTheFlags(12)) || (!paramView.isUpdated()) || (RecyclerView.access$5000(this$0, paramView)))
    {
      if ((paramView.isInvalid()) && (!paramView.isRemoved()) && (!RecyclerView.access$2900(this$0).hasStableIds())) {
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
      mRecyclerPool.attach(this$0.getAdapter());
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
      bool1 = this$0.mState.isPreLayout();
    }
    do
    {
      do
      {
        return bool1;
        if ((mPosition < 0) || (mPosition >= RecyclerView.access$2900(this$0).getItemCount())) {
          throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramViewHolder);
        }
        if (this$0.mState.isPreLayout()) {
          break;
        }
        bool1 = bool2;
      } while (RecyclerView.access$2900(this$0).getItemViewType(mPosition) != paramViewHolder.getItemViewType());
      if (!RecyclerView.access$2900(this$0).hasStableIds()) {
        break;
      }
      bool1 = bool2;
    } while (paramViewHolder.getItemId() != RecyclerView.access$2900(this$0).getItemId(mPosition));
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

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.Recycler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */