package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.LinearLayout.LayoutParams;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.FullScreenButtonListener;
import com.cbs.app.visualon.player.PlayerRect;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class LiveTvScheduleFragment
  extends Fragment
{
  private static final String a = LiveTvScheduleFragment.class.getName();
  private final long b = TimeUnit.MINUTES.toMillis(5L);
  private SyncbakController c;
  private LiveTvContentFlipper d;
  private LiveTvScheduleProgramsFragment e;
  private LiveTvScheduleProgramsFragment f;
  private LiveTvScheduleVideoFragment g;
  private FullScreenButtonListener h;
  private SyncbakChannel i;
  private Affiliate j;
  private LiveTvChannel k;
  private PlayerRect l;
  private final Handler m = new Handler();
  private boolean n;
  
  public static LiveTvScheduleFragment a(SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate)
  {
    Bundle localBundle = new Bundle();
    LiveTvScheduleFragment localLiveTvScheduleFragment = new LiveTvScheduleFragment();
    localBundle.putParcelable("EXTRA_CHANNEL", paramSyncbakChannel);
    localBundle.putParcelable("EXTRA_AFFILIATE", paramAffiliate);
    localLiveTvScheduleFragment.setArguments(localBundle);
    return localLiveTvScheduleFragment;
  }
  
  private void a()
  {
    n = true;
    m.postDelayed(new Runnable()
    {
      public final void run()
      {
        LiveTvScheduleFragment.e(LiveTvScheduleFragment.this);
        LiveTvScheduleFragment.g(LiveTvScheduleFragment.this).postDelayed(this, LiveTvScheduleFragment.f(LiveTvScheduleFragment.this));
      }
    }, b);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (!isAdded()) {
      return;
    }
    final View localView1 = d.findViewById(2131689991);
    final View localView2 = d.findViewById(2131689992);
    final View localView3 = d.findViewById(2131689993);
    FragmentManager localFragmentManager = getChildFragmentManager();
    LinearLayout.LayoutParams localLayoutParams1;
    LinearLayout.LayoutParams localLayoutParams2;
    if (getResources().getBoolean(2131296260)) {
      if (!CBSPlayer.y())
      {
        localLayoutParams1 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
        localLayoutParams2 = (LinearLayout.LayoutParams)localView3.getLayoutParams();
        if (paramInt == 2)
        {
          localView1.setVisibility(0);
          localView3.setVisibility(0);
          weight = 0.625F;
          weight = (1.0F - weight);
          localView2.setLayoutParams(localLayoutParams1);
          localView3.setLayoutParams(localLayoutParams2);
          if (f == null) {
            f = LiveTvScheduleProgramsFragment.a(1);
          }
          e = LiveTvScheduleProgramsFragment.a(2);
          a("FRAGMENT_TAG_PROGRAMS");
          localFragmentManager.beginTransaction().replace(2131689991, e, "FRAGMENT_TAG_PROGRAMS").replace(2131689993, f).commitAllowingStateLoss();
        }
      }
      else
      {
        if (g == null)
        {
          g = LiveTvScheduleVideoFragment.a(i, j);
          localFragmentManager.beginTransaction().replace(2131689992, g).commitAllowingStateLoss();
        }
        if (!paramBoolean) {
          break label342;
        }
        a(localView2);
      }
    }
    for (;;)
    {
      if (!paramBoolean) {
        break label397;
      }
      localFragmentManager.executePendingTransactions();
      a(k);
      return;
      localView1.setVisibility(8);
      localView3.setVisibility(0);
      weight = 0.375F;
      weight = (1.0F - weight);
      localView2.setLayoutParams(localLayoutParams1);
      localView3.setLayoutParams(localLayoutParams2);
      e = LiveTvScheduleProgramsFragment.a(0);
      a("FRAGMENT_TAG_PROGRAMS");
      localFragmentManager.beginTransaction().replace(2131689993, e, "FRAGMENT_TAG_PROGRAMS").commitAllowingStateLoss();
      break;
      label342:
      getView().getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public final boolean onPreDraw()
        {
          final int i = localView2.getWidth();
          final int j = localView2.getHeight();
          if ((i > 0) && (j > 0))
          {
            getView().getViewTreeObserver().removeOnPreDrawListener(this);
            LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, new FullScreenButtonListener()
            {
              public final PlayerRect a(int paramAnonymous2Int)
              {
                if (LiveTvScheduleFragment.a(LiveTvScheduleFragment.this) == null) {
                  return LiveTvScheduleFragment.a(i, j);
                }
                return LiveTvScheduleFragment.a(LiveTvScheduleFragment.this);
              }
              
              public final void a()
              {
                b.setVisibility(8);
                c.setVisibility(8);
                LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, false);
                LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, a);
              }
              
              public final void b()
              {
                LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, true);
                LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, getResources().getConfiguration().orientation);
                LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, a);
              }
            });
            CBSPlayer.a(LiveTvScheduleFragment.b(LiveTvScheduleFragment.this));
          }
          return true;
        }
      });
      continue;
      e = LiveTvScheduleProgramsFragment.a(0);
      localFragmentManager.beginTransaction().replace(2131689991, e).commitAllowingStateLoss();
    }
    label397:
    a(false);
  }
  
  private void a(final View paramView)
  {
    if ((paramView == null) || (getView() == null)) {
      return;
    }
    getView().addOnLayoutChangeListener(new View.OnLayoutChangeListener()
    {
      public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
      {
        if ((paramAnonymousInt3 != paramAnonymousInt7) || (paramAnonymousInt4 != paramAnonymousInt8))
        {
          getView().removeOnLayoutChangeListener(this);
          LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, LiveTvScheduleFragment.a(paramView.getWidth(), paramView.getHeight()));
          CBSPlayer.a(LiveTvScheduleFragment.a(LiveTvScheduleFragment.this));
        }
      }
    });
  }
  
  private void a(LiveTvChannel paramLiveTvChannel)
  {
    if (paramLiveTvChannel == null) {}
    do
    {
      do
      {
        do
        {
          return;
          if (e != null) {
            e.a(paramLiveTvChannel);
          }
          if (f != null) {
            f.a(paramLiveTvChannel);
          }
        } while (!CBSPlayer.b());
        paramLiveTvChannel = paramLiveTvChannel.getPrograms();
      } while ((paramLiveTvChannel == null) || (paramLiveTvChannel.size() <= 0));
      paramLiveTvChannel = (SyncbakSchedule)paramLiveTvChannel.get(0);
    } while (paramLiveTvChannel == null);
    CBSPlayer.a(paramLiveTvChannel.getName(), paramLiveTvChannel.getEpisodeTitle());
  }
  
  private void a(String paramString)
  {
    FragmentManager localFragmentManager = getChildFragmentManager();
    paramString = localFragmentManager.findFragmentByTag(paramString);
    if ((paramString != null) && (isResumed()))
    {
      localFragmentManager.beginTransaction().remove(paramString).commitAllowingStateLoss();
      localFragmentManager.executePendingTransactions();
    }
  }
  
  private void a(final boolean paramBoolean)
  {
    if (!paramBoolean) {
      d.setDisplayedChild(0);
    }
    c = new SyncbakController(getActivity());
    c.a(new SyncbakCallback()
    {
      public final void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if ((!isAdded()) || (paramBoolean)) {
          return;
        }
        LiveTvScheduleFragment.d(LiveTvScheduleFragment.this).setDisplayedChild(2);
      }
      
      public final void a(LiveTvChannel paramAnonymousLiveTvChannel)
      {
        if (!isAdded()) {
          return;
        }
        LiveTvScheduleFragment.a(LiveTvScheduleFragment.this, paramAnonymousLiveTvChannel);
        LiveTvScheduleFragment.b(LiveTvScheduleFragment.this, LiveTvScheduleFragment.c(LiveTvScheduleFragment.this));
        LiveTvScheduleFragment.d(LiveTvScheduleFragment.this).setDisplayedChild(1);
      }
    });
    c.a(i, j, getResources().getInteger(2131492880));
    if (!paramBoolean)
    {
      b();
      a();
    }
  }
  
  private void b()
  {
    m.removeCallbacksAndMessages(null);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a(orientation, true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = new LiveTvContentFlipper(getContext());
    d.setContentView(paramLayoutInflater.inflate(2130903167, paramViewGroup, false));
    return d;
  }
  
  public void onDestroy()
  {
    if (c != null) {
      c.c();
    }
    if (h != null) {
      CBSPlayer.b(h);
    }
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    if (n) {
      b();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (n) {
      a();
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    i = ((SyncbakChannel)getArguments().getParcelable("EXTRA_CHANNEL"));
    j = ((Affiliate)getArguments().getParcelable("EXTRA_AFFILIATE"));
    a(getResourcesgetConfigurationorientation, false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */