package com.cbs.app.livetv.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import com.cbs.app.livetv.fragment.LiveTvWebFragment;

public class LiveTvWebActivity
  extends AppCompatActivity
{
  public static String a = "ARG_URL";
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    getSupportFragmentManager().beginTransaction().add(2131689635, LiveTvWebFragment.a(getIntent().getStringExtra(a))).commit();
    paramBundle = getSupportActionBar();
    paramBundle.setLogo(2130837693);
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
 * Qualified Name:     com.cbs.app.livetv.activity.LiveTvWebActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */