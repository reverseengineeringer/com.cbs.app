package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

public class EpisodeCommentsActivity
  extends AppCompatActivity
{
  private static final String b = EpisodeCommentsActivity.class.getSimpleName();
  FrameLayout a;
  private String c;
  private String d;
  private String e = "Episode Comments";
  private String f;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getExtras();
      if (paramBundle != null)
      {
        c = paramBundle.getString("articleId");
        d = paramBundle.getString("articleTitle");
        f = paramBundle.getString("showCategory");
      }
    }
    paramBundle = getSupportActionBar();
    if (paramBundle != null)
    {
      paramBundle.setLogo(2130837800);
      paramBundle.setHomeButtonEnabled(true);
      paramBundle.setDisplayShowTitleEnabled(true);
      paramBundle.setDisplayHomeAsUpEnabled(true);
      if (d == null) {
        break label213;
      }
      paramBundle.setTitle(d);
    }
    for (;;)
    {
      paramBundle = new FrameLayout.LayoutParams(-1, -1);
      a = new FrameLayout(this);
      a.setLayoutParams(paramBundle);
      a.setId(54321);
      setContentView(a);
      if (c == null) {
        break;
      }
      paramBundle = getSupportFragmentManager().beginTransaction();
      localObject = new Bundle();
      ((Bundle)localObject).putString("articleId", c);
      ((Bundle)localObject).putString("showCategory", f);
      paramBundle.replace(54321, Fragment.instantiate(this, EpisodeCommentsFragment.class.getName(), (Bundle)localObject), "fragment_episode_comments");
      paramBundle.commitAllowingStateLoss();
      return;
      label213:
      paramBundle.setTitle(e);
    }
    paramBundle = new RelativeLayout.LayoutParams(-1, -2);
    Object localObject = new TextView(this);
    ((TextView)localObject).setText("You must pass a navItem and an article id.");
    a.addView((View)localObject, paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    paramMenu.add(1, 1, 1, "DONE").setShowAsAction(2);
    return true;
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
      finish();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    MainApplication.c();
  }
  
  public void onResume()
  {
    super.onResume();
    MainApplication.b();
    AccountUIHelper.i(this);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */