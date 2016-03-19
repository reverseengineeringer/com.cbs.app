package com.cbs.app.view.fragments.show.photos;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.fragments.ShowFragmentV2;

final class ShowPhotosFragment$1
  implements BackButtonListener
{
  ShowPhotosFragment$1(ShowPhotosFragment paramShowPhotosFragment) {}
  
  public final boolean c()
  {
    ShowPhotosFragment.a();
    Object localObject = a.getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
    if ((localObject != null) && ((localObject instanceof ShowFragmentV2)))
    {
      localObject = (ShowFragmentV2)localObject;
      ((ShowFragmentV2)localObject).e();
      ((ShowFragmentV2)localObject).f();
      return true;
    }
    return false;
  }
  
  public final String getTag()
  {
    return ShowPhotosFragment.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.ShowPhotosFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */