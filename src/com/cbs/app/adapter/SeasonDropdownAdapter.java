package com.cbs.app.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class SeasonDropdownAdapter
  extends BaseAdapter
{
  private int[] a;
  private Context b;
  
  public int getCount()
  {
    return a.length;
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new TextView(b);
    paramView.setHeight(100);
    paramView.setWidth(300);
    paramView.setPadding(10, 8, 0, 0);
    paramView.setTextColor(-16777216);
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView) {}
    });
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adapter.SeasonDropdownAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */