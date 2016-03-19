package com.cbs.app.view;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.support.v4.app.FragmentManager;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.fragment.LiveTvFragment;
import java.util.HashMap;

final class SVODPopupHelper$22
  implements DialogInterface.OnShowListener
{
  SVODPopupHelper$22(AlertDialog paramAlertDialog, Context paramContext) {}
  
  public final void onShow(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = (TextView)a.findViewById(2131689863);
    paramDialogInterface.setText(Html.fromHtml(b.getString(2131231312)));
    paramDialogInterface.setTextSize(20.0F);
    paramDialogInterface.setMovementMethod(LinkMovementMethod.getInstance());
    Object localObject;
    if (a != null)
    {
      localObject = a.getButton(-1);
      ((Button)localObject).setTypeface(null, 1);
      ((Button)localObject).setTextSize(2, 20.0F);
      if ((SVODPopupHelper.e() == null) || (!(SVODPopupHelper.e() instanceof NavigationActivity))) {
        break label226;
      }
    }
    label226:
    for (paramDialogInterface = ((NavigationActivity)SVODPopupHelper.e()).getSupportFragmentManager();; paramDialogInterface = null)
    {
      if (paramDialogInterface != null) {}
      for (paramDialogInterface = paramDialogInterface.findFragmentByTag("fragment_live_tv");; paramDialogInterface = null)
      {
        if ((paramDialogInterface != null) && ((paramDialogInterface instanceof LiveTvFragment))) {
          ((Button)localObject).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              a.dismiss();
            }
          });
        }
        paramDialogInterface = Action.bJ;
        localObject = new HashMap();
        ((HashMap)localObject).put("pageView", "true");
        ((HashMap)localObject).put("evar_6", "CBS svod");
        ((HashMap)localObject).put("prop_6", "CBS svod");
        ((HashMap)localObject).put("events", "event20");
        ((HashMap)localObject).put("evar_70", "303");
        ((HashMap)localObject).put("prop_70", "303");
        if (SVODPopupHelper.g() != null) {
          ((HashMap)localObject).put("From", SVODPopupHelper.g());
        }
        AnalyticsManager.a(SVODPopupHelper.e(), paramDialogInterface, (HashMap)localObject);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */