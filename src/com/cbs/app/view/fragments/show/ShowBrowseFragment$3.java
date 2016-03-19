package com.cbs.app.view.fragments.show;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.view.fragments.show.model.ShowGroups;
import com.cbs.app.view.fragments.show.model.Shows;
import java.util.ArrayList;

final class ShowBrowseFragment$3
  implements View.OnClickListener
{
  ShowBrowseFragment$3(ShowBrowseFragment paramShowBrowseFragment) {}
  
  public final void onClick(View paramView)
  {
    if ((a.d.a()) && (!a.f))
    {
      a.f = true;
      int j = ashowGroups.size();
      paramView = new String[j];
      int i = 0;
      while (i < j)
      {
        paramView[i] = ashowGroups.get(i)).title;
        i += 1;
      }
      a.a.a(ShowBrowseFragment.b(a), paramView, a);
      ShowBrowseFragment.a(a, Action.bZ);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowBrowseFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */