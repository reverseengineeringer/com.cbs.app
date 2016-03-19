package com.cbs.app.view;

import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnQueryTextListener;
import android.view.inputmethod.InputMethodManager;
import com.cbs.app.view.fragments.show.ShowSearchFragment;

final class ShowSearchActivity$1
  implements SearchView.OnQueryTextListener
{
  ShowSearchActivity$1(ShowSearchActivity paramShowSearchActivity, SearchView paramSearchView) {}
  
  public final boolean onQueryTextChange(String paramString)
  {
    ShowSearchActivity.a(b).a(paramString);
    return true;
  }
  
  public final boolean onQueryTextSubmit(String paramString)
  {
    paramString = (InputMethodManager)b.getSystemService("input_method");
    if (paramString != null) {
      paramString.hideSoftInputFromWindow(a.getWindowToken(), 0);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.ShowSearchActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */