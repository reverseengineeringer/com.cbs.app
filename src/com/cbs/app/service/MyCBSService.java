package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.model.rest.ShowAddedEndpointResponse;
import java.util.Hashtable;

public class MyCBSService
  extends CBSBaseService
{
  public final void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    a(paramContext, "/lists/favoriteshows/unique/" + "favorite-shows" + ".json", paramResponseModelListener, FavoriteShowsEndpointResponse.class, false);
  }
  
  public final void a(Context paramContext, String paramString, ResponseModelListener paramResponseModelListener)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("uniqueName", paramString);
    localHashtable.put("name", paramString);
    a(paramContext, "/lists/favoriteshows/create.json", "application/x-www-form-urlencoded", localHashtable, paramResponseModelListener, FavoriteShowsEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener)
  {
    paramString1 = "/lists/favoriteshows/unique/" + paramString1 + "/item/add.json";
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("showId", paramString2);
    a(paramContext, paramString1, "application/x-www-form-urlencoded", localHashtable, paramResponseModelListener, ShowAddedEndpointResponse.class);
  }
  
  public final void a(Context paramContext, String paramString, Long[] paramArrayOfLong)
  {
    paramString = "/lists/favoriteshows/unique/" + paramString + "/item/bulk/add.json";
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("showId", paramArrayOfLong);
    a(paramContext, paramString, "application/x-www-form-urlencoded", localHashtable, null, ShowAddedEndpointResponse.class);
  }
  
  public final void b(Context paramContext, String paramString1, String paramString2, ResponseModelListener paramResponseModelListener)
  {
    paramString1 = "/lists/favoriteshows/unique/" + paramString1 + "/item/delete.json";
    Hashtable localHashtable = new Hashtable();
    localHashtable.put("showId", paramString2);
    a(paramContext, paramString1, "application/x-www-form-urlencoded", localHashtable, paramResponseModelListener, ShowAddedEndpointResponse.class);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.MyCBSService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */