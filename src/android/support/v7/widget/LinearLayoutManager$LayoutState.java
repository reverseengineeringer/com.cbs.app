package android.support.v7.widget;

import android.view.View;
import java.util.List;

class LinearLayoutManager$LayoutState
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

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.LayoutState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */