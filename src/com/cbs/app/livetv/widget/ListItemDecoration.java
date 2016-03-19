package com.cbs.app.livetv.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public class ListItemDecoration
  extends RecyclerView.ItemDecoration
{
  private int a;
  private int b;
  
  public ListItemDecoration(int paramInt)
  {
    a = paramInt;
    b = 1;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    if (paramRecyclerView.getChildAdapterPosition(paramView) == paramRecyclerView.getAdapter().getItemCount() - 1) {
      return;
    }
    if (b == 0)
    {
      right = a;
      return;
    }
    bottom = a;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.ListItemDecoration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */