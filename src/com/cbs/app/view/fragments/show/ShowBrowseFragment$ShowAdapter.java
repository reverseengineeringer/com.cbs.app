package com.cbs.app.view.fragments.show;

import android.animation.ObjectAnimator;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.view.fragments.show.model.ShowItem;
import java.util.ArrayList;

public class ShowBrowseFragment$ShowAdapter
  extends RecyclerView.Adapter<ViewHolder>
{
  private ArrayList<ShowItem> b;
  
  public ShowBrowseFragment$ShowAdapter(ShowBrowseFragment paramShowBrowseFragment)
  {
    f = false;
  }
  
  private static void a(ViewHolder paramViewHolder, String paramString, int paramInt)
  {
    d.setVisibility(0);
    String str = String.valueOf(paramInt);
    if (paramInt > 999) {
      str = "999+";
    }
    b.setText(str);
    str = paramString;
    if (paramInt > 1) {
      str = paramString + "s";
    }
    c.setText(str);
  }
  
  public final void a(ArrayList<ShowItem> paramArrayList)
  {
    a.f = false;
    if (paramArrayList != null)
    {
      b = paramArrayList;
      notifyDataSetChanged();
    }
  }
  
  public final boolean a(int paramInt)
  {
    if (b != null) {
      if (b.size() != paramInt) {}
    }
    while (paramInt == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public int getItemCount()
  {
    if (b != null) {
      return b.size() + 1;
    }
    return 0;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (a(paramInt)) {
      return 0;
    }
    return 1;
  }
  
  public class ViewHolder
    extends RecyclerView.ViewHolder
    implements View.OnClickListener
  {
    ImageView a;
    TextView b;
    TextView c;
    LinearLayout d;
    ObjectAnimator e;
    int f;
    
    public ViewHolder(FrameLayout paramFrameLayout, int paramInt)
    {
      super();
      if (paramInt == 1)
      {
        getLayoutParamswidth = ShowBrowseFragment.c(a);
        a = ((ImageView)paramFrameLayout.findViewById(2131690293));
        b = ((TextView)paramFrameLayout.findViewById(2131690295));
        d = ((LinearLayout)paramFrameLayout.findViewById(2131690294));
        c = ((TextView)paramFrameLayout.findViewById(2131690296));
        d.getLayoutParams().width = ShowBrowseFragment.c(a);
        ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
        width = ShowBrowseFragment.c(a);
        height = ShowBrowseFragment.d(a);
        paramFrameLayout.setOnClickListener(this);
        e = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] { 0.0F, 1.0F });
        e.setDuration(500L);
        e.start();
        return;
      }
      paramFrameLayout.setMinimumHeight((int)(ShowBrowseFragment.d(a) / 2.0F));
    }
    
    public void onClick(View paramView)
    {
      if (!a.f)
      {
        a.f = true;
        a.a.a((ShowItem)ShowBrowseFragment.ShowAdapter.a(ShowBrowseFragment.ShowAdapter.this).get(f));
        if (a.g != null) {
          a.g.collapseActionView();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowBrowseFragment.ShowAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */