package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.service.SVODService;
import com.cbs.app.view.utils.Util;

final class DebugFragment$18
  implements View.OnClickListener
{
  DebugFragment$18(DebugFragment paramDebugFragment) {}
  
  public final void onClick(View paramView)
  {
    DebugFragment.b();
    if (Util.e(a.a)) {}
    SVODService.a(a.a, Util.B(a.a) + "/all-access/upsell-video/", "10", "250474E2-10D7-3C65-81D1-FD0168A60E99");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */