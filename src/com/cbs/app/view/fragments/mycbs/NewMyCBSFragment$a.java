package com.cbs.app.view.fragments.mycbs;

import android.content.Context;
import android.view.View;
import android.widget.TabHost.TabContentFactory;

final class NewMyCBSFragment$a
  implements TabHost.TabContentFactory
{
  private final Context a;
  
  public NewMyCBSFragment$a(Context paramContext)
  {
    a = paramContext;
  }
  
  public final View createTabContent(String paramString)
  {
    paramString = new View(a);
    paramString.setMinimumWidth(0);
    paramString.setMinimumHeight(0);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.NewMyCBSFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */