package com.cbs.app.view.fragments.show.videos;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.cbs.app.listener.VideoListViewOnScrollListener;
import com.cbs.app.view.utils.Preferences;
import java.util.ArrayList;

public class VideoListFragment$SeasonDropdownAdapter
  extends BaseAdapter
{
  private ArrayList<Integer> b;
  private Context c;
  
  public VideoListFragment$SeasonDropdownAdapter(Context paramContext, ArrayList<Integer> paramArrayList)
  {
    c = paramArrayList;
    ArrayList localArrayList;
    b = localArrayList;
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)c.getSystemService("layout_inflater")).inflate(2130903248, null);
      paramViewGroup = new a();
      a = ((TextView)paramView.findViewById(2131690210));
      paramView.setTag(paramViewGroup);
      if ((getItem(paramInt) != null) && (paramViewGroup != null))
      {
        i = (int)(a.getResources().getDisplayMetrics().density * 50.0F + 0.5F);
        a.setHeight(i);
        a.setWidth(VideoListFragment.q(a).getWidth() - 10);
        a.setPadding(10, 8, 0, 0);
        a.setTextColor(-16777216);
        a.setBackgroundResource(2131558596);
        if ((VideoListFragment.g(a) != null) && (VideoListFragment.g(a).size() > paramInt))
        {
          i = ((Integer)VideoListFragment.g(a).get(paramInt)).intValue();
          if (i != 1111) {
            break label233;
          }
          a.setText("Clips");
        }
      }
    }
    for (;;)
    {
      a.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          VideoListFragment.r(a);
          VideoListFragment.a(a, null);
          VideoListViewOnScrollListener.a();
          a.setSeasonSelection(paramInt);
          Preferences.a(VideoListFragment.s(a), "previousSeasonSelection", paramInt);
          if (VideoListFragment.j(a) != null) {
            VideoListFragment.j(a).dismiss();
          }
        }
      });
      return paramView;
      paramViewGroup = (a)paramView.getTag();
      break;
      label233:
      if (i == 2222) {
        a.setText("Full Episodes");
      } else {
        a.setText("Season " + i);
      }
    }
  }
  
  final class a
  {
    TextView a;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.SeasonDropdownAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */