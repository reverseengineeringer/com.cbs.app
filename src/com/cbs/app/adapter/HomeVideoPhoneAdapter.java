package com.cbs.app.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.ThumbNailView;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.ImageLoaderLRU;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;

public class HomeVideoPhoneAdapter
  extends BaseAdapter
{
  protected static final String a = HomeVideoPhoneAdapter.class.getSimpleName();
  private Context b;
  private VideoData[] c = null;
  private ImageLoaderLRU d = new ImageLoaderLRU();
  private int e;
  private int f;
  
  public HomeVideoPhoneAdapter(Context paramContext, VideoData[] paramArrayOfVideoData)
  {
    b = paramContext;
    if (paramArrayOfVideoData != null) {
      c = ((VideoData[])paramArrayOfVideoData.clone());
    }
  }
  
  public int getCount()
  {
    if (c != null) {
      return c.length;
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      e = Util.b(b);
      f = ((int)(e * 0.36F));
      paramView = new CustomAdapterViewGroup(b, e, f, true);
    }
    for (;;)
    {
      paramViewGroup = c[paramInt];
      if (paramViewGroup != null)
      {
        c.a.setText(paramViewGroup.getSeriesTitle());
        String str = VideoUtil.d(paramViewGroup);
        if (str != null)
        {
          str = ImageHelper.a(str, e / 2);
          VideoUtil.a(b, b, paramViewGroup);
          d.a(b, str, e / 2);
        }
        c.b.setText(VideoUtil.b(paramViewGroup));
        c.c.setText(Util.b(paramViewGroup));
        c.d.setText(Util.c(paramViewGroup));
        if (a != null)
        {
          a.setTag(paramViewGroup);
          a.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(final View paramAnonymousView)
            {
              paramAnonymousView = (VideoData)paramAnonymousView.getTag();
              final NavigationActivity localNavigationActivity;
              if (paramAnonymousView != null)
              {
                localNavigationActivity = (NavigationActivity)HomeVideoPhoneAdapter.a(HomeVideoPhoneAdapter.this);
                if (localNavigationActivity != null)
                {
                  localObject = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
                  if (localObject == null) {
                    break label46;
                  }
                  Util.a(localNavigationActivity, (ShowItem)localObject, paramAnonymousView);
                }
              }
              return;
              label46:
              Object localObject = new ShowServiceManager(localNavigationActivity);
              ((ShowServiceManager)localObject).setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
              {
                public final void a()
                {
                  ShowItem localShowItem = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
                  Util.a(localNavigationActivity, localShowItem, paramAnonymousView);
                }
                
                public final void a(int paramAnonymous2Int) {}
              });
              ((ShowServiceManager)localObject).getEverything();
            }
          });
        }
      }
      return paramView;
      paramView = (CustomAdapterViewGroup)paramView;
      b.setBitmap(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.HomeVideoPhoneAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */