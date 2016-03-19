package android.support.v7.widget;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;

class ViewInfoStore
{
  private static final boolean DEBUG = false;
  final ArrayMap<RecyclerView.ViewHolder, InfoRecord> mLayoutHolderMap = new ArrayMap();
  final LongSparseArray<RecyclerView.ViewHolder> mOldChangedHolders = new LongSparseArray();
  
  void addToAppearedInPreLayoutHolders(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    InfoRecord localInfoRecord2 = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    flags |= 0x2;
    preInfo = paramItemHolderInfo;
  }
  
  void addToDisappearedInLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    InfoRecord localInfoRecord2 = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    flags |= 0x1;
  }
  
  void addToOldChangeHolders(long paramLong, RecyclerView.ViewHolder paramViewHolder)
  {
    mOldChangedHolders.put(paramLong, paramViewHolder);
  }
  
  void addToPostLayout(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    InfoRecord localInfoRecord2 = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    postInfo = paramItemHolderInfo;
    flags |= 0x8;
  }
  
  void addToPreLayout(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    InfoRecord localInfoRecord2 = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    preInfo = paramItemHolderInfo;
    flags |= 0x4;
  }
  
  void clear()
  {
    mLayoutHolderMap.clear();
    mOldChangedHolders.clear();
  }
  
  RecyclerView.ViewHolder getFromOldChangeHolders(long paramLong)
  {
    return (RecyclerView.ViewHolder)mOldChangedHolders.get(paramLong);
  }
  
  boolean isInPreLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    return (paramViewHolder != null) && ((flags & 0x4) != 0);
  }
  
  void onDetach() {}
  
  RecyclerView.ItemAnimator.ItemHolderInfo popFromPreLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    int i = mLayoutHolderMap.indexOfKey(paramViewHolder);
    if (i < 0) {
      return null;
    }
    paramViewHolder = (InfoRecord)mLayoutHolderMap.valueAt(i);
    if ((paramViewHolder != null) && ((flags & 0x4) != 0))
    {
      flags &= 0xFFFFFFFB;
      RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo = preInfo;
      if (flags == 0)
      {
        mLayoutHolderMap.removeAt(i);
        InfoRecord.recycle(paramViewHolder);
      }
      return localItemHolderInfo;
    }
    return null;
  }
  
  void process(ProcessCallback paramProcessCallback)
  {
    int i = mLayoutHolderMap.size() - 1;
    if (i >= 0)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mLayoutHolderMap.keyAt(i);
      InfoRecord localInfoRecord = (InfoRecord)mLayoutHolderMap.removeAt(i);
      if ((flags & 0x3) == 3) {
        paramProcessCallback.unused(localViewHolder);
      }
      for (;;)
      {
        InfoRecord.recycle(localInfoRecord);
        i -= 1;
        break;
        if ((flags & 0x1) != 0) {
          paramProcessCallback.processDisappeared(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0xE) == 14) {
          paramProcessCallback.processAppeared(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0xC) == 12) {
          paramProcessCallback.processPersistent(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0x4) != 0) {
          paramProcessCallback.processDisappeared(localViewHolder, preInfo, null);
        } else if ((flags & 0x8) != 0) {
          paramProcessCallback.processAppeared(localViewHolder, preInfo, postInfo);
        } else {
          int j = flags;
        }
      }
    }
  }
  
  void removeFromDisappearedInLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    if (paramViewHolder == null) {
      return;
    }
    flags &= 0xFFFFFFFE;
  }
  
  void removeViewHolder(RecyclerView.ViewHolder paramViewHolder)
  {
    int i = mOldChangedHolders.size() - 1;
    for (;;)
    {
      if (i >= 0)
      {
        if (paramViewHolder == mOldChangedHolders.valueAt(i)) {
          mOldChangedHolders.removeAt(i);
        }
      }
      else
      {
        paramViewHolder = (InfoRecord)mLayoutHolderMap.remove(paramViewHolder);
        if (paramViewHolder != null) {
          InfoRecord.recycle(paramViewHolder);
        }
        return;
      }
      i -= 1;
    }
  }
  
  static class InfoRecord
  {
    static final int FLAG_APPEAR = 2;
    static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
    static final int FLAG_APPEAR_PRE_AND_POST = 14;
    static final int FLAG_DISAPPEARED = 1;
    static final int FLAG_POST = 8;
    static final int FLAG_PRE = 4;
    static final int FLAG_PRE_AND_POST = 12;
    static Pools.Pool<InfoRecord> sPool = new Pools.SimplePool(20);
    int flags;
    RecyclerView.ItemAnimator.ItemHolderInfo postInfo;
    RecyclerView.ItemAnimator.ItemHolderInfo preInfo;
    
    static void drainCache()
    {
      while (sPool.acquire() != null) {}
    }
    
    static InfoRecord obtain()
    {
      InfoRecord localInfoRecord2 = (InfoRecord)sPool.acquire();
      InfoRecord localInfoRecord1 = localInfoRecord2;
      if (localInfoRecord2 == null) {
        localInfoRecord1 = new InfoRecord();
      }
      return localInfoRecord1;
    }
    
    static void recycle(InfoRecord paramInfoRecord)
    {
      flags = 0;
      preInfo = null;
      postInfo = null;
      sPool.release(paramInfoRecord);
    }
  }
  
  static abstract interface ProcessCallback
  {
    public abstract void processAppeared(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void processDisappeared(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void processPersistent(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void unused(RecyclerView.ViewHolder paramViewHolder);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ViewInfoStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */