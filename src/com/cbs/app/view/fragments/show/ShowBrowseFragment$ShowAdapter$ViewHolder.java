package com.cbs.app.view.fragments.show;

import android.animation.ObjectAnimator;
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

public class ShowBrowseFragment$ShowAdapter$ViewHolder
  extends RecyclerView.ViewHolder
  implements View.OnClickListener
{
  ImageView a;
  TextView b;
  TextView c;
  LinearLayout d;
  ObjectAnimator e;
  int f;
  
  public ShowBrowseFragment$ShowAdapter$ViewHolder(ShowBrowseFragment.ShowAdapter paramShowAdapter, FrameLayout paramFrameLayout, int paramInt)
  {
    super(paramFrameLayout);
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
    if (!g.a.f)
    {
      g.a.f = true;
      g.a.a.a((ShowItem)ShowBrowseFragment.ShowAdapter.a(g).get(f));
      if (g.a.g != null) {
        g.a.g.collapseActionView();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowBrowseFragment.ShowAdapter.ViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */