package com.cbs.app.adobepass;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import com.cbs.app.livetv.fragment.ProviderSelectionFragment;
import java.util.ArrayList;

public class MvpdPickerActivity
  extends AppCompatActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    ArrayList localArrayList = getIntent().getParcelableArrayListExtra("mvpd_data");
    if (paramBundle == null) {
      getSupportFragmentManager().beginTransaction().add(2131689633, ProviderSelectionFragment.a(localArrayList, getIntent().getExtras().getBoolean("art_try_again", false))).commit();
    }
    paramBundle = getSupportActionBar();
    paramBundle.setLogo(2130837800);
    paramBundle.setDisplayShowTitleEnabled(false);
    paramBundle.setDisplayUseLogoEnabled(true);
    paramBundle.setDisplayShowHomeEnabled(true);
    paramBundle.setDisplayHomeAsUpEnabled(true);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.MvpdPickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */