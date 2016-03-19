package android.support.v7.widget;

import android.util.SparseArray;

public class RecyclerView$State
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

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.State
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */