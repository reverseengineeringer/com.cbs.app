package com.cbs.app.view;

import android.app.SearchManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import com.cbs.app.view.fragments.show.ShowBrowseFragment.ShowBrowseListener;
import com.cbs.app.view.fragments.show.ShowSearchFragment;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.utils.Util;

public class ShowSearchActivity
  extends AppCompatActivity
  implements ShowBrowseFragment.ShowBrowseListener
{
  private ShowSearchFragment a;
  
  private static void a(Intent paramIntent)
  {
    if ("android.intent.action.SEARCH".equals(paramIntent.getAction())) {
      paramIntent.getStringExtra("query");
    }
  }
  
  public final void a(int paramInt)
  {
    new StringBuilder("updateIwantToSeePosition() called with: position = [").append(paramInt).append("]");
  }
  
  public final void a(int paramInt, String[] paramArrayOfString, IwantToSeeDialogFrag.IwantToSeeResponse paramIwantToSeeResponse)
  {
    new StringBuilder("displayIwantToSeeDialog() called with: currentSelection = [").append(paramInt).append("], selections = [").append(paramArrayOfString).append("], response = [").append(paramIwantToSeeResponse).append("]");
  }
  
  public final void a(ShowItem paramShowItem)
  {
    new StringBuilder("showItemSelected() called with: showSelected = [").append(paramShowItem).append("]");
    Intent localIntent = new Intent();
    localIntent.putExtra("showItem", paramShowItem);
    setResult(-1, localIntent);
    finish();
  }
  
  public final void c(BackButtonListener paramBackButtonListener)
  {
    new StringBuilder("onShowsDestroyed() called with: backButtonListener = [").append(paramBackButtonListener).append("]");
  }
  
  public void finish()
  {
    Util.a(this);
    super.finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setDisplayShowTitleEnabled(false);
    getSupportActionBar().setDisplayUseLogoEnabled(false);
    a = ((ShowSearchFragment)getSupportFragmentManager().findFragmentByTag("search_results"));
    if (a == null)
    {
      a = new ShowSearchFragment();
      paramBundle = getSupportFragmentManager().beginTransaction();
      paramBundle.replace(2131689633, a, "search_results");
      paramBundle.commit();
    }
    a(getIntent());
  }
  
  public boolean onCreateOptionsMenu(final Menu paramMenu)
  {
    getMenuInflater().inflate(2131755010, paramMenu);
    SearchManager localSearchManager = (SearchManager)getSystemService("search");
    paramMenu = (SearchView)paramMenu.findItem(2131690451).getActionView();
    paramMenu.setSearchableInfo(localSearchManager.getSearchableInfo(getComponentName()));
    paramMenu.setIconifiedByDefault(false);
    paramMenu.requestFocusFromTouch();
    paramMenu.setMaxWidth(Integer.MAX_VALUE);
    paramMenu.setOnQueryTextListener(new SearchView.OnQueryTextListener()
    {
      public final boolean onQueryTextChange(String paramAnonymousString)
      {
        ShowSearchActivity.a(ShowSearchActivity.this).a(paramAnonymousString);
        return true;
      }
      
      public final boolean onQueryTextSubmit(String paramAnonymousString)
      {
        paramAnonymousString = (InputMethodManager)getSystemService("input_method");
        if (paramAnonymousString != null) {
          paramAnonymousString.hideSoftInputFromWindow(paramMenu.getWindowToken(), 0);
        }
        return true;
      }
    });
    return true;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
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
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (super.onTouchEvent(paramMotionEvent)) {}
    while ((isFinishing()) || ((a != null) && (a.g()))) {
      return true;
    }
    finish();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ShowSearchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */