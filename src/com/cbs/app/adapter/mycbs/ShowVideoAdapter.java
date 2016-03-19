package com.cbs.app.adapter.mycbs;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.GridLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.adapter.CustomAdapterViewGroup;
import com.cbs.app.adapter.CustomAdapterViewGroup.TextGroup;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.ShowServiceManager.ShowServiceManagerListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.ShowVideo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.Iterator;
import java.util.List;

public class ShowVideoAdapter
  extends BaseAdapter
{
  protected static final String a = ShowVideoAdapter.class.getSimpleName();
  private Context b;
  private ShowVideo[] c;
  private View.OnClickListener d;
  private boolean e;
  
  public ShowVideoAdapter(Context paramContext, ShowVideo[] paramArrayOfShowVideo, boolean paramBoolean, View.OnClickListener paramOnClickListener)
  {
    b = paramContext;
    c = ((ShowVideo[])paramArrayOfShowVideo.clone());
    e = paramBoolean;
    d = paramOnClickListener;
  }
  
  public int getCount()
  {
    return c.length;
  }
  
  public Object getItem(int paramInt)
  {
    return c[paramInt];
  }
  
  public long getItemId(int paramInt)
  {
    return c[paramInt].getShowId().intValue();
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ShowVideoViewHolder localShowVideoViewHolder;
    int i;
    int j;
    label113:
    Object localObject1;
    label233:
    label277:
    float f;
    label310:
    int m;
    Object localObject3;
    if (paramView == null)
    {
      paramView = (LayoutInflater)b.getSystemService("layout_inflater");
      localShowVideoViewHolder = new ShowVideoViewHolder();
      if (e)
      {
        b = ((LinearLayout)paramView.inflate(2130903271, paramViewGroup, false));
        paramView = b;
        c = ((LinearLayout)b.findViewById(2131690301));
        a = ((TextView)b.findViewById(2131690300));
        i = Util.b(b);
        if (!Util.k(b)) {
          break label955;
        }
        j = 4;
        int k = i / j;
        if (c != null) {
          c.removeAllViews();
        }
        paramViewGroup = c[paramInt];
        localObject1 = ShowServiceManager.a(paramViewGroup.getShowId().longValue());
        if (localObject1 != null) {
          a.setText(title);
        }
        if (VideoUtil.a(paramViewGroup.getVideoList()).size() <= 0) {
          break label818;
        }
        c.removeAllViewsInLayout();
        if (!e)
        {
          i = paramViewGroup.getVideoList().size();
          if (i <= j) {
            break label949;
          }
          i = Math.round(i / j);
          localObject1 = (GridLayout)c;
          ((GridLayout)localObject1).setColumnCount(j);
          ((GridLayout)localObject1).setRowCount(i);
          i = k;
        }
        paramViewGroup = paramViewGroup.getVideoList();
        localObject1 = paramViewGroup.iterator();
        k = 0;
        if (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (VideoData)((Iterator)localObject1).next();
          if (!e) {
            break label790;
          }
          f = 0.35F;
          m = (int)(f * i);
          localObject3 = new CustomAdapterViewGroup(b, i, m, e);
          ((CustomAdapterViewGroup)localObject3).setOnClickListener(d);
          Object localObject4 = new VideoDataHolder();
          a = paramInt;
          b = ((VideoData)localObject2);
          ((CustomAdapterViewGroup)localObject3).setTag(localObject4);
          if (((VideoData)localObject2).getSeriesTitle().length() > 15) {
            c.a.setTextAppearance(b, 2131427544);
          }
          c.a.setText(((VideoData)localObject2).getSeriesTitle());
          c.b.setText(VideoUtil.b((VideoData)localObject2));
          if (Util.b((VideoData)localObject2) != null) {
            c.c.setText(Util.b((VideoData)localObject2));
          }
          c.d.setText(Util.c((VideoData)localObject2));
          if ((e) && (a != null))
          {
            a.setTag(localObject2);
            a.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(final View paramAnonymousView)
              {
                final Object localObject1 = ShowVideoAdapter.a;
                paramAnonymousView = (VideoData)paramAnonymousView.getTag();
                if (paramAnonymousView != null)
                {
                  localObject1 = ShowVideoAdapter.a;
                  new StringBuilder("video pid:").append(paramAnonymousView.getPid());
                  localObject1 = (NavigationActivity)ShowVideoAdapter.a(ShowVideoAdapter.this);
                  localObject2 = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
                  if (localObject2 != null) {
                    Util.a((NavigationActivity)localObject1, (ShowItem)localObject2, paramAnonymousView);
                  }
                }
                else
                {
                  return;
                }
                Object localObject2 = new ShowServiceManager((Context)localObject1);
                ((ShowServiceManager)localObject2).setShowServiceListener(new ShowServiceManager.ShowServiceManagerListener()
                {
                  public final void a()
                  {
                    ShowItem localShowItem = ShowServiceManager.a(paramAnonymousView.getCbsShowId());
                    Util.a(localObject1, localShowItem, paramAnonymousView);
                  }
                  
                  public final void a(int paramAnonymous2Int) {}
                });
                ((ShowServiceManager)localObject2).getEverything();
              }
            });
          }
          localObject4 = VideoUtil.d((VideoData)localObject2);
          if (localObject4 != null)
          {
            if (!e) {
              break label798;
            }
            m = i / 3;
            label546:
            localObject4 = ImageHelper.a((String)localObject4, m);
            VideoUtil.a(b, b, (VideoData)localObject2);
            ImageHelper.a((String)localObject4, b);
          }
          if ((!Util.g(b)) && (!Util.f(b))) {
            break label805;
          }
          c.addView((View)localObject3);
          if (k != paramViewGroup.size() - 1)
          {
            localObject2 = new LinearLayout.LayoutParams(-1, Util.a(b, 1.0D));
            ((LinearLayout.LayoutParams)localObject2).setMargins(Util.a(b, 12.0D), 0, Util.a(b, 12.0D), 0);
            localObject3 = new View(b);
            ((View)localObject3).setBackgroundColor(b.getResources().getColor(2131558438));
            ((View)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject2);
            c.addView((View)localObject3);
          }
          label715:
          k += 1;
          if (k < j) {
            break label946;
          }
        }
        label728:
        b.setTag(localShowVideoViewHolder);
      }
    }
    for (;;)
    {
      paramView.setEnabled(false);
      return paramView;
      b = ((LinearLayout)paramView.inflate(2130903272, paramViewGroup, false));
      c = ((GridLayout)b.findViewById(2131690303));
      paramView = b;
      break;
      label790:
      f = 0.9F;
      break label310;
      label798:
      m = i;
      break label546;
      label805:
      c.addView((View)localObject3);
      break label715;
      label818:
      paramViewGroup = new TextView(b);
      paramViewGroup.setText("There are currently no videos  for this show.");
      if ((Util.i(b)) || (Util.j(b)))
      {
        paramInt = Math.round(b.getResources().getDimension(2131361986));
        paramViewGroup.setPadding(paramInt, paramInt, paramInt, paramInt);
        c.addView(paramViewGroup);
        break label728;
      }
      localObject1 = new LinearLayout.LayoutParams(-1, -2);
      paramInt = Math.round(b.getResources().getDimension(2131361986));
      ((LinearLayout.LayoutParams)localObject1).setMargins(paramInt, paramInt, paramInt, paramInt);
      c.addView(paramViewGroup, (ViewGroup.LayoutParams)localObject1);
      break label728;
      label946:
      break label277;
      label949:
      i = 1;
      break label233;
      label955:
      j = 3;
      break label113;
    }
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
  
  public static class ShowVideoViewHolder
  {
    public TextView a;
    public LinearLayout b;
    public ViewGroup c;
  }
  
  public static class VideoDataHolder
  {
    public int a;
    public VideoData b;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.mycbs.ShowVideoAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */