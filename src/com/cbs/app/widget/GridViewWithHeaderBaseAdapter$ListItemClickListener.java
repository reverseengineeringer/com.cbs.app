package com.cbs.app.widget;

import android.view.View;
import android.view.View.OnClickListener;

public class GridViewWithHeaderBaseAdapter$ListItemClickListener
  implements View.OnClickListener
{
  private final int b;
  
  public GridViewWithHeaderBaseAdapter$ListItemClickListener(GridViewWithHeaderBaseAdapter paramGridViewWithHeaderBaseAdapter, int paramInt)
  {
    b = paramInt;
  }
  
  public void onClick(View paramView)
  {
    GridViewWithHeaderBaseAdapter.a(a, paramView, b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.GridViewWithHeaderBaseAdapter.ListItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */