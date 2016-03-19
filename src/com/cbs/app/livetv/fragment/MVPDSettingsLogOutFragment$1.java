package com.cbs.app.livetv.fragment;

import android.content.Intent;
import android.support.v4.app.Fragment;
import com.cbs.app.adobepass.MvpdLogoutActivity;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.view.model.MVPDConfig;
import java.util.ArrayList;

final class MVPDSettingsLogOutFragment$1
  implements MVPDCallbacks
{
  MVPDSettingsLogOutFragment$1(MVPDSettingsLogOutFragment paramMVPDSettingsLogOutFragment) {}
  
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
    MVPDSettingsLogOutFragment.a();
    return true;
  }
  
  public final boolean b(String paramString)
  {
    Intent localIntent = new Intent(a.getActivity(), MvpdLogoutActivity.class);
    localIntent.setFlags(1073741824);
    localIntent.putExtra("url", paramString);
    a.getParentFragment().startActivityForResult(localIntent, 8002);
    return true;
  }
  
  public final boolean b(boolean paramBoolean)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MVPDSettingsLogOutFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */