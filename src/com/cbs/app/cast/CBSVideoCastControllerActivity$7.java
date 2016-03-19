package com.cbs.app.cast;

import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.cbs.app.view.utils.VideoUtil;
import com.google.android.libraries.cast.companionlibrary.cast.b.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class CBSVideoCastControllerActivity$7
  implements View.OnClickListener
{
  CBSVideoCastControllerActivity$7(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity) {}
  
  public final void onClick(View paramView)
  {
    CBSVideoCastControllerActivity.c();
    if (CBSVideoCastControllerActivity.j(a).Y().b()) {
      if (paramView.isSelected())
      {
        paramView = CBSVideoCastControllerActivity.a(false);
        CBSVideoCastControllerActivity.k(a).setSelected(false);
        if (paramView.length > 0) {
          CBSVideoCastControllerActivity.j(a).a(paramView);
        }
      }
    }
    for (;;)
    {
      return;
      try
      {
        if (CBSVideoCastControllerActivity.j(a).J() == null) {
          continue;
        }
        paramView = CBSVideoCastControllerActivity.a(true);
        CBSVideoCastControllerActivity.k(a).setSelected(true);
        CBSVideoCastControllerActivity.j(a).a(VideoUtil.b(a));
        if (paramView.length <= 0) {
          continue;
        }
        CBSVideoCastControllerActivity.j(a).a(paramView);
        return;
      }
      catch (d paramView)
      {
        Log.e(CBSVideoCastControllerActivity.c(), "CC enable failed due to connection issues or no Media");
        return;
        VideoUtil.a(a);
        return;
      }
      catch (com.google.android.libraries.cast.companionlibrary.cast.b.b paramView)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */