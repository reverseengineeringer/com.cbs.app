package com.cbs.app.view.fragments.show.cast;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;

final class CastMemberBioFragment$1
  implements View.OnClickListener
{
  CastMemberBioFragment$1(CastMemberBioFragment paramCastMemberBioFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = CastMemberBioFragment.a(a).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
    if (paramView != null)
    {
      paramView = (CastFragment)paramView.getChildFragmentManager().findFragmentByTag("fragment_show_cast");
      if (paramView != null) {
        paramView.e();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberBioFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */