package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.View.OnClickListener;

final class MenuAdapter$1
  implements View.OnClickListener
{
  MenuAdapter$1(MenuAdapter paramMenuAdapter) {}
  
  public final void onClick(View paramView)
  {
    paramView = Build.MANUFACTURER;
    int j = 0;
    int i = j;
    if (paramView != null)
    {
      i = j;
      if (paramView.contains("Amazon")) {
        i = 1;
      }
    }
    if (i != 0) {}
    for (paramView = "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app";; paramView = "https://play.google.com/store/apps/details?id=com.cbs.app")
    {
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(paramView));
      paramView.addFlags(268435456);
      MenuAdapter.a(a).startActivity(paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.MenuAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */