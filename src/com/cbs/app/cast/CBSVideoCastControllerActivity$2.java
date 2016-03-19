package com.cbs.app.cast;

import android.widget.ImageView;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;

final class CBSVideoCastControllerActivity$2
  extends d
{
  CBSVideoCastControllerActivity$2(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity) {}
  
  public final void a(double paramDouble, boolean paramBoolean)
  {
    super.a(paramDouble, paramBoolean);
    CBSVideoCastControllerActivity.c();
    new StringBuilder("onVolumeChanged: ").append(paramDouble).append(" isMute: ").append(paramBoolean);
    CBSVideoCastControllerActivity.a(a, paramDouble);
    CBSVideoCastControllerActivity.a(a, paramBoolean);
    if (CBSVideoCastControllerActivity.a(a) == 0.0D) {
      CBSVideoCastControllerActivity.a(a, true);
    }
    if (CBSVideoCastControllerActivity.b(a) != null)
    {
      if (CBSVideoCastControllerActivity.c(a)) {
        CBSVideoCastControllerActivity.b(a).setSelected(false);
      }
    }
    else {
      return;
    }
    CBSVideoCastControllerActivity.b(a).setSelected(true);
  }
  
  public final void b()
  {
    super.b();
    CBSVideoCastControllerActivity.c();
    CBSVideoCastControllerActivity.d(a);
  }
  
  public final void b(int paramInt)
  {
    super.b(paramInt);
    CBSVideoCastControllerActivity.c();
    if (paramInt == 2100)
    {
      CBSVideoCastControllerActivity.c();
      a.a("Failed to launch video. Please try again later.");
    }
  }
  
  public final void c()
  {
    super.c();
    CBSVideoCastControllerActivity.c();
    CBSVideoCastControllerActivity.e(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */