package com.cbs.app.livetv.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakSchedule;
import com.cbs.app.view.utils.ImageHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder
  extends LiveTvAvailableFragment.ScheduleAdapter.ViewHolder
{
  TextView a;
  ImageView b;
  LinearLayout c;
  
  public LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder(LiveTvAvailableFragment.ScheduleAdapter paramScheduleAdapter, View paramView)
  {
    super(paramScheduleAdapter, paramView);
    a = ((TextView)paramView.findViewById(2131690126));
    b = ((ImageView)paramView.findViewById(2131690121));
    c = ((LinearLayout)paramView.findViewById(2131690127));
  }
  
  public final void a(LiveTvChannel paramLiveTvChannel)
  {
    LiveTvAvailableFragment.c();
    new StringBuilder("bind() called with: item = [").append(paramLiveTvChannel).append("]");
    if (paramLiveTvChannel != null)
    {
      a.setText(paramLiveTvChannel.getAffiliate().getAffiliateStation());
      ImageHelper.a(ImageResizerUrl.a(paramLiveTvChannel.getAffiliate().getSmallLogoSelected(), dwidthPixels / 3), b);
      if ((paramLiveTvChannel.getPrograms() != null) && (paramLiveTvChannel.getPrograms().size() > 0))
      {
        c.removeAllViews();
        int i = 0;
        if (i < paramLiveTvChannel.getPrograms().size())
        {
          LinearLayout localLinearLayout = c;
          SyncbakSchedule localSyncbakSchedule = (SyncbakSchedule)paramLiveTvChannel.getPrograms().get(i);
          LiveTvAvailableFragment.c();
          new StringBuilder("createProgramView() called with: position = [").append(i).append("], program = [").append(localSyncbakSchedule).append("]");
          View localView = LayoutInflater.from(d.a).inflate(2130903203, c, false);
          TextView localTextView1 = (TextView)localView.findViewById(2131690114);
          TextView localTextView3 = (TextView)localView.findViewById(2131690124);
          TextView localTextView2 = (TextView)localView.findViewById(2131690125);
          String str = LiveTvAvailableFragment.ScheduleAdapter.a(d).format(new Date(TimeUnit.SECONDS.toMillis(localSyncbakSchedule.getStartTime())));
          LinearLayout.LayoutParams localLayoutParams;
          switch (i)
          {
          default: 
            localLayoutParams = new LinearLayout.LayoutParams(0, -1, 1.0F);
            localTextView3.setText(str);
            localTextView3.setTextColor(d.b.getResources().getColor(2131558596));
          }
          for (;;)
          {
            localView.setLayoutParams(localLayoutParams);
            localTextView1.setText(localSyncbakSchedule.getName());
            localTextView2.setText(localSyncbakSchedule.getEpisodeTitle());
            localLinearLayout.addView(localView);
            if (i % 2 == 0) {
              c.addView(LayoutInflater.from(d.a).inflate(2130903209, c, false));
            }
            i += 1;
            break;
            localLayoutParams = new LinearLayout.LayoutParams(0, -1, 1.0F);
            localTextView3.setText(d.a.getString(2131231077, new Object[] { str }));
          }
        }
      }
      else
      {
        c.setVisibility(8);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvAvailableFragment.ScheduleAdapter.ScheduleViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */