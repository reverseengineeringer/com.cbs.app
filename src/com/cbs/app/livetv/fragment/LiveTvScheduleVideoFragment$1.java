package com.cbs.app.livetv.fragment;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.Util;
import com.cbs.app.visualon.player.PlayerFragment;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class LiveTvScheduleVideoFragment$1
  extends SyncbakCallback
{
  LiveTvScheduleVideoFragment$1(LiveTvScheduleVideoFragment paramLiveTvScheduleVideoFragment, SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate) {}
  
  public final void a(int paramInt, String paramString)
  {
    if (!c.isAdded()) {
      return;
    }
    switch (paramInt)
    {
    default: 
      LiveTvScheduleVideoFragment.a(c).setMessage(c.getString(2131231115));
      LiveTvScheduleVideoFragment.a(c).setDisplayedChild(2);
      return;
    }
    LiveTvScheduleVideoFragment.a(c).setMessage(c.getString(2131231133));
    LiveTvScheduleVideoFragment.a(c).setDisplayedChild(2);
  }
  
  public final void a(final SyncbakStream paramSyncbakStream)
  {
    if (!c.isAdded()) {}
    do
    {
      return;
      LiveTvScheduleVideoFragment.a(c).setDisplayedChild(1);
      if (Util.H(c.getActivity()))
      {
        if ((LiveTvScheduleVideoFragment.b(c) != null) && (LiveTvScheduleVideoFragment.b(c).j()))
        {
          LiveTvScheduleVideoFragment.a(c).setDisplayedChild(3);
          c.a(a, b, paramSyncbakStream);
        }
        for (;;)
        {
          LiveTvScheduleVideoFragment.a(c, new com.google.android.libraries.cast.companionlibrary.cast.a.d()
          {
            public final void a(ApplicationMetadata paramAnonymousApplicationMetadata, String paramAnonymousString, boolean paramAnonymousBoolean)
            {
              super.a(paramAnonymousApplicationMetadata, paramAnonymousString, paramAnonymousBoolean);
              if (LiveTvScheduleVideoFragment.b(c) != null) {}
              try
              {
                LiveTvScheduleVideoFragment.a(c, LiveTvScheduleVideoFragment.b(c).J());
                LiveTvScheduleVideoFragment.a(c).setDisplayedChild(3);
                c.a(a, b, paramSyncbakStream);
                return;
              }
              catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramAnonymousApplicationMetadata)
              {
                for (;;)
                {
                  Log.e(LiveTvScheduleVideoFragment.a(), "error1: " + paramAnonymousApplicationMetadata.getLocalizedMessage());
                }
              }
              catch (b paramAnonymousApplicationMetadata)
              {
                for (;;)
                {
                  Log.e(LiveTvScheduleVideoFragment.a(), "error2: " + paramAnonymousApplicationMetadata.getLocalizedMessage());
                }
              }
            }
            
            public final void c(int paramAnonymousInt)
            {
              super.c(paramAnonymousInt);
              LiveTvScheduleVideoFragment.a();
              LiveTvScheduleVideoFragment.a(c).setDisplayedChild(1);
              if ((c.isResumed()) && (c.getChildFragmentManager().findFragmentById(2131689996) == null))
              {
                LiveTvScheduleVideoFragment.a(c, PlayerFragment.a(a, b, paramSyncbakStream));
                c.getChildFragmentManager().beginTransaction().add(2131689996, LiveTvScheduleVideoFragment.c(c)).commit();
              }
            }
            
            public final void e()
            {
              super.e();
              LiveTvScheduleVideoFragment.a(c).setDisplayedChild(1);
              if (c.getChildFragmentManager().findFragmentById(2131689996) == null)
              {
                LiveTvScheduleVideoFragment.a(c, PlayerFragment.a(a, b, paramSyncbakStream));
                c.getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(c)).commit();
              }
            }
          });
          return;
          if (c.getChildFragmentManager().findFragmentById(2131689996) == null)
          {
            LiveTvScheduleVideoFragment.a(c, PlayerFragment.a(a, b, paramSyncbakStream));
            c.getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(c)).commit();
          }
        }
      }
    } while (c.getChildFragmentManager().findFragmentById(2131689996) != null);
    LiveTvScheduleVideoFragment.a(c, PlayerFragment.a(a, b, paramSyncbakStream));
    c.getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(c)).commit();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleVideoFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */