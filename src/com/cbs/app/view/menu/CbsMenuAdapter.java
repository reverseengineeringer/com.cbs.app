package com.cbs.app.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class CbsMenuAdapter
  extends BaseAdapter
{
  private Context a;
  private ArrayList<CBSMenuItem> b;
  
  public CbsMenuAdapter(Context paramContext, ArrayList<CBSMenuItem> paramArrayList)
  {
    a = paramContext;
    b = paramArrayList;
  }
  
  public final void a(String paramString)
  {
    b.get(0)).a = paramString;
    notifyDataSetChanged();
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public int getCount()
  {
    if (b == null) {
      return 0;
    }
    return b.size();
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
    if (paramView == null) {
      paramView = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(2130903215, paramViewGroup, false);
    }
    for (;;)
    {
      ((TextView)paramView).setText(b.get(paramInt)).a);
      return paramView;
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
}

/* Location:
 * Qualified Name:     com.cbs.app.view.menu.CbsMenuAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */