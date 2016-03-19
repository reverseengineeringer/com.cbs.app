package com.cbs.app.view.fragments.show;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.fragments.show.model.ShowGroups;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.model.Shows;
import com.cbs.app.view.fragments.show.model.ShowsGroups;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.Iterator;

public class ShowServiceManager
{
  public static Shows a;
  public static ShowsGroups b;
  private static ShowServiceImpl e;
  ResponseModelListener c = new ResponseModelListener()
  {
    public final void a() {}
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      ShowServiceManager.b = (ShowsGroups)paramAnonymousResponseModel;
      if ((!ShowServiceManager.a(ShowServiceManager.this)) && (ShowServiceManager.b(ShowServiceManager.this) != null)) {
        ShowServiceManager.b(ShowServiceManager.this).a();
      }
    }
  };
  ResponseModelListener d = new ResponseModelListener()
  {
    public final void a() {}
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      ShowServiceManager.b = (ShowsGroups)paramAnonymousResponseModel;
      a(0);
    }
  };
  private boolean f;
  private Context g;
  private int h;
  private ShowServiceManagerListener i;
  private ResponseModelListener j = new ResponseModelListener()
  {
    public final void a() {}
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      ShowServiceManager.a = (Shows)paramAnonymousResponseModel;
      if ((!ShowServiceManager.a(ShowServiceManager.this)) && (ShowServiceManager.b(ShowServiceManager.this) != null)) {
        ShowServiceManager.b(ShowServiceManager.this).a(ShowServiceManager.c(ShowServiceManager.this));
      }
    }
  };
  
  public ShowServiceManager(Context paramContext)
  {
    g = paramContext;
    if (e == null) {
      e = new ShowServiceImpl();
    }
    f = false;
  }
  
  public static ShowItem a(long paramLong)
  {
    if (b != null)
    {
      Iterator localIterator = bshowItems.iterator();
      while (localIterator.hasNext())
      {
        ShowItem localShowItem = (ShowItem)localIterator.next();
        if (showId == paramLong) {
          return localShowItem;
        }
      }
    }
    return null;
  }
  
  public final void a(int paramInt)
  {
    if ((b != null) && (bshowGroups != null) && (paramInt < bshowGroups.size()))
    {
      if ((a()) && (i != null) && (h == bshowGroups.get(paramInt)).id))
      {
        i.a(h);
        return;
      }
      h = bshowGroups.get(paramInt)).id;
      ShowServiceImpl localShowServiceImpl = e;
      Context localContext = g;
      paramInt = h;
      ResponseModelListener localResponseModelListener = j;
      String str = Util.Q(localContext);
      localShowServiceImpl.a(localContext, "v2.0", "/apps-api/v2.0/" + str + "/shows/group/" + paramInt + ".json", localResponseModelListener, Shows.class);
      return;
    }
    getEverything();
  }
  
  public final boolean a()
  {
    return (!f) && (a != null) && (ashowGroups != null);
  }
  
  public final boolean b()
  {
    return (!f) && (b != null);
  }
  
  public final void c()
  {
    f = true;
    i = null;
  }
  
  public void getAllShows()
  {
    if (b == null) {
      e.b(g, c);
    }
    while ((f) || (i == null)) {
      return;
    }
    i.a();
  }
  
  public void getEverything()
  {
    if (b == null) {
      e.b(g, d);
    }
    while ((f) || (i == null)) {
      return;
    }
    i.a();
  }
  
  public void setLastId(int paramInt)
  {
    if (a()) {
      h = bshowGroups.get(paramInt)).id;
    }
  }
  
  public void setShowServiceListener(ShowServiceManagerListener paramShowServiceManagerListener)
  {
    i = paramShowServiceManagerListener;
  }
  
  public static abstract interface ShowServiceManagerListener
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowServiceManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */