package com.cbs.app.livetv.fragment;

import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class SocialSignUpFragment$1
  implements BackButtonListener
{
  SocialSignUpFragment$1(SocialSignUpFragment paramSocialSignUpFragment) {}
  
  public final boolean c()
  {
    if (SocialSignUpFragment.a(a) != null)
    {
      AccountUIHelper.a(a.getActivity(), null);
      SocialSignUpFragment.a(a).a(1007, null);
    }
    return true;
  }
  
  public final String getTag()
  {
    return SocialSignUpFragment.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.SocialSignUpFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */