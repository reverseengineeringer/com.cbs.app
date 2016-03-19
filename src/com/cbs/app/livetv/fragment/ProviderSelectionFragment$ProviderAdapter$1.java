package com.cbs.app.livetv.fragment;

import com.cbs.app.view.model.MVPDConfig;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ProviderSelectionFragment$ProviderAdapter$1
  implements Comparator<MVPDConfig>
{
  private Pattern c;
  
  ProviderSelectionFragment$ProviderAdapter$1(ProviderSelectionFragment.ProviderAdapter paramProviderAdapter, String paramString) {}
  
  private static int a(Matcher paramMatcher)
  {
    int i = Integer.MAX_VALUE;
    if (paramMatcher.find()) {
      i = paramMatcher.start();
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.ProviderAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */