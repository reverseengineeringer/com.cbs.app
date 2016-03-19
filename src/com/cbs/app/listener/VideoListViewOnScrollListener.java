package com.cbs.app.listener;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.cbs.app.view.fragments.show.videos.AbstractVideoListFragment;

public class VideoListViewOnScrollListener
  implements AbsListView.OnScrollListener
{
  private static final String a = VideoListViewOnScrollListener.class.getSimpleName();
  private static int b;
  private AppCompatActivity c;
  private int d;
  
  public VideoListViewOnScrollListener(Activity paramActivity, int paramInt)
  {
    c = ((AppCompatActivity)paramActivity);
    d = paramInt;
  }
  
  public static void a()
  {
    b = 0;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt1 += paramInt2;
    new StringBuilder("OnScroll :").append(paramInt1).append(" ").append(b).append(" total ").append(paramInt3);
    if ((paramInt1 == paramInt3) && (b != paramInt1))
    {
      new StringBuilder("Last").append(d);
      b = paramInt1;
      if (c != null)
      {
        paramAbsListView = c.getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if (paramAbsListView != null)
        {
          paramAbsListView = paramAbsListView.getChildFragmentManager().findFragmentByTag("fragment_show_videos");
          if (paramAbsListView != null)
          {
            paramAbsListView = paramAbsListView.getChildFragmentManager().findFragmentByTag("show_video_list_fragment");
            if ((paramAbsListView != null) && (((AbstractVideoListFragment)paramAbsListView).getPreviousBatchSize() > 59)) {
              ((AbstractVideoListFragment)paramAbsListView).a(d);
            }
          }
        }
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.listener.VideoListViewOnScrollListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */