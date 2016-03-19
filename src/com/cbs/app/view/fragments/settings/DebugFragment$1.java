package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.cbs.app.adobepass.MvpdLoginActivity;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.adobepass.MvpdPickerActivity;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.view.model.MVPDConfig;
import java.util.ArrayList;

final class DebugFragment$1
  implements MVPDCallbacks
{
  DebugFragment$1(DebugFragment paramDebugFragment) {}
  
  public final boolean a()
  {
    return true;
  }
  
  public final boolean a(String paramString)
  {
    Intent localIntent = new Intent(a.getActivity(), MvpdLoginActivity.class);
    localIntent.putExtra("url", paramString);
    a.getParentFragment().startActivityForResult(localIntent, 9001);
    return true;
  }
  
  public final boolean a(ArrayList<MVPDConfig> paramArrayList, boolean paramBoolean)
  {
    Intent localIntent = new Intent(a.getActivity(), MvpdPickerActivity.class);
    localIntent.putExtra("mvpd_data", paramArrayList);
    a.getParentFragment().startActivityForResult(localIntent, 9003);
    return true;
  }
  
  public final boolean a(final boolean paramBoolean)
  {
    a.getActivity().runOnUiThread(new Runnable()
    {
      public final void run()
      {
        DebugFragment.a(paramBoolean, a.getView());
      }
    });
    return true;
  }
  
  public final boolean b(String paramString)
  {
    Intent localIntent = new Intent(a.getActivity(), MvpdLogoutActivity.class);
    localIntent.putExtra("url", paramString);
    a.getParentFragment().startActivityForResult(localIntent, 9002);
    return true;
  }
  
  public final boolean b(boolean paramBoolean)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.DebugFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */