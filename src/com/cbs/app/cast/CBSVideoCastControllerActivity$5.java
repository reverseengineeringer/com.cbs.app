package com.cbs.app.cast;

import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.libraries.cast.companionlibrary.cast.b.b;
import com.google.android.libraries.cast.companionlibrary.cast.b.d;
import com.google.android.libraries.cast.companionlibrary.cast.player.c;

final class CBSVideoCastControllerActivity$5
  implements View.OnClickListener
{
  CBSVideoCastControllerActivity$5(CBSVideoCastControllerActivity paramCBSVideoCastControllerActivity) {}
  
  public final void onClick(View paramView)
  {
    if (!CBSVideoCastControllerActivity.f(a)) {
      CBSVideoCastControllerActivity.g(a).setEnabled(true);
    }
    try
    {
      CBSVideoCastControllerActivity.h(a).b();
      return;
    }
    catch (d paramView)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to temporary network issue", paramView);
      a.a(a.getResources().getString(2131230898));
      return;
    }
    catch (b paramView)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to network issues", paramView);
      a.a(a.getResources().getString(2131230898));
      return;
    }
    catch (Exception paramView)
    {
      Log.e(CBSVideoCastControllerActivity.c(), "Failed to toggle playback due to other issues", paramView);
      a.a(a.getResources().getString(2131230901));
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastControllerActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */