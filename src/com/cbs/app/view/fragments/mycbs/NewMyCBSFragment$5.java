package com.cbs.app.view.fragments.mycbs;

import android.support.v7.app.AppCompatActivity;
import com.cbs.app.view.utils.Util;

final class NewMyCBSFragment$5
  implements MyShowVideoFragment.MenuChangeListener
{
  NewMyCBSFragment$5(NewMyCBSFragment paramNewMyCBSFragment) {}
  
  public final void a(int paramInt)
  {
    NewMyCBSFragment.c(paramInt);
    if (Util.e(a.getContext())) {
      NewMyCBSFragment.e(a).invalidateOptionsMenu();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */