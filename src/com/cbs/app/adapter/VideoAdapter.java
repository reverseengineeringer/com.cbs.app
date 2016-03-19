package com.cbs.app.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.ThumbNailView;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter.ListItemClickListener;

public class VideoAdapter
  extends GridViewWithHeaderBaseAdapter
{
  private final Context a;
  private VideoData[] e;
  private boolean f = false;
  private boolean g = false;
  private int h = -1;
  private int i = -1;
  private Show j;
  private boolean k = false;
  private int l;
  private int m;
  
  public VideoAdapter(Context paramContext, Show paramShow, VideoData[] paramArrayOfVideoData)
  {
    super(paramContext);
    a = paramContext;
    e = paramArrayOfVideoData;
    j = paramShow;
    a(0.36F);
  }
  
  protected final View a(int paramInt, View paramView)
  {
    int n = 1;
    CustomAdapterViewGroup localCustomAdapterViewGroup;
    VideoData localVideoData;
    if (paramView == null)
    {
      localCustomAdapterViewGroup = new CustomAdapterViewGroup(a, l, m, true);
      localVideoData = e[paramInt];
      if (localVideoData != null)
      {
        paramView = VideoUtil.d(localVideoData);
        if (paramView != null)
        {
          paramView = ImageHelper.a(paramView, l);
          VideoUtil.a(a, b, localVideoData);
          ImageHelper.a(paramView, b);
        }
        if ((!g) && (localVideoData.getFullEpisode()))
        {
          i = paramInt;
          g = true;
        }
        if ((!f) && (!localVideoData.getFullEpisode()))
        {
          h = paramInt;
          f = true;
        }
        if ((j == null) || (j.getCategory() == null) || (!j.getCategory().equals("Classics"))) {
          break label583;
        }
      }
    }
    for (;;)
    {
      Object localObject = "";
      paramView = (View)localObject;
      if (k)
      {
        paramView = (View)localObject;
        if (paramInt == i)
        {
          paramView = (View)localObject;
          if (n == 0)
          {
            if ((!Util.g(a)) && (!Util.f(a))) {
              break label534;
            }
            paramView = "Latest ";
          }
        }
      }
      label220:
      localObject = paramView;
      if (paramInt == h)
      {
        localObject = paramView;
        if (n == 0)
        {
          if ((!Util.g(a)) && (!Util.f(a))) {
            break label540;
          }
          localObject = "Latest ";
        }
      }
      label262:
      c.b.setVisibility(8);
      c.a.setTextAppearance(a, 2131427544);
      paramView = VideoUtil.b(localVideoData);
      paramInt = ((String)localObject).length();
      if (paramInt > 0)
      {
        paramView = (String)localObject + paramView;
        localObject = new SpannableString(paramView);
        ((Spannable)localObject).setSpan(new ForegroundColorSpan(a.getResources().getColor(2131558440)), 0, paramInt, 33);
        ((Spannable)localObject).setSpan(new ForegroundColorSpan(a.getResources().getColor(2131558439)), paramInt + 1, paramView.length() - 1, 33);
        c.a.setText((CharSequence)localObject);
        label418:
        if (localVideoData.getFullEpisode()) {
          c.c.setText(Util.b(localVideoData));
        }
        paramView = Util.c(localVideoData);
        c.d.setText(paramView);
        if (!Util.e(a)) {
          break label562;
        }
        if (a != null)
        {
          a.setTag(localVideoData);
          a.setVisibility(0);
          a.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(final View paramAnonymousView)
            {
              paramAnonymousView = (VideoData)paramAnonymousView.getTag();
              final NavigationActivity localNavigationActivity;
              if (paramAnonymousView != null)
              {
                localNavigationActivity = (NavigationActivity)VideoAdapter.a(VideoAdapter.this);
                localObject = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
                if (localObject != null) {
                  Util.a(localNavigationActivity, (ShowItem)localObject, paramAnonymousView);
                }
              }
              else
              {
                return;
              }
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
      label534:
      label540:
      label562:
      while (a == null)
      {
        return localCustomAdapterViewGroup;
        localCustomAdapterViewGroup = (CustomAdapterViewGroup)paramView;
        b.setBitmap(null);
        break;
        paramView = "Latest Episode ";
        break label220;
        localObject = "Latest Clip ";
        break label262;
        c.a.setText(paramView);
        break label418;
      }
      a.setVisibility(8);
      return localCustomAdapterViewGroup;
      label583:
      n = 0;
    }
  }
  
  protected final LinearLayout a(int paramInt1, int paramInt2)
  {
    LinearLayout localLinearLayout = new LinearLayout(a);
    localLinearLayout.setOrientation(0);
    l = paramInt2;
    m = ((int)(l * d));
    paramInt2 = 0;
    if (paramInt2 < c)
    {
      int n = c * paramInt1 + paramInt2;
      CustomAdapterViewGroup localCustomAdapterViewGroup;
      if (n < getItemCount())
      {
        localCustomAdapterViewGroup = (CustomAdapterViewGroup)a(n, null);
        localCustomAdapterViewGroup.setVisibility(0);
        localCustomAdapterViewGroup.setWidthAndHeight(l, m);
        localCustomAdapterViewGroup.setOnClickListener(new GridViewWithHeaderBaseAdapter.ListItemClickListener(this, n));
      }
      for (;;)
      {
        localLinearLayout.addView(localCustomAdapterViewGroup);
        paramInt2 += 1;
        break;
        localCustomAdapterViewGroup = new CustomAdapterViewGroup(a, l, m, true);
        localCustomAdapterViewGroup.setVisibility(4);
      }
    }
    return localLinearLayout;
  }
  
  public final VideoData a(int paramInt)
  {
    return e[paramInt];
  }
  
  protected final void a(int paramInt1, LinearLayout paramLinearLayout, int paramInt2)
  {
    l = paramInt2;
    m = ((int)(l * d));
    paramInt2 = 0;
    if (paramInt2 < c)
    {
      int n = c * paramInt1 + paramInt2;
      CustomAdapterViewGroup localCustomAdapterViewGroup = (CustomAdapterViewGroup)paramLinearLayout.getChildAt(paramInt2);
      if (localCustomAdapterViewGroup == null)
      {
        localCustomAdapterViewGroup = new CustomAdapterViewGroup(a, l, m, true);
        paramLinearLayout.addView(localCustomAdapterViewGroup);
        label83:
        if (n >= getItemCount()) {
          break label162;
        }
        localCustomAdapterViewGroup.setVisibility(0);
        localCustomAdapterViewGroup = (CustomAdapterViewGroup)a(n, localCustomAdapterViewGroup);
        localCustomAdapterViewGroup.setWidthAndHeight(l, m);
        localCustomAdapterViewGroup.setOnClickListener(new GridViewWithHeaderBaseAdapter.ListItemClickListener(this, n));
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        localCustomAdapterViewGroup.setWidthAndHeight(l, m);
        break label83;
        label162:
        localCustomAdapterViewGroup.setVisibility(4);
      }
    }
  }
  
  public int getItemCount()
  {
    if (e == null) {
      return 0;
    }
    return e.length;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public void setIsLatestAvailableSelected(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void setVideos(VideoData[] paramArrayOfVideoData)
  {
    e = paramArrayOfVideoData;
    notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.VideoAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */