package com.cbs.app.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import com.cbs.app.adapter.CustomAdapterViewGroup;

public abstract class GridViewWithHeaderBaseAdapter
  extends BaseAdapter
{
  public static final String b = GridViewWithHeaderBaseAdapter.class.getSimpleName();
  private final Context a;
  protected int c;
  protected float d;
  private GridItemClickListener e;
  
  public GridViewWithHeaderBaseAdapter(Context paramContext)
  {
    a = paramContext;
    c = 1;
  }
  
  protected abstract View a(int paramInt, View paramView);
  
  protected LinearLayout a(int paramInt1, int paramInt2)
  {
    LinearLayout localLinearLayout = new LinearLayout(a);
    localLinearLayout.setOrientation(0);
    int i = 0;
    if (i < c)
    {
      int j = c * paramInt1 + i;
      View localView;
      if (j < getItemCount())
      {
        localView = a(j, null);
        localView.setVisibility(0);
        localView.setOnClickListener(new ListItemClickListener(j));
        label78:
        localLinearLayout.addView(localView);
        if (!(localView instanceof CustomAdapterViewGroup)) {
          break label139;
        }
        ((CustomAdapterViewGroup)localView).setWidthAndHeight(paramInt2, (int)(paramInt2 * d));
      }
      for (;;)
      {
        i += 1;
        break;
        localView = new View(a);
        localView.setVisibility(4);
        break label78;
        label139:
        ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
        width = paramInt2;
        localView.setLayoutParams(localLayoutParams);
      }
    }
    return localLinearLayout;
  }
  
  protected final void a(float paramFloat)
  {
    d = paramFloat;
  }
  
  protected void a(int paramInt1, LinearLayout paramLinearLayout, int paramInt2)
  {
    int i = 0;
    if (i < c)
    {
      int j = c * paramInt1 + i;
      Object localObject2 = paramLinearLayout.getChildAt(i);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new View(a);
        paramLinearLayout.addView((View)localObject1);
      }
      if ((localObject1 instanceof CustomAdapterViewGroup))
      {
        ((CustomAdapterViewGroup)localObject1).setWidthAndHeight(paramInt2, (int)(paramInt2 * d));
        label84:
        if (j >= getItemCount()) {
          break label146;
        }
        ((View)localObject1).setVisibility(0);
        ((View)localObject1).setOnClickListener(new ListItemClickListener(j));
      }
      for (;;)
      {
        i += 1;
        break;
        localObject2 = ((View)localObject1).getLayoutParams();
        width = paramInt2;
        ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
        break label84;
        label146:
        ((View)localObject1).setVisibility(4);
      }
    }
  }
  
  public final int getCount()
  {
    return (int)Math.ceil(getItemCount() * 1.0F / c);
  }
  
  public abstract int getItemCount();
  
  public final int getNumColumns()
  {
    return c;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    if (paramViewGroup != null) {
      i = paramViewGroup.getWidth() / c;
    }
    while (paramView == null)
    {
      return a(paramInt, i);
      if (paramView != null) {
        i = paramView.getWidth() / c;
      }
    }
    paramView = (LinearLayout)paramView;
    a(paramInt, paramView, i);
    return paramView;
  }
  
  public void setNumColumns(int paramInt)
  {
    c = paramInt;
    notifyDataSetChanged();
  }
  
  public final void setOnGridClickListener(GridItemClickListener paramGridItemClickListener)
  {
    e = paramGridItemClickListener;
  }
  
  public static abstract interface GridItemClickListener
  {
    public abstract void a(int paramInt);
  }
  
  protected class ListItemClickListener
    implements View.OnClickListener
  {
    private final int b;
    
    public ListItemClickListener(int paramInt)
    {
      b = paramInt;
    }
    
    public void onClick(View paramView)
    {
      GridViewWithHeaderBaseAdapter.a(GridViewWithHeaderBaseAdapter.this, paramView, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.GridViewWithHeaderBaseAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */