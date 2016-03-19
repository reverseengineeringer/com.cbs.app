package com.cbs.app.livetv.fragment;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.util.MessageUtil;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.livetv.widget.ListItemDecoration;
import com.cbs.app.livetv.widget.LiveTvContentFlipper;
import com.cbs.app.livetv.widget.LiveTvScheduleProgramAdapter;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.visualon.player.PlayerActivityV2;
import com.d.a.b.f.c;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class LiveTvScheduleProgramsFragment
  extends Fragment
{
  private static final String a = LiveTvScheduleProgramsFragment.class.getName();
  private SimpleDateFormat b = new SimpleDateFormat("EEEE, MMMM d", Locale.US);
  private SyncbakController c;
  private LiveTvScheduleProgramAdapter d;
  private LiveTvContentFlipper e;
  private View f;
  private int g;
  private LiveTvChannel h;
  private LiveTvContentFlipper i;
  
  public static LiveTvScheduleProgramsFragment a(int paramInt)
  {
    Bundle localBundle = new Bundle();
    LiveTvScheduleProgramsFragment localLiveTvScheduleProgramsFragment = new LiveTvScheduleProgramsFragment();
    localBundle.putInt("EXTRA_VIEW_TYPE", paramInt);
    localLiveTvScheduleProgramsFragment.setArguments(localBundle);
    return localLiveTvScheduleProgramsFragment;
  }
  
  public final void a(LiveTvChannel paramLiveTvChannel)
  {
    if ((!isAdded()) || (paramLiveTvChannel == null)) {}
    List localList;
    do
    {
      return;
      localList = paramLiveTvChannel.getPrograms();
      if (!getResources().getBoolean(2131296260)) {
        break label320;
      }
      if ((localList != null) && (!localList.isEmpty())) {
        break;
      }
      e.setMessage(getString(2131231134));
      e.setDisplayedChild(2);
      h = paramLiveTvChannel;
      paramLiveTvChannel = paramLiveTvChannel.getAffiliate();
      final View localView = f.findViewById(2131690109);
      d.setIsMvpd(h.getIsMvpd());
      if (localView != null)
      {
        localView = f.findViewById(2131690111);
        Object localObject = (ImageView)f.findViewById(2131690110);
        final ImageView localImageView = (ImageView)f.findViewById(2131690113);
        if ((paramLiveTvChannel != null) && (!TextUtils.isEmpty(paramLiveTvChannel.getLogo()))) {
          ImageHelper.a(ImageResizerUrl.a(paramLiveTvChannel.getLogo(), getResources().getDimensionPixelSize(2131362079)), (ImageView)localObject);
        }
        localView.setVisibility(8);
        if (h.getIsMvpd())
        {
          localObject = MVPDController.getInstance().getSelectedMvpdConfig();
          if ((localObject != null) && (!TextUtils.isEmpty(((MVPDConfig)localObject).getFilepathAdobeLogoOverride()))) {
            ImageHelper.a(ImageResizerUrl.a(((MVPDConfig)localObject).getFilepathAdobeLogoOverride(), getResources().getDimensionPixelSize(2131362079)), localImageView, new c()
            {
              public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
              {
                if (localImageView.getDrawable() != null)
                {
                  localImageView.getDrawable().setColorFilter(getResources().getColor(2131558516), PorterDuff.Mode.SRC_ATOP);
                  localView.setVisibility(0);
                }
              }
            });
          }
        }
      }
    } while ((localList == null) || (localList.size() <= 0));
    d.a();
    switch (g)
    {
    default: 
      d.a(localList);
      return;
      i.setDisplayedChild(1);
      for (;;)
      {
        e.setDisplayedChild(1);
        break;
        if ((localList == null) || (localList.isEmpty())) {
          i.setDisplayedChild(2);
        } else {
          i.setDisplayedChild(1);
        }
      }
    case 1: 
      label320:
      d.setAffiliate(paramLiveTvChannel);
      d.a(localList.subList(0, 1));
      return;
    }
    if (localList.size() > 1)
    {
      d.a(localList.subList(1, localList.size()));
      return;
    }
    d.a(localList);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramLayoutInflater.inflate(2130903168, paramViewGroup, false);
    i = ((LiveTvContentFlipper)paramBundle.findViewById(2131689995));
    i.setMessage(getString(2131231134));
    i.setContentView(paramLayoutInflater.inflate(2130903312, paramViewGroup, false));
    e = new LiveTvContentFlipper(getContext());
    e.setContentView(paramBundle);
    return e;
  }
  
  public void onDestroy()
  {
    if (c != null) {
      c.c();
    }
    super.onDestroy();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    e.setDisplayedChild(1);
    g = getArguments().getInt("EXTRA_VIEW_TYPE", 0);
    f = paramView.findViewById(2131689994);
    switch (g)
    {
    default: 
      f.setVisibility(0);
      d = new LiveTvScheduleProgramAdapter();
    }
    for (;;)
    {
      paramBundle = (RecyclerView)i.getContentView();
      paramBundle.addItemDecoration(new ListItemDecoration(getResources().getDimensionPixelSize(2131362073)));
      paramBundle.setLayoutManager(new LinearLayoutManager(getActivity()));
      paramBundle.setAdapter(d);
      c = new SyncbakController(getActivity());
      c.a(new SyncbakCallback()
      {
        public final void a(int paramAnonymousInt, String paramAnonymousString)
        {
          if (!isAdded()) {
            return;
          }
          switch (paramAnonymousInt)
          {
          default: 
            LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(2);
            return;
          case 2000: 
          case 2007: 
            LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(1);
            MessageUtil.a(getView(), getString(2131231133));
            return;
          }
          LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(1);
          MessageUtil.a(getView(), getString(2131231133));
        }
        
        public final void a(SyncbakStream paramAnonymousSyncbakStream)
        {
          if (!isAdded()) {
            return;
          }
          if ((paramAnonymousSyncbakStream == null) || (TextUtils.isEmpty(paramAnonymousSyncbakStream.getUrl())))
          {
            LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(1);
            MessageUtil.a(getView(), getString(2131231115));
            return;
          }
          Intent localIntent = new Intent(getActivity(), PlayerActivityV2.class);
          localIntent.putExtra("syncbakChannel", LiveTvScheduleProgramsFragment.b(LiveTvScheduleProgramsFragment.this).getChannel());
          localIntent.putExtra("syncbakStream", paramAnonymousSyncbakStream);
          localIntent.putExtra("syncbakAffiliate", LiveTvScheduleProgramsFragment.b(LiveTvScheduleProgramsFragment.this).getAffiliate());
          paramAnonymousSyncbakStream = LiveTvScheduleProgramsFragment.b(LiveTvScheduleProgramsFragment.this).getPrograms();
          if ((paramAnonymousSyncbakStream != null) && (paramAnonymousSyncbakStream.size() > 0))
          {
            paramAnonymousSyncbakStream = (SyncbakSchedule)paramAnonymousSyncbakStream.get(0);
            localIntent.putExtra("showName", paramAnonymousSyncbakStream.getName());
            localIntent.putExtra("episodeName", paramAnonymousSyncbakStream.getEpisodeTitle());
          }
          startActivity(localIntent);
          LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(1);
        }
      });
      paramBundle = Calendar.getInstance();
      ((TextView)paramView.findViewById(2131690442)).setText(getString(2131231078, new Object[] { b.format(paramBundle.getTime()) }));
      if (paramView.findViewById(2131690443) != null) {
        paramView.findViewById(2131690443).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LiveTvScheduleProgramsFragment.c(LiveTvScheduleProgramsFragment.this).a(LiveTvScheduleProgramsFragment.b(LiveTvScheduleProgramsFragment.this).getChannel());
            LiveTvScheduleProgramsFragment.a(LiveTvScheduleProgramsFragment.this).setDisplayedChild(0);
          }
        });
      }
      return;
      f.setVisibility(8);
      d = new LiveTvScheduleProgramAdapter(1);
      continue;
      f.setVisibility(8);
      d = new LiveTvScheduleProgramAdapter(2);
    }
  }
  
  public void setViewType(int paramInt)
  {
    g = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleProgramsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */