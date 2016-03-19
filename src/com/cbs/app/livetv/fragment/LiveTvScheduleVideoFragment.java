package com.cbs.app.livetv.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.visualon.player.PlayerFragment;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import java.util.HashMap;

public class LiveTvScheduleVideoFragment
  extends Fragment
{
  private static final String a = LiveTvScheduleVideoFragment.class.getName();
  private SyncbakController b;
  private LiveTvContentFlipper c;
  private PlayerFragment d;
  private com.google.android.gms.cast.d e = null;
  private c f = null;
  private com.google.android.libraries.cast.companionlibrary.cast.a.d g = null;
  
  public static LiveTvScheduleVideoFragment a(SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate)
  {
    Bundle localBundle = new Bundle();
    LiveTvScheduleVideoFragment localLiveTvScheduleVideoFragment = new LiveTvScheduleVideoFragment();
    localBundle.putParcelable("EXTRA_CHANNEL", paramSyncbakChannel);
    localBundle.putParcelable("EXTRA_AFFILIATE", paramAffiliate);
    localLiveTvScheduleVideoFragment.setArguments(localBundle);
    return localLiveTvScheduleVideoFragment;
  }
  
  public final void a(final SyncbakChannel paramSyncbakChannel, final Affiliate paramAffiliate, final SyncbakStream paramSyncbakStream)
  {
    try
    {
      e = f.J();
      final Button localButton = (Button)c.getCustomView().findViewById(2131690439);
      if ((e == null) || (e.b() != 2))
      {
        localButton.setVisibility(0);
        localButton.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            VideoUtil.a(getActivity(), paramSyncbakChannel, paramAffiliate);
            localButton.setVisibility(8);
          }
        });
        return;
      }
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald)
    {
      for (;;)
      {
        Log.e(a, "error1: " + locald.getLocalizedMessage());
      }
    }
    catch (b localb)
    {
      for (;;)
      {
        Log.e(a, "error2: " + localb.getLocalizedMessage());
      }
      localb.setVisibility(8);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new HashMap();
    paramBundle.put("pageTitle", "live tv|stream");
    paramBundle.put("evar_6", "liveTV|stream");
    paramBundle.put("evar_10", "livetv_stream");
    paramBundle.put("pageView", Boolean.TRUE.toString());
    if ((MVPDController.getInstance().j()) && (MVPDController.getInstance().getSelectedMvpdConfig() != null))
    {
      paramBundle.put("evar_32", MVPDController.getInstance().getSelectedMvpdConfig());
      AnalyticsManager.a(getActivity(), Action.dB, paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = new LiveTvContentFlipper(getContext());
    c.setContentView(paramLayoutInflater.inflate(2130903169, paramViewGroup, false));
    c.setCustomView(paramLayoutInflater.inflate(2130903311, paramViewGroup, false));
    if (Util.H(getActivity()))
    {
      f = MainApplication.getVideoCastManager();
      f.a(g);
      f.g(15);
    }
    return c;
  }
  
  public void onDestroy()
  {
    if (b != null) {
      b.c();
    }
    if (Util.H(getActivity()))
    {
      f = MainApplication.getVideoCastManager();
      f.b(g);
    }
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    if (Util.H(getActivity()))
    {
      f = MainApplication.getVideoCastManager();
      f.a(g);
      f.g();
    }
  }
  
  public void onViewCreated(final View paramView, final Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = (SyncbakChannel)getArguments().getParcelable("EXTRA_CHANNEL");
    paramBundle = (Affiliate)getArguments().getParcelable("EXTRA_AFFILIATE");
    c.setDisplayedChild(0);
    b = new SyncbakController(getActivity());
    b.a(new SyncbakCallback()
    {
      public final void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (!isAdded()) {
          return;
        }
        switch (paramAnonymousInt)
        {
        default: 
          LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setMessage(getString(2131231115));
          LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(2);
          return;
        }
        LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setMessage(getString(2131231133));
        LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(2);
      }
      
      public final void a(final SyncbakStream paramAnonymousSyncbakStream)
      {
        if (!isAdded()) {}
        do
        {
          return;
          LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(1);
          if (Util.H(getActivity()))
          {
            if ((LiveTvScheduleVideoFragment.b(LiveTvScheduleVideoFragment.this) != null) && (LiveTvScheduleVideoFragment.b(LiveTvScheduleVideoFragment.this).j()))
            {
              LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(3);
              a(paramView, paramBundle, paramAnonymousSyncbakStream);
            }
            for (;;)
            {
              LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, new com.google.android.libraries.cast.companionlibrary.cast.a.d()
              {
                public final void a(ApplicationMetadata paramAnonymous2ApplicationMetadata, String paramAnonymous2String, boolean paramAnonymous2Boolean)
                {
                  super.a(paramAnonymous2ApplicationMetadata, paramAnonymous2String, paramAnonymous2Boolean);
                  if (LiveTvScheduleVideoFragment.b(LiveTvScheduleVideoFragment.this) != null) {}
                  try
                  {
                    LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, LiveTvScheduleVideoFragment.b(LiveTvScheduleVideoFragment.this).J());
                    LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(3);
                    a(a, b, paramAnonymousSyncbakStream);
                    return;
                  }
                  catch (com.google.android.libraries.cast.companionlibrary.cast.b.d paramAnonymous2ApplicationMetadata)
                  {
                    for (;;)
                    {
                      Log.e(LiveTvScheduleVideoFragment.a(), "error1: " + paramAnonymous2ApplicationMetadata.getLocalizedMessage());
                    }
                  }
                  catch (b paramAnonymous2ApplicationMetadata)
                  {
                    for (;;)
                    {
                      Log.e(LiveTvScheduleVideoFragment.a(), "error2: " + paramAnonymous2ApplicationMetadata.getLocalizedMessage());
                    }
                  }
                }
                
                public final void c(int paramAnonymous2Int)
                {
                  super.c(paramAnonymous2Int);
                  LiveTvScheduleVideoFragment.a();
                  LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(1);
                  if ((isResumed()) && (getChildFragmentManager().findFragmentById(2131689996) == null))
                  {
                    LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, PlayerFragment.a(a, b, paramAnonymousSyncbakStream));
                    getChildFragmentManager().beginTransaction().add(2131689996, LiveTvScheduleVideoFragment.c(LiveTvScheduleVideoFragment.this)).commit();
                  }
                }
                
                public final void e()
                {
                  super.e();
                  LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this).setDisplayedChild(1);
                  if (getChildFragmentManager().findFragmentById(2131689996) == null)
                  {
                    LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, PlayerFragment.a(a, b, paramAnonymousSyncbakStream));
                    getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(LiveTvScheduleVideoFragment.this)).commit();
                  }
                }
              });
              return;
              if (getChildFragmentManager().findFragmentById(2131689996) == null)
              {
                LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, PlayerFragment.a(paramView, paramBundle, paramAnonymousSyncbakStream));
                getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(LiveTvScheduleVideoFragment.this)).commit();
              }
            }
          }
        } while (getChildFragmentManager().findFragmentById(2131689996) != null);
        LiveTvScheduleVideoFragment.a(LiveTvScheduleVideoFragment.this, PlayerFragment.a(paramView, paramBundle, paramAnonymousSyncbakStream));
        getChildFragmentManager().beginTransaction().replace(2131689996, LiveTvScheduleVideoFragment.c(LiveTvScheduleVideoFragment.this)).commit();
      }
    });
    b.a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleVideoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */