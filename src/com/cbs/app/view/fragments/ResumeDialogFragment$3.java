package com.cbs.app.view.fragments;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import java.util.HashMap;

final class ResumeDialogFragment$3
  implements View.OnClickListener
{
  ResumeDialogFragment$3(ResumeDialogFragment paramResumeDialogFragment, Dialog paramDialog, HashMap paramHashMap, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    a.dismiss();
    b.put("Action", "close button");
    AnalyticsManager.c(c, Action.bS, b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ResumeDialogFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */