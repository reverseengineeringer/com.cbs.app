package com.cbs.app.livetv.fragment;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

final class ProviderSelectionFragment$a
  extends RecyclerView.ItemDecoration
{
  private int a;
  private int b;
  private boolean c;
  
  public ProviderSelectionFragment$a(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
    c = false;
  }
  
  public final void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int i = paramRecyclerView.getChildAdapterPosition(paramView);
    int j = i % a;
    if (c)
    {
      left = (b - b * j / a);
      right = ((j + 1) * b / a);
      if (i < a) {
        top = b;
      }
      bottom = b;
    }
    do
    {
      return;
      left = (b * j / a);
      right = (b - (j + 1) * b / a);
    } while (i < a);
    top = b;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */