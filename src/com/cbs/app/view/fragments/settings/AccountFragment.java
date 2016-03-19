package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.utils.Util;

public class AccountFragment
  extends Fragment
{
  private static final String a = AccountFragment.class.getSimpleName();
  private AccountUIHelper.RefreshAccountListener b = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      AccountFragment.b();
      AccountFragment.this.a();
    }
  };
  
  public final void a()
  {
    FragmentActivity localFragmentActivity = getActivity();
    RelativeLayout localRelativeLayout = (RelativeLayout)getView();
    if ((localRelativeLayout == null) || ((localFragmentActivity != null) && (localFragmentActivity.isFinishing()))) {
      return;
    }
    if (Util.a(localFragmentActivity, Util.B(localFragmentActivity), "CBS_COM") == null)
    {
      new StringBuilder("not logged in").append(localFragmentActivity);
      SVODPopupHelper.setWeWantToSeeVideo(null);
      SVODPopupHelper.setWeWantToSeeShow(null);
      SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
      AccountUIHelper.a(localFragmentActivity, localRelativeLayout);
      return;
    }
    new StringBuilder("logged in").append(localFragmentActivity);
    AccountUIHelper.b(localFragmentActivity, localRelativeLayout);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(b);
    return paramLayoutInflater.inflate(2130903256, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AccountUIHelper.b(b);
    Util.a(getActivity());
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */