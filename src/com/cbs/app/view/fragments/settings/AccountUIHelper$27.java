package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.view.View;

final class AccountUIHelper$27
  extends ClickableSpan
{
  AccountUIHelper$27(Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.d();
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(Uri.parse("http://legalterms.cbsinteractive.com/video-services"));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */