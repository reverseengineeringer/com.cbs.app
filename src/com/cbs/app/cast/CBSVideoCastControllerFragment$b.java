package com.cbs.app.cast;

import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class CBSVideoCastControllerFragment$b
  extends com.google.android.libraries.cast.companionlibrary.cast.a.d
{
  private CBSVideoCastControllerFragment$b(CBSVideoCastControllerFragment paramCBSVideoCastControllerFragment) {}
  
  public final void a()
  {
    CBSVideoCastControllerFragment.b(a).d(true);
  }
  
  public final void a(int paramInt)
  {
    CBSVideoCastControllerFragment.b(a).d(false);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    new StringBuilder("onFailed(): ").append(a.getString(paramInt1)).append(", status code: ").append(paramInt2);
    if ((paramInt2 == 2100) || (paramInt2 == 2102)) {
      ((CBSVideoCastControllerActivity)a.getActivity()).a(a.getString(paramInt1));
    }
  }
  
  public final void b()
  {
    CBSVideoCastControllerFragment.j(a);
  }
  
  public final void c()
  {
    try
    {
      CBSVideoCastControllerFragment.a(a, CBSVideoCastControllerFragment.g(a).J());
      CBSVideoCastControllerFragment.h(a);
      CBSVideoCastControllerFragment.i(a);
      return;
    }
    catch (com.google.android.libraries.cast.companionlibrary.cast.b.d locald) {}catch (b localb) {}
  }
  
  public final void c(int paramInt)
  {
    CBSVideoCastControllerFragment.b(a).b();
  }
  
  public final void e()
  {
    super.e();
    CBSVideoCastControllerFragment.b(a).b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */