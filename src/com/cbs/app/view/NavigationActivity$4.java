package com.cbs.app.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.menu.CBSMenuItem;
import com.cbs.app.view.menu.MenuClickListener;
import java.util.HashMap;
import java.util.Stack;

final class NavigationActivity$4
  implements MenuClickListener
{
  NavigationActivity$4(NavigationActivity paramNavigationActivity) {}
  
  public final void a(CBSMenuItem paramCBSMenuItem)
  {
    if (a.equals("Shop"))
    {
      a.l();
      paramCBSMenuItem = new Intent("android.intent.action.VIEW", Uri.parse("http://www.cbsstore.com/"));
      a.startActivity(paramCBSMenuItem);
      paramCBSMenuItem = new HashMap();
      AnalyticsManager.c(a, Action.ci, paramCBSMenuItem);
    }
    do
    {
      return;
      localObject = (String)LogoKeeper.a.peek();
      NavigationActivity.o();
      new StringBuilder("selected() peek = ").append((String)localObject).append(" item = ").append(a);
      if (a.equals(localObject)) {
        break;
      }
      localObject = a.getIntent().getExtras();
      a.b = a;
      a.a(c, b, (Bundle)localObject);
      if (!LogoKeeper.a.isEmpty()) {
        LogoKeeper.a.clear();
      }
      LogoKeeper.a.push(a.b);
      a.l();
    } while (!a.b.equals("My CBS"));
    paramCBSMenuItem = Action.z;
    Object localObject = new HashMap();
    ((HashMap)localObject).put("appState", "cbscom:Homescreen");
    ((HashMap)localObject).put("events", "event19");
    AnalyticsManager.a(a, paramCBSMenuItem, (HashMap)localObject);
    return;
    NavigationActivity.o();
    a.m();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NavigationActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */