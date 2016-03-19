package com.cbs.app.view.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.cbs.app.livetv.controllers.MVPDController;

final class DebugFragment$12
  implements View.OnClickListener
{
  DebugFragment$12(DebugFragment paramDebugFragment, Button paramButton) {}
  
  public final void onClick(View paramView)
  {
    DebugFragment.b();
    if (a.getText().equals("MVPD Logout")) {
      MVPDController.getInstance().e();
    }
    while (!a.getText().equals("MVPD Login")) {
      return;
    }
    MVPDController.getInstance().getAuthentication();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */