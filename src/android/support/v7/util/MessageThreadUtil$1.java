package android.support.v7.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

class MessageThreadUtil$1
  implements ThreadUtil.MainThreadCallback<T>
{
  private static final int ADD_TILE = 2;
  private static final int REMOVE_TILE = 3;
  private static final int UPDATE_ITEM_COUNT = 1;
  private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
  private Runnable mMainThreadRunnable = new Runnable()
  {
    public void run()
    {
      MessageThreadUtil.SyncQueueItem localSyncQueueItem = mQueue.next();
      if (localSyncQueueItem != null)
      {
        switch (what)
        {
        default: 
          Log.e("ThreadUtil", "Unsupported message, what=" + what);
        }
        for (;;)
        {
          localSyncQueueItem = mQueue.next();
          break;
          val$callback.updateItemCount(arg1, arg2);
          continue;
          val$callback.addTile(arg1, (TileList.Tile)data);
          continue;
          val$callback.removeTile(arg1, arg2);
        }
      }
    }
  };
  private final MessageThreadUtil.MessageQueue mQueue = new MessageThreadUtil.MessageQueue();
  
  MessageThreadUtil$1(MessageThreadUtil paramMessageThreadUtil, ThreadUtil.MainThreadCallback paramMainThreadCallback) {}
  
  private void sendMessage(MessageThreadUtil.SyncQueueItem paramSyncQueueItem)
  {
    mQueue.sendMessage(paramSyncQueueItem);
    mMainThreadHandler.post(mMainThreadRunnable);
  }
  
  public void addTile(int paramInt, TileList.Tile<T> paramTile)
  {
    sendMessage(MessageThreadUtil.SyncQueueItem.obtainMessage(2, paramInt, paramTile));
  }
  
  public void removeTile(int paramInt1, int paramInt2)
  {
    sendMessage(MessageThreadUtil.SyncQueueItem.obtainMessage(3, paramInt1, paramInt2));
  }
  
  public void updateItemCount(int paramInt1, int paramInt2)
  {
    sendMessage(MessageThreadUtil.SyncQueueItem.obtainMessage(1, paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.MessageThreadUtil.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */