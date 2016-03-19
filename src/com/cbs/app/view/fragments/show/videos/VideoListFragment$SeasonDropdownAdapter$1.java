package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import com.cbs.app.listener.VideoListViewOnScrollListener;
import com.cbs.app.view.utils.Preferences;

final class VideoListFragment$SeasonDropdownAdapter$1
  implements View.OnClickListener
{
  VideoListFragment$SeasonDropdownAdapter$1(VideoListFragment.SeasonDropdownAdapter paramSeasonDropdownAdapter, int paramInt) {}
  
  public final void onClick(View paramView)
  {
    VideoListFragment.r(b.a);
    VideoListFragment.a(b.a, null);
    VideoListViewOnScrollListener.a();
    b.a.setSeasonSelection(a);
    Preferences.a(VideoListFragment.s(b.a), "previousSeasonSelection", a);
    if (VideoListFragment.j(b.a) != null) {
      VideoListFragment.j(b.a).dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.SeasonDropdownAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */