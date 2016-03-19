package com.cbs.app.livetv.fragment;

import android.content.Intent;
import android.text.TextUtils;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.util.MessageUtil;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.visualon.player.PlayerActivityV2;
import java.util.List;

final class LiveTvScheduleProgramsFragment$1
  extends SyncbakCallback
{
  LiveTvScheduleProgramsFragment$1(LiveTvScheduleProgramsFragment paramLiveTvScheduleProgramsFragment) {}
  
  public final void a(int paramInt, String paramString)
  {
    if (!a.isAdded()) {
      return;
    }
    switch (paramInt)
    {
    default: 
      LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(2);
      return;
    case 2000: 
    case 2007: 
      LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(1);
      MessageUtil.a(a.getView(), a.getString(2131231133));
      return;
    }
    LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(1);
    MessageUtil.a(a.getView(), a.getString(2131231133));
  }
  
  public final void a(SyncbakStream paramSyncbakStream)
  {
    if (!a.isAdded()) {
      return;
    }
    if ((paramSyncbakStream == null) || (TextUtils.isEmpty(paramSyncbakStream.getUrl())))
    {
      LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(1);
      MessageUtil.a(a.getView(), a.getString(2131231115));
      return;
    }
    Intent localIntent = new Intent(a.getActivity(), PlayerActivityV2.class);
    localIntent.putExtra("syncbakChannel", LiveTvScheduleProgramsFragment.b(a).getChannel());
    localIntent.putExtra("syncbakStream", paramSyncbakStream);
    localIntent.putExtra("syncbakAffiliate", LiveTvScheduleProgramsFragment.b(a).getAffiliate());
    paramSyncbakStream = LiveTvScheduleProgramsFragment.b(a).getPrograms();
    if ((paramSyncbakStream != null) && (paramSyncbakStream.size() > 0))
    {
      paramSyncbakStream = (SyncbakSchedule)paramSyncbakStream.get(0);
      localIntent.putExtra("showName", paramSyncbakStream.getName());
      localIntent.putExtra("episodeName", paramSyncbakStream.getEpisodeTitle());
    }
    a.startActivity(localIntent);
    LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(1);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleProgramsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */