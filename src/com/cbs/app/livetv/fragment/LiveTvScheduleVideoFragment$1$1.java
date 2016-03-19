package com.cbs.app.livetv.fragment;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.visualon.player.PlayerFragment;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class LiveTvScheduleVideoFragment$1$1
  extends com.google.android.libraries.cast.companionlibrary.cast.a.d
{
  LiveTvScheduleVideoFragment$1$1(LiveTvScheduleVideoFragment.1 param1, SyncbakStream paramSyncbakStream) {}
  
  public final void a(ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean)
  {
    super.a(paramApplicationMetadata, paramString, paramBoolean);
    if (LiveTvScheduleVideoFragment.b(b.c) != null) {}
    try
    {
      LiveTvScheduleVideoFragment.a(b.c, LiveTvScheduleVideoFragment.b(b.c).J());
      LiveTvScheduleVideoFragment.a(b.c).setDisplayedChild(3);
      b.c.a(b.a, b.b, a);
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramApplicationMetadata)
    {
      for (;;)
      {
        Log.e(LiveTvScheduleVideoFragment.a(), "error1: " + paramApplicationMetadata.getLocalizedMessage());
      }
    }
    catch (b paramApplicationMetadata)
    {
      for (;;)
      {
        Log.e(LiveTvScheduleVideoFragment.a(), "error2: " + paramApplicationMetadata.getLocalizedMessage());
      }
    }
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
    LiveTvScheduleVideoFragment.a();
    LiveTvScheduleVideoFragment.a(b.c).setDisplayedChild(1);
    if ((b.c.isResumed()) && (b.c.getChildFragmentManager().findFragmentById(2131689996) == null))
    {
      LiveTvScheduleVideoFragment.a(b.c, PlayerFragment.a(b.a, b.b, a));
      b.c.getChildFragmentManager().beginTransaction().add(2131689996, LiveTvScheduleVideoFragment.c(b.c)).commit();
    }
  }
  
  public final void e()
  {
    super.e();
    LiveTvScheduleVideoFragment.a(b.c).setDisplayedChild(1);
    if (b.c.getChildFragmentManager().findFragmentById(2131689996) == null)
    {
      LiveTvScheduleVideoFragment.a(b.c, PlayerFragment.a(b.a, b.b, a));
      b.c.getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(b.c)).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleVideoFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */