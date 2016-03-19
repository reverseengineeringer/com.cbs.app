package com.cbs.app.livetv.fragment;

import android.widget.Filter;
import android.widget.SearchView.OnQueryTextListener;

final class ProviderSelectionFragment$7
  implements SearchView.OnQueryTextListener
{
  ProviderSelectionFragment$7(ProviderSelectionFragment paramProviderSelectionFragment) {}
  
  public final boolean onQueryTextChange(String paramString)
  {
    ProviderSelectionFragment.e(a).getFilter().filter(paramString);
    return true;
  }
  
  public final boolean onQueryTextSubmit(String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */