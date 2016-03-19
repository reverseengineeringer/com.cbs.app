package com.cbs.app.adapter.mycbs;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.view.fragments.show.model.ShowAssets;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MyShowAdapter
  extends BaseAdapter
{
  private static final String a = MyShowAdapter.class.getSimpleName();
  private final LayoutInflater b;
  private int c;
  private boolean d = true;
  private Context e;
  private List<ShowItem> f;
  private FavoriteShowList g;
  
  public MyShowAdapter(Context paramContext, List<ShowItem> paramList, boolean paramBoolean, int paramInt, FavoriteShowList paramFavoriteShowList)
  {
    new StringBuilder("constructor list size is: ").append(paramList.size());
    e = paramContext;
    f = paramList;
    c = paramInt;
    d = paramBoolean;
    b = LayoutInflater.from(paramContext);
    g = paramFavoriteShowList;
  }
  
  private void a(int paramInt, MyShowViewHolder paramMyShowViewHolder)
  {
    ShowItem localShowItem = (ShowItem)f.get(paramInt);
    Object localObject = null;
    if (g != null) {
      localObject = g.getShowList();
    }
    if ((localShowItem != null) && (paramMyShowViewHolder != null))
    {
      if ((localObject == null) || (((ArrayList)localObject).size() <= 0)) {
        break label164;
      }
      localObject = ((ArrayList)localObject).iterator();
      FavoriteShow localFavoriteShow;
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        localFavoriteShow = (FavoriteShow)((Iterator)localObject).next();
        new StringBuilder("comparing ").append(showId).append(" to ").append(localFavoriteShow.getCbsShowId());
      } while (showId != localFavoriteShow.getCbsShowId());
    }
    label164:
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt != 0)
      {
        c.setVisibility(0);
        c.setImageResource(2130837711);
        return;
      }
      c.setVisibility(0);
      c.setImageResource(2130837993);
      return;
    }
  }
  
  public int getCount()
  {
    return f.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 4;
    View localView;
    ShowItem localShowItem;
    FavoriteShow localFavoriteShow;
    if (paramView == null)
    {
      paramView = new MyShowViewHolder();
      localView = b.inflate(c, paramViewGroup, false);
      a = ((TextView)localView.findViewById(2131689880));
      b = ((ImageView)localView.findViewById(2131689878));
      c = ((ImageView)localView.findViewById(2131689879));
      d = ((TextView)localView.findViewById(2131689881));
      localView.setTag(paramView);
      localShowItem = (ShowItem)f.get(paramInt);
      if (localShowItem != null)
      {
        a.setText(title);
        if (d != null) {
          d.setText(tuneInTime);
        }
        localFavoriteShow = new FavoriteShow();
        localFavoriteShow.setCbsShowId(showId);
        if (g == null) {
          break label513;
        }
      }
    }
    label288:
    label500:
    label506:
    label513:
    for (paramViewGroup = g.getShowList();; paramViewGroup = null)
    {
      int j;
      int k;
      if ((paramViewGroup != null) && (paramViewGroup.contains(localFavoriteShow)))
      {
        c.setVisibility(0);
        if (!d) {
          a.setTextColor(e.getResources().getColor(2131558439));
        }
        j = Util.a(e, 160.0D);
        k = Util.a(e, 90.0D);
        if (d) {
          break label506;
        }
        j = Util.a(e, 6.0D);
        k = Util.b(e);
        if (!Util.k(e)) {
          break label500;
        }
        j = Math.round(k / i) - i * j;
      }
      for (i = Math.round(j * 0.5625F);; i = k)
      {
        paramViewGroup = new RelativeLayout.LayoutParams(j, i);
        if (d) {
          paramViewGroup.addRule(9, -1);
        }
        b.setLayoutParams(paramViewGroup);
        b.setImageBitmap(null);
        if ((showAssets != null) && (showAssets.filePathMycbsShowImage != null))
        {
          new StringBuilder("orignial path is: ").append(showAssets.filePathMycbsShowImage);
          ImageHelper.a(ImageHelper.c(showAssets.filePathMycbsShowImage, j), b);
          paramViewGroup = paramView;
        }
        for (;;)
        {
          a(paramInt, paramViewGroup);
          return localView;
          c.setVisibility(4);
          a.setTextColor(e.getResources().getColor(2131558439));
          break;
          b.setImageResource(2130837990);
          Log.e(a, "failed to get filepath");
          paramViewGroup = paramView;
          continue;
          paramViewGroup = (MyShowViewHolder)paramView.getTag();
          localView = paramView;
        }
        i = 3;
        break label288;
      }
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
  
  public void setNewMyShowList(FavoriteShowList paramFavoriteShowList)
  {
    g = paramFavoriteShowList;
  }
  
  public static class MyShowViewHolder
  {
    public TextView a;
    public ImageView b;
    public ImageView c;
    public TextView d;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.mycbs.MyShowAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */