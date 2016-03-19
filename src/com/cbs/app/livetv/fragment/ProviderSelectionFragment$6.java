package com.cbs.app.livetv.fragment;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import java.util.HashMap;

final class ProviderSelectionFragment$6
  implements View.OnFocusChangeListener
{
  ProviderSelectionFragment$6(ProviderSelectionFragment paramProviderSelectionFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramView = new HashMap();
      paramView.put("events", "event19");
      paramView.put("evar_6", ProviderSelectionFragment.c(a));
      paramView.put("evar_10", ProviderSelectionFragment.d(a));
      AnalyticsManager.a(a.getActivity(), Action.cI, paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */