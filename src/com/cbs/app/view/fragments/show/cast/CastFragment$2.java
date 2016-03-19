package com.cbs.app.view.fragments.show.cast;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.utils.Util;

final class CastFragment$2
  implements BackButtonListener
{
  CastFragment$2(CastFragment paramCastFragment) {}
  
  public final boolean c()
  {
    CastFragment.g();
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (CastFragment.b(a) != null)
    {
      bool1 = bool2;
      if (CastFragment.c(a))
      {
        if ((!Util.g(CastFragment.d(a))) && (!Util.f(CastFragment.e(a)))) {
          break label184;
        }
        switch (CastFragment.f(a))
        {
        default: 
          CastFragment.g();
        }
      }
    }
    for (;;)
    {
      bool1 = true;
      label184:
      do
      {
        return bool1;
        CastFragment.g();
        localObject = a.getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
        if ((localObject != null) && ((localObject instanceof ShowFragmentV2)))
        {
          localObject = (ShowFragmentV2)localObject;
          ((ShowFragmentV2)localObject).e();
          ((ShowFragmentV2)localObject).f();
        }
        return true;
        CastFragment.g();
        CastFragment.a(a);
        break;
        CastFragment.g();
        CastFragment.g(a);
        break;
        CastFragment.g();
        CastFragment.a();
        break;
        if (Util.i(CastFragment.h(a))) {
          break label212;
        }
        bool1 = bool2;
      } while (!Util.j(CastFragment.i(a)));
      label212:
      Object localObject = a.getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject != null) && ((localObject instanceof ShowFragmentV2))) {
        ((ShowFragmentV2)localObject).e();
      }
    }
  }
  
  public final String getTag()
  {
    return CastFragment.g();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */