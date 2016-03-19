package com.cbs.app.view;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;

final class AbstractAsyncFragment$1
  implements Runnable
{
  AbstractAsyncFragment$1(AbstractAsyncFragment paramAbstractAsyncFragment) {}
  
  public final void run()
  {
    if ((AbstractAsyncFragment.a(a) != null) && (AbstractAsyncFragment.a(a).isShowing()) && (a.getActivity() != null) && (!a.getActivity().isFinishing())) {
      AbstractAsyncFragment.a(a).cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractAsyncFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */