package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.SVODPopupHelper;
import java.util.HashMap;

final class AccountUIHelper$41
  implements View.OnClickListener
{
  AccountUIHelper$41(View paramView, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.d();
    AccountUIHelper.h().setClickable(false);
    AccountUIHelper.h().setEnabled(false);
    paramView = a.findViewById(2131689817);
    if ((paramView != null) && ((paramView instanceof EditText)))
    {
      paramView = ((EditText)paramView).getText();
      if (paramView == null) {}
    }
    for (paramView = paramView.toString();; paramView = null)
    {
      View localView = a.findViewById(2131689820);
      if ((localView != null) && ((localView instanceof EditText)))
      {
        localObject = (EditText)localView;
        ((EditText)localObject).setContentDescription("password field");
        localObject = ((EditText)localObject).getText();
        if (localObject == null) {}
      }
      for (Object localObject = localObject.toString();; localObject = null)
      {
        if ((paramView != null) && (!paramView.equals("")) && (localObject != null) && (!((String)localObject).equals("")))
        {
          AccountUIHelper.a(a, "");
          ((InputMethodManager)b.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
          SVODPopupHelper.setWeWantToSeeVideo(null);
          SVODPopupHelper.setWeWantToSeeShow(null);
          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
          AccountUIHelper.c(b, paramView, (String)localObject, null);
          return;
        }
        paramView = Action.bm;
        localObject = new HashMap();
        ((HashMap)localObject).put("events", "event28");
        ((HashMap)localObject).put("appState", "cbscom:" + AccountUIHelper.i());
        ((HashMap)localObject).put("pageTitle", AccountUIHelper.i());
        ((HashMap)localObject).put("logintype", "email");
        AnalyticsManager.a(b, paramView, (HashMap)localObject);
        AccountUIHelper.j(b);
        AccountUIHelper.h().setClickable(true);
        AccountUIHelper.h().setEnabled(true);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.41
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */