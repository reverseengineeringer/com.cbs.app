package com.cbs.app.view.fragments;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.ShowSocialDialog;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class ShowFragmentV2$8
  implements View.OnClickListener
{
  ShowFragmentV2$8(ShowFragmentV2 paramShowFragmentV2, Show paramShow, ShowConfig paramShowConfig) {}
  
  public final void onClick(View paramView)
  {
    ShowSocialDialog.a(ShowFragmentV2.B(c), a, b);
    if (Util.e(ShowFragmentV2.C(c)))
    {
      paramView = new HashMap();
      paramView.put("Show Title", ShowFragmentV2.D(c));
      AnalyticsManager.c(ShowFragmentV2.E(c), Action.bf, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */