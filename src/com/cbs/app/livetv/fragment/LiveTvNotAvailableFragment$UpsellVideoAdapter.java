package com.cbs.app.livetv.fragment;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.VideoUtil;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LiveTvNotAvailableFragment$UpsellVideoAdapter
  extends ArrayListAdapter<VideoData, ViewHolder>
{
  public LiveTvNotAvailableFragment$UpsellVideoAdapter(LiveTvNotAvailableFragment paramLiveTvNotAvailableFragment) {}
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public class UpsellVideoViewHolder
    extends LiveTvNotAvailableFragment.UpsellVideoAdapter.ViewHolder
  {
    ImageView a;
    TextView b;
    TextView c;
    
    public UpsellVideoViewHolder(View paramView)
    {
      super(paramView);
      c = ((TextView)paramView.findViewById(2131690140));
      b = ((TextView)paramView.findViewById(2131690139));
      a = ((ImageView)paramView.findViewById(2131690138));
    }
    
    public final void a(VideoData paramVideoData)
    {
      if (paramVideoData != null)
      {
        ImageHelper.a(ImageHelper.a(VideoUtil.d(paramVideoData), dwidthPixels / LiveTvNotAvailableFragment.c()), a);
        c.setText(a.getString(2131231080, new Object[] { Integer.valueOf(paramVideoData.getSeasonNum()), paramVideoData.getEpisodeNum() }) + " " + LiveTvNotAvailableFragment.h(a).format(new Date(paramVideoData.getAirDate())));
        b.setText(paramVideoData.getSeriesTitle());
      }
    }
  }
  
  public abstract class ViewHolder
    extends RecyclerView.ViewHolder
  {
    public ViewHolder(View paramView)
    {
      super();
    }
    
    public abstract void a(VideoData paramVideoData);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvNotAvailableFragment.UpsellVideoAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */