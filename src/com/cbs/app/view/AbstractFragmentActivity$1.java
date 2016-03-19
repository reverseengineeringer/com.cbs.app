package com.cbs.app.view;

import com.cbs.app.cast.CBSMiniController;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class AbstractFragmentActivity$1
  extends d
{
  AbstractFragmentActivity$1(AbstractFragmentActivity paramAbstractFragmentActivity) {}
  
  public final void a(ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean)
  {
    super.a(paramApplicationMetadata, paramString, paramBoolean);
    paramApplicationMetadata = AbstractFragmentActivity.a;
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
    String str = AbstractFragmentActivity.a;
  }
  
  public final void d()
  {
    super.d();
    String str = AbstractFragmentActivity.a;
    a.b();
  }
  
  public final void e()
  {
    super.e();
    Object localObject = AbstractFragmentActivity.a;
    localObject = MainApplication.getVideoCastManager();
    CBSMiniController localCBSMiniController = (CBSMiniController)a.findViewById(2131690175);
    ((c)localObject).b(localCBSMiniController);
    localCBSMiniController.setVisibility(8);
    a.c();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractFragmentActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */