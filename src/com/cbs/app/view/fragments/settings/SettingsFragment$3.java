package com.cbs.app.view.fragments.settings;

import android.content.Intent;
import android.support.v4.app.Fragment;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.view.model.MVPDConfig;
import java.util.ArrayList;

final class SettingsFragment$3
  implements MVPDCallbacks
{
  SettingsFragment$3(SettingsFragment paramSettingsFragment) {}
  
  public final boolean a()
  {
    return true;
  }
  
  public final boolean a(String paramString)
  {
    return true;
  }
  
  public final boolean a(ArrayList<MVPDConfig> paramArrayList, boolean paramBoolean)
  {
    return true;
  }
  
  public final boolean a(boolean paramBoolean)
  {
    SettingsFragment.a(a, paramBoolean);
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
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */