package com.cbs.app.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.utils.Util;

public class ShowSocialDialog
{
  protected static final String a = null;
  
  public static String a(String paramString)
  {
    String str2 = "";
    String str1 = str2;
    if (paramString != null)
    {
      str1 = str2;
      if (paramString.lastIndexOf("/") > 0) {
        str1 = paramString.substring(paramString.lastIndexOf("/") + 1);
      }
    }
    return str1;
  }
  
  public static void a(Context paramContext, Show paramShow, ShowConfig paramShowConfig)
  {
    int i;
    if (paramShow != null)
    {
      if ((!(paramContext instanceof SplashActivity2)) || (((SplashActivity2)paramContext).isFinishing())) {
        break label254;
      }
      i = 1;
    }
    for (;;)
    {
      Dialog localDialog = new Dialog(paramContext);
      localDialog.requestWindowFeature(1);
      localDialog.setContentView(2130903125);
      ((TextView)localDialog.findViewById(2131689840)).setText(2131231257);
      String str2 = Util.a(paramShow, paramShowConfig);
      String str1;
      if (paramShowConfig != null)
      {
        str1 = paramShowConfig.getFacebookLink();
        localDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public final void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            if (paramAnonymousDialogInterface != null) {
              paramAnonymousDialogInterface.dismiss();
            }
            AccountUIHelper.b(ButtonServiceHelper.f);
          }
        });
      }
      for (;;)
      {
        if ((str1 == null) || (str1.equals("")))
        {
          ((Button)localDialog.findViewById(2131689853)).setVisibility(8);
          label121:
          if (paramShowConfig == null) {
            break label332;
          }
        }
        label254:
        label332:
        for (paramShowConfig = paramShowConfig.getTwitterLink();; paramShowConfig = null)
        {
          if ((paramShowConfig == null) || (paramShowConfig.equals(""))) {
            ((Button)localDialog.findViewById(2131689852)).setVisibility(8);
          }
          for (;;)
          {
            ButtonServiceHelper.a(localDialog.findViewById(2131689854), paramContext, paramShow.getTitle(), str2, paramShow.getTitle(), paramShow.getId(), "Show Home");
            if (AuthStatusManager.b()) {
              ButtonServiceHelper.a(localDialog.findViewById(2131689855), paramContext, paramShow, "Show Page");
            }
            localDialog.findViewById(2131689856).setVisibility(8);
            paramContext = localDialog.findViewById(2131689841);
            if (paramContext != null) {
              paramContext.setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  a.dismiss();
                  AccountUIHelper.b(ButtonServiceHelper.f);
                }
              });
            }
            if (i != 0) {
              localDialog.show();
            }
            return;
            if ((!(paramContext instanceof NavigationActivity)) || (((NavigationActivity)paramContext).isFinishing())) {
              break label343;
            }
            i = 1;
            break;
            ButtonServiceHelper.a(localDialog.findViewById(2131689853), paramContext, str1, paramShow.getTitle(), paramShow.getId(), "Show Home");
            break label121;
            ButtonServiceHelper.c(localDialog.findViewById(2131689852), paramContext, a(paramShowConfig), paramShow.getTitle(), paramShow.getId(), "Show Home");
          }
        }
        str1 = null;
      }
      label343:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ShowSocialDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */