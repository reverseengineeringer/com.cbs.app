package com.cbs.app.view.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import com.cbs.app.view.LogoKeeper;
import com.cbs.app.view.fragments.AdFragment;
import com.cbs.app.view.utils.Util;

public class SettingsActivity
  extends AppCompatActivity
{
  private static final String a = SettingsActivity.class.getSimpleName();
  private AccountUIHelper.RefreshAccountListener b = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      SettingsActivity.b();
      SettingsActivity.this.a();
    }
  };
  
  public final void a()
  {
    new LogoKeeper(this);
    LogoKeeper.a(this);
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag("settings_fragment");
    if ((localFragment != null) && (!localFragment.getChildFragmentManager().popBackStackImmediate())) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    AccountUIHelper.a(b);
    paramBundle = getSupportActionBar();
    if (paramBundle != null)
    {
      paramBundle.setTitle("Settings");
      paramBundle.setDisplayShowTitleEnabled(true);
      paramBundle.setDisplayUseLogoEnabled(true);
      paramBundle.setHomeButtonEnabled(true);
      paramBundle.setDisplayHomeAsUpEnabled(true);
    }
    paramBundle = getSupportFragmentManager().beginTransaction();
    paramBundle.replace(2131689638, new SettingsFragment(), "settings_fragment");
    paramBundle.commit();
    paramBundle = Util.c("settings_fragment");
    if (!isFinishing())
    {
      Fragment localFragment = Fragment.instantiate(this, AdFragment.class.getName());
      Bundle localBundle = new Bundle();
      localBundle.putString("tag", paramBundle);
      localFragment.setArguments(localBundle);
      getSupportFragmentManager().beginTransaction().add(16908290, localFragment, "ad_fragment").commitAllowingStateLoss();
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    AccountUIHelper.b(b);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */