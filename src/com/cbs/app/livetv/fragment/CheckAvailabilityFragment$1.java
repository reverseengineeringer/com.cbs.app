package com.cbs.app.livetv.fragment;

import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.widget.ContentFlipper;

final class CheckAvailabilityFragment$1
  extends SyncbakCallback
{
  CheckAvailabilityFragment$1(CheckAvailabilityFragment paramCheckAvailabilityFragment) {}
  
  public final void a(int paramInt, String paramString)
  {
    if (!a.isAdded()) {}
    do
    {
      return;
      CheckAvailabilityFragment.a(a);
      switch (paramInt)
      {
      }
    } while (a.a == null);
    a.a.a(2012, paramString);
    return;
    CheckAvailabilityFragment.c(a);
    CheckAvailabilityFragment.f(a).setDisplayedChild(2);
    CheckAvailabilityFragment.g(a);
    return;
    CheckAvailabilityFragment.c(a);
    CheckAvailabilityFragment.a(a, a.getContext());
  }
  
  public final void a(boolean paramBoolean)
  {
    if (!a.isAdded()) {}
    do
    {
      return;
      CheckAvailabilityFragment.b();
      new StringBuilder("onChannelsAvailabilityChecked() called with: isAvailable = [").append(paramBoolean).append("]");
      CheckAvailabilityFragment.a(a);
      if (paramBoolean)
      {
        CheckAvailabilityFragment.b(a);
        return;
      }
      CheckAvailabilityFragment.c(a);
    } while (a.a == null);
    if (CheckAvailabilityFragment.d(a))
    {
      a.a.a(2012, null);
      return;
    }
    a.a.a(1002, Integer.valueOf(CheckAvailabilityFragment.e(a)));
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!a.isAdded()) {}
    do
    {
      return;
      CheckAvailabilityFragment.b();
      new StringBuilder("onMvpdSupported() called with: isSupported = [").append(paramBoolean1).append("]");
    } while (a.a == null);
    if (paramBoolean2)
    {
      if (!paramBoolean1)
      {
        a.a.a(1013, null);
        return;
      }
      CheckAvailabilityFragment.h(a);
      CheckAvailabilityFragment.i(a).f();
      return;
    }
    a.a.a(1014, null);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.CheckAvailabilityFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */