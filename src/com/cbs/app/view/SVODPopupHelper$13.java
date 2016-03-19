package com.cbs.app.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.utils.Preferences;

final class SVODPopupHelper$13
  implements View.OnClickListener
{
  SVODPopupHelper$13(TextView paramTextView1, TextView paramTextView2, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    a.setTextSize(1, 14.0F);
    b.setTextSize(1, 12.0F);
    Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
    AccountUIHelper.setFrom("");
    AccountUIHelper.b(c, "CBS ALL ACCESS Sign In");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */