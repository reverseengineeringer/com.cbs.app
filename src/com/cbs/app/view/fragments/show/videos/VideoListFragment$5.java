package com.cbs.app.view.fragments.show.videos;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;

final class VideoListFragment$5
  implements View.OnClickListener
{
  VideoListFragment$5(VideoListFragment paramVideoListFragment, View paramView) {}
  
  public final void onClick(View paramView)
  {
    int i;
    int j;
    if (!VideoListFragment.i(b))
    {
      VideoListFragment.a(b, true);
      VideoListFragment.j(b).showAsDropDown(paramView);
      VideoListFragment.a(b, b.getResources().getDisplayMetrics().density);
      i = (int)(250.0F * VideoListFragment.k(b) + 0.5F);
      j = VideoListFragment.l(b).getHeight() * VideoListFragment.g(b).size() + VideoListFragment.l(b).getLineHeight() + VideoListFragment.l(b).getPaddingBottom();
      if (j <= i) {
        break label203;
      }
    }
    for (;;)
    {
      VideoListFragment.j(b).update(VideoListFragment.l(b), VideoListFragment.l(b).getWidth(), i);
      paramView = null;
      if (a != null) {
        paramView = (ListView)a.findViewById(2131689777);
      }
      VideoListFragment.SeasonDropdownAdapter localSeasonDropdownAdapter = new VideoListFragment.SeasonDropdownAdapter(b, VideoListFragment.m(b), VideoListFragment.g(b));
      if (paramView != null) {
        paramView.setAdapter(localSeasonDropdownAdapter);
      }
      return;
      label203:
      i = j;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */