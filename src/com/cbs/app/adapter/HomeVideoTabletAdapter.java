package com.cbs.app.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter;

public class HomeVideoTabletAdapter
  extends GridViewWithHeaderBaseAdapter
{
  protected static final String a = HomeVideoTabletAdapter.class.getSimpleName();
  private Context e;
  private VideoData[] f;
  private int g = 240;
  private int h;
  
  public HomeVideoTabletAdapter(Context paramContext, VideoData[] paramArrayOfVideoData)
  {
    super(paramContext);
    e = paramContext;
    if (paramArrayOfVideoData != null) {
      f = paramArrayOfVideoData;
    }
    a(0.9F);
    a();
  }
  
  private void a()
  {
    if ((Util.i(e)) || (Util.j(e)))
    {
      int j = Util.b(e);
      int i = 3;
      if (Util.k(e)) {
        i = 4;
      }
      g = (j / i);
      h = ((int)(g * d));
    }
  }
  
  protected final View a(int paramInt, View paramView)
  {
    if (paramView == null)
    {
      a();
      paramView = new CustomAdapterViewGroup(e, g, h, false);
    }
    for (;;)
    {
      CustomAdapterViewGroup localCustomAdapterViewGroup = (CustomAdapterViewGroup)paramView;
      VideoData localVideoData = f[paramInt];
      if ((localCustomAdapterViewGroup != null) && (localVideoData != null))
      {
        c.a.setText(localVideoData.getSeriesTitle());
        String str = VideoUtil.d(localVideoData);
        if (str != null)
        {
          str = ImageHelper.a(str, g);
          VideoUtil.a(e, b, localVideoData);
          ImageHelper.a(str, b);
        }
        c.b.setText(VideoUtil.b(localVideoData));
        c.c.setText(Util.b(localVideoData));
        c.d.setText(Util.c(localVideoData));
      }
      return paramView;
    }
  }
  
  public int getItemCount()
  {
    if (f == null) {
      return 0;
    }
    return f.length;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public int getViewTypeCount()
  {
    int i = getCount();
    if (i > 1) {
      return i;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.HomeVideoTabletAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */