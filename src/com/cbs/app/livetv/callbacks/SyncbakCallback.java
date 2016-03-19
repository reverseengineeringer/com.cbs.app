package com.cbs.app.livetv.callbacks;

import android.util.Pair;
import com.cbs.app.livetv.controllers.Controller.Callback;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import java.util.List;

public class SyncbakCallback
  extends Controller.Callback
{
  public void a(int paramInt, String paramString) {}
  
  public void a(LiveTvChannel paramLiveTvChannel) {}
  
  public void a(SyncbakStream paramSyncbakStream) {}
  
  public void a(List<Pair<SyncbakChannel, Affiliate>> paramList) {}
  
  public void a(boolean paramBoolean) {}
  
  public void a(boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void b(List<LiveTvChannel> paramList) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.callbacks.SyncbakCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */