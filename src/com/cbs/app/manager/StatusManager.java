package com.cbs.app.manager;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.StatusService;
import com.cbs.app.service.StatusServiceImpl;
import com.cbs.app.view.model.AppConfig;
import com.cbs.app.view.model.Status;
import com.cbs.app.view.model.rest.StatusEndpointResponse;
import com.cbs.app.view.utils.Util;

public class StatusManager
{
  public static String a = null;
  public static boolean b = false;
  
  public static void a(Activity paramActivity)
  {
    if ((paramActivity == null) || (paramActivity.isFinishing())) {
      return;
    }
    a(paramActivity, false);
  }
  
  private static void a(Activity paramActivity, boolean paramBoolean)
  {
    UpgradeDialogFragment localUpgradeDialogFragment = new UpgradeDialogFragment();
    paramActivity = paramActivity.getFragmentManager();
    Fragment localFragment = paramActivity.findFragmentByTag("upgrade_nosupport_dialog");
    if (localFragment != null) {
      paramActivity.beginTransaction().remove(localFragment).commit();
    }
    a = paramBoolean;
    localUpgradeDialogFragment.show(paramActivity, "upgrade_nosupport_dialog");
  }
  
  public static void a(Context paramContext, StatusResponseListener paramStatusResponseListener)
  {
    new StatusServiceImpl().a(paramContext, new a(paramContext, paramStatusResponseListener));
  }
  
  public static void b(Activity paramActivity)
  {
    if ((paramActivity == null) || (paramActivity.isFinishing())) {
      return;
    }
    a(paramActivity, true);
  }
  
  public static String getAdServer()
  {
    return a;
  }
  
  public static abstract interface StatusResponseListener
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
    
    public abstract void d();
  }
  
  public static class UpgradeDialogFragment
    extends DialogFragment
  {
    public boolean a = false;
    
    public Dialog onCreateDialog(final Bundle paramBundle)
    {
      setCancelable(false);
      paramBundle = getActivity();
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(paramBundle, 2131427561));
      localBuilder.setTitle("CBS");
      if (a) {
        localBuilder.setMessage(getString(2131231167)).setNegativeButton("Ok", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramBundle.finish();
          }
        });
      }
      for (;;)
      {
        return localBuilder.create();
        localBuilder.setMessage(getString(2131231355)).setNegativeButton("Download", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            Util.J(paramBundle);
          }
        });
      }
    }
  }
  
  static final class a
    implements ResponseModelListener
  {
    private Context a = null;
    private StatusManager.StatusResponseListener b = null;
    
    public a(Context paramContext, StatusManager.StatusResponseListener paramStatusResponseListener)
    {
      b = paramStatusResponseListener;
      a = paramContext;
    }
    
    public final void a()
    {
      StatusManager.b = true;
      b.b();
    }
    
    public final void a(ResponseModel paramResponseModel)
    {
      boolean bool1;
      boolean bool2;
      if ((paramResponseModel instanceof StatusEndpointResponse))
      {
        paramResponseModel = (StatusEndpointResponse)paramResponseModel;
        Status localStatus = paramResponseModel.getStatus();
        if (localStatus != null)
        {
          bool1 = localStatus.isUpgradeAvailable();
          bool2 = localStatus.isActive();
          if ((!bool1) || (bool2)) {
            break label73;
          }
          b.c();
          paramResponseModel = paramResponseModel.getAppConfig();
          if (paramResponseModel != null) {
            StatusManager.a = paramResponseModel.getAdServerOverride();
          }
        }
      }
      for (;;)
      {
        StatusManager.b = true;
        return;
        label73:
        if (!bool2)
        {
          b.d();
          break;
        }
        if (bool1)
        {
          Util.a(a, true);
          b.a();
          break;
        }
        Util.a(a, false);
        b.a();
        break;
        b.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.manager.StatusManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */