package com.cbs.app.livetv.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.livetv.model.UserStatusEnum;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;
import java.util.List;

public class LiveTvFragment
  extends Fragment
  implements BaseFragmentCallBack, MVPDCallbacks, BackButtonListener
{
  private boolean a = false;
  private UserStatusEnum b;
  private boolean c = false;
  private String d = "";
  private boolean e;
  private FragmentTransaction f;
  
  private void a(int paramInt, MVPDConfig paramMVPDConfig)
  {
    new StringBuilder("displayCheckAvailabilityFragment() called with: mode = [").append(paramInt).append("]");
    StringBuilder localStringBuilder = new StringBuilder("displayCheckAvailabilityFragment: selectedMvpdConfig = ");
    String str;
    if (paramMVPDConfig != null)
    {
      str = paramMVPDConfig.getAdobeId();
      localStringBuilder.append(str);
      if ((paramMVPDConfig == null) || (paramInt == 0)) {
        break label117;
      }
    }
    label117:
    for (f = getChildFragmentManager().beginTransaction().replace(2131689966, CheckAvailabilityFragment.a(paramMVPDConfig), "check_availability");; f = getChildFragmentManager().beginTransaction().replace(2131689966, CheckAvailabilityFragment.a(paramInt), "check_availability"))
    {
      paramMVPDConfig = getChildFragmentManager().getFragments();
      if ((paramMVPDConfig != null) && (paramMVPDConfig.size() > 0)) {
        f.addToBackStack("check_availability");
      }
      g();
      return;
      str = null;
      break;
    }
  }
  
  private void a(SyncbakChannel paramSyncbakChannel, Affiliate paramAffiliate, Boolean paramBoolean)
  {
    new StringBuilder("displayScheduleFragment() called with channel = [").append(paramSyncbakChannel).append("], affiliate = [").append(paramAffiliate).append("]");
    h();
    f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvScheduleFragment.a(paramSyncbakChannel, paramAffiliate));
    if (paramBoolean.booleanValue()) {
      f.addToBackStack("schedule");
    }
    g();
  }
  
  public static LiveTvFragment b()
  {
    Bundle localBundle = new Bundle();
    LiveTvFragment localLiveTvFragment = new LiveTvFragment();
    localLiveTvFragment.setArguments(localBundle);
    return localLiveTvFragment;
  }
  
  private void c(String paramString)
  {
    if (a)
    {
      c = true;
      d = paramString;
      return;
    }
    if ((paramString != null) && (paramString.equals("TAG_LIVE_TV_UPSELL")))
    {
      h();
      return;
    }
    getChildFragmentManager().popBackStack(paramString, 1);
  }
  
  private void c(boolean paramBoolean)
  {
    UserStatusEnum localUserStatusEnum = AuthStatusManager.getStatusEnum();
    new StringBuilder("manageStatus() called with: isMVPDAuthenticationFlow = [").append(paramBoolean).append("]");
    new StringBuilder("manageStatus: isAuthorized = [").append(MVPDController.getInstance().i()).append("], CBS user status = [").append(localUserStatusEnum.getString()).append("]");
    if (MVPDController.getInstance().i())
    {
      boolean bool = MVPDController.getInstance().d();
      new StringBuilder("manageStatus: forceUserRegFlow = [").append(bool).append("]");
      switch (1.a[localUserStatusEnum.ordinal()])
      {
      default: 
        return;
      case 1: 
      case 2: 
      case 3: 
      case 4: 
        e();
        return;
      }
      if ((bool) || (paramBoolean))
      {
        new StringBuilder("displayAllAccessUpSellFragment() called with: forceUserRegFlow = [").append(bool).append("]");
        h();
        f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvCompleteVerificationFragment.a(bool, MVPDController.getInstance().getSelectedMvpdConfig()), "cbs_aa_upsell");
        g();
        return;
      }
      e();
      return;
    }
    switch (1.a[localUserStatusEnum.ordinal()])
    {
    default: 
      return;
    case 1: 
      a(2, null);
      return;
    }
    if (MVPDController.getInstance().j())
    {
      h();
      f = getChildFragmentManager().beginTransaction().replace(2131689966, MvpdUserNotAuthorizedFragment.b(), "not_supported");
      g();
      return;
    }
    d();
  }
  
  private void d()
  {
    c("TAG_LIVE_TV_UPSELL");
    f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvUpsellFragment.b(), "TAG_LIVE_TV_UPSELL");
    g();
  }
  
  private void e()
  {
    h();
    f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvChannelSelectorFragment.a());
    g();
  }
  
  private void f()
  {
    h();
    f = getChildFragmentManager().beginTransaction().replace(2131689966, MvpdNotSupportedFragment.a(MVPDController.getInstance().getSelectedMvpdConfig()), "not_supported");
    g();
  }
  
  private void g()
  {
    if (a)
    {
      e = true;
      return;
    }
    f.commit();
    f = null;
  }
  
  private void h()
  {
    if (a) {
      c = true;
    }
    for (;;)
    {
      return;
      long l = getChildFragmentManager().getBackStackEntryCount();
      int i = 0;
      while (i < l)
      {
        getChildFragmentManager().popBackStack();
        i += 1;
      }
    }
  }
  
  public final void a(int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    }
    label729:
    do
    {
      for (;;)
      {
        return;
        MVPDController.getInstance().getAuthentication();
        return;
        c("no_location");
        if ((paramObject != null) && ((paramObject instanceof Integer)))
        {
          a(((Integer)paramObject).intValue(), null);
          return;
          MVPDController.getInstance().setSelectedMVPDConfig((MVPDConfig)paramObject);
          if ((paramObject != null) && ((paramObject instanceof MVPDConfig)))
          {
            a(1, (MVPDConfig)paramObject);
            return;
            c("check_availability");
            paramInt = ((Integer)paramObject).intValue();
            if (paramInt == 0)
            {
              f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvAvailableFragment.b()).addToBackStack("live_tv_available");
              g();
              return;
            }
            if (paramInt == 1)
            {
              MVPDController.getInstance().getAuthorization();
              return;
            }
            if (paramInt == 2)
            {
              e();
              return;
              c("check_availability");
              if ((paramObject != null) && ((paramObject instanceof Bundle)))
              {
                paramObject = (Bundle)paramObject;
                a((SyncbakChannel)((Bundle)paramObject).getParcelable("ARG_CHANNEL"), (Affiliate)((Bundle)paramObject).getParcelable("ARG_AFFILIATE"), Boolean.valueOf(false));
                return;
                c("check_availability");
                if ((paramObject != null) && ((paramObject instanceof Bundle)))
                {
                  paramObject = (Bundle)paramObject;
                  a((SyncbakChannel)((Bundle)paramObject).getParcelable("ARG_CHANNEL"), (Affiliate)((Bundle)paramObject).getParcelable("ARG_AFFILIATE"), Boolean.valueOf(true));
                  return;
                  c("check_availability");
                  if ((paramObject != null) && ((paramObject instanceof Integer)))
                  {
                    if (((Integer)paramObject).intValue() == 0)
                    {
                      f = getChildFragmentManager().beginTransaction().replace(2131689966, LiveTvNotFoundFragment.a()).addToBackStack("live_tv_not_found");
                      g();
                      return;
                    }
                    paramObject = LiveTvNotAvailableFragment.a(MVPDController.getInstance().getSelectedMvpdConfig());
                    ((LiveTvNotAvailableFragment)paramObject).setListener(this);
                    f = getChildFragmentManager().beginTransaction().replace(2131689966, (Fragment)paramObject).addToBackStack("live_tv_not_found");
                    g();
                    return;
                    c("check_availability");
                    new StringBuilder("fromFragment: object ").append(paramObject);
                    if ((paramObject != null) && ((paramObject instanceof MVPDConfig)))
                    {
                      new StringBuilder("fromFragment: MVPDController.getInstance().isAuthenticated() ").append(MVPDController.getInstance().j());
                      if (MVPDController.getInstance().j())
                      {
                        MVPDController.getInstance().getAuthorization();
                        return;
                      }
                      paramObject = (MVPDConfig)paramObject;
                      MVPDController.getInstance().setMVPDProviderToModifyAuth((MVPDConfig)paramObject);
                      return;
                    }
                    new StringBuilder("fromFragment: AuthStatusManager.isSubscriber() = ").append(AuthStatusManager.c());
                    if (AuthStatusManager.c())
                    {
                      e();
                      return;
                    }
                    f();
                    return;
                    paramObject = LiveTvNotAvailableFragment.a(MVPDController.getInstance().getSelectedMvpdConfig());
                    ((LiveTvNotAvailableFragment)paramObject).setListener(this);
                    f = getChildFragmentManager().beginTransaction().replace(2131689966, (Fragment)paramObject).addToBackStack("live_tv_not_found");
                    g();
                    return;
                    f();
                    return;
                    if ((getActivity() instanceof NavigationActivity))
                    {
                      localObject = (NavigationActivity)getActivity();
                      if (!((NavigationActivity)localObject).isFinishing())
                      {
                        boolean bool1;
                        if ((paramObject != null) && ((paramObject instanceof Bundle)))
                        {
                          bool1 = ((Bundle)paramObject).getBoolean("ARG_SHOW_REGISTER_LATER");
                          SVODPopupHelper.setWeWantToSeeVideo(null);
                          SVODPopupHelper.setWeWantToSeeShow(null);
                          if (MVPDController.getInstance().getSelectedMvpdConfig() == null) {
                            break label729;
                          }
                          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                        }
                        for (;;)
                        {
                          ((NavigationActivity)localObject).a(bool1);
                          SVODPopupHelper.c();
                          return;
                          bool1 = false;
                          break;
                          SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                        }
                        if ((getActivity() instanceof NavigationActivity))
                        {
                          localObject = (NavigationActivity)getActivity();
                          if (!((NavigationActivity)localObject).isFinishing())
                          {
                            if ((paramObject != null) && ((paramObject instanceof Bundle)))
                            {
                              paramObject = (Bundle)paramObject;
                              bool1 = ((Bundle)paramObject).getBoolean("ARG_FROM_UPSELL_TRIAL", false);
                              boolean bool2 = ((Bundle)paramObject).getBoolean("ARG_SHOW_REGISTER_LATER", false);
                              paramObject = ((Bundle)paramObject).getString("ARG_SKU");
                              SVODPopupHelper.setWeWantToSeeVideo(null);
                              SVODPopupHelper.setWeWantToSeeShow(null);
                              if (MVPDController.getInstance().getSelectedMvpdConfig() != null) {
                                SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                              }
                              for (;;)
                              {
                                ((NavigationActivity)localObject).a(bool1, (String)paramObject, bool2);
                                SVODPopupHelper.c();
                                return;
                                SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                              }
                            }
                            ((NavigationActivity)localObject).a(false, null, false);
                            return;
                            if ((paramObject instanceof Bundle))
                            {
                              paramObject = (Bundle)paramObject;
                              paramObject = LiveTvWebFragment.a(((Bundle)paramObject).getString(LiveTvWebFragment.a), ((Bundle)paramObject).getInt("ARG_TRACKING_TYPE"));
                            }
                            while (paramObject != null)
                            {
                              f = getChildFragmentManager().beginTransaction().replace(2131689966, (Fragment)paramObject).addToBackStack("webview");
                              g();
                              return;
                              if ((paramObject instanceof String)) {
                                paramObject = LiveTvWebFragment.a((String)paramObject);
                              } else {
                                paramObject = null;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      e();
      return;
      AccountUIHelper.a(getContext(), false);
      return;
    } while ((paramObject == null) || (!(paramObject instanceof VideoData)));
    paramObject = (VideoData)paramObject;
    Object localObject = ShowServiceManager.a(((VideoData)paramObject).getCbsShowId());
    if (localObject != null)
    {
      VideoUtil.a(getContext(), (VideoData)paramObject, (ShowItem)localObject);
      return;
    }
    Toast.makeText(getContext(), "error loading the video", 1).show();
  }
  
  public final boolean a()
  {
    f = getChildFragmentManager().beginTransaction().replace(2131689966, ConnectWithTvProviderFragment.b(), "connecting").addToBackStack("connecting");
    g();
    return true;
  }
  
  public final boolean a(String paramString)
  {
    f = getChildFragmentManager().beginTransaction().replace(2131689966, MvpdLoginFragment.a(paramString, MVPDController.getInstance().getSelectedMvpdConfig()), "login").addToBackStack("login");
    g();
    return true;
  }
  
  public final boolean a(ArrayList<MVPDConfig> paramArrayList, boolean paramBoolean)
  {
    c("picker");
    f = getChildFragmentManager().beginTransaction().replace(2131689966, ProviderSelectionFragment.a(paramArrayList, paramBoolean), "picker").addToBackStack("picker");
    g();
    return true;
  }
  
  public final boolean a(boolean paramBoolean)
  {
    new StringBuilder("handleAuthenticationChanged: isAuthenticated = ").append(paramBoolean).append(", isUserInitiatedAuthenticationInProgress = ").append(MVPDController.getInstance().c());
    if (paramBoolean)
    {
      c("logout");
      if (MVPDController.getInstance().c())
      {
        MVPDController.getInstance().getAuthorization();
        return true;
      }
      a(1, MVPDController.getInstance().getSelectedMvpdConfig());
      return true;
    }
    if (AuthStatusManager.c())
    {
      a(2, null);
      return true;
    }
    d();
    return true;
  }
  
  public final boolean b(String paramString)
  {
    f = getChildFragmentManager().beginTransaction().replace(2131689966, MvpdLogoutFragment.a(paramString), "logout").addToBackStack("logout");
    g();
    return true;
  }
  
  public final boolean b(boolean paramBoolean)
  {
    new StringBuilder("handleAuthorizationChanged() called with: isAuthorized = [").append(paramBoolean).append("]");
    h();
    c(true);
    return true;
  }
  
  public final boolean c()
  {
    if (getChildFragmentManager().getBackStackEntryCount() > 0)
    {
      Fragment localFragment = getChildFragmentManager().findFragmentById(2131689966);
      if (localFragment != null)
      {
        if ((!(localFragment instanceof MvpdLoginFragment)) && (!(localFragment instanceof ProviderSelectionFragment))) {
          break label53;
        }
        MVPDController.getInstance().g();
      }
      label53:
      while ((!(localFragment instanceof LiveTvNotAvailableFragment)) && (!(localFragment instanceof LiveTvNotFoundFragment)))
      {
        getChildFragmentManager().popBackStack();
        return true;
      }
      ((NavigationActivity)getActivity()).k();
      return true;
    }
    ((NavigationActivity)getActivity()).k();
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MVPDController.getInstance().setMVPDCallbacks(this);
    MVPDController.getInstance().h();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903160, paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    MVPDController.getInstance().setMVPDCallbacks(null);
    super.onDestroy();
  }
  
  public void onPause()
  {
    if ((getActivity() instanceof NavigationActivity)) {
      ((NavigationActivity)getActivity()).b(this);
    }
    a = true;
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    if ((getActivity() instanceof NavigationActivity)) {
      ((NavigationActivity)getActivity()).a(this);
    }
    a = false;
    Object localObject;
    if (c)
    {
      localObject = d;
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        h();
        c = false;
        d = "";
      }
    }
    else
    {
      if ((e) && (f != null))
      {
        f.commit();
        e = false;
      }
      new StringBuilder("refreshCbsUserStatus: cached status = ").append(b).append(", currentStatus = ").append(AuthStatusManager.getStatusEnum());
      if ((b == null) || (b.equals(AuthStatusManager.getStatusEnum()))) {
        break label191;
      }
    }
    label191:
    for (int i = 1;; i = 0)
    {
      b = AuthStatusManager.getStatusEnum();
      if (i != 0) {
        c(false);
      }
      localObject = getActivity();
      if ((localObject != null) && ((localObject instanceof NavigationActivity))) {
        ((NavigationActivity)localObject).i();
      }
      return;
      c((String)localObject);
      break;
    }
  }
  
  public void onStop()
  {
    super.onStop();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */