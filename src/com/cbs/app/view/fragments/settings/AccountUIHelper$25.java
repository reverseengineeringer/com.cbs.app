package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.view.View;

final class AccountUIHelper$25
  extends ClickableSpan
{
  AccountUIHelper$25(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.d();
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(Uri.parse("http://legalterms.cbsinteractive.com/terms-of-use"));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */