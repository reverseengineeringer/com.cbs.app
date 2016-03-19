package com.cbs.app.view.fragments.show;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.fragments.show.model.ShowsGroups;

final class ShowServiceManager$1
  implements ResponseModelListener
{
  ShowServiceManager$1(ShowServiceManager paramShowServiceManager) {}
  
  public final void a() {}
  
  public final void a(ResponseModel paramResponseModel)
  {
    ShowServiceManager.b = (ShowsGroups)paramResponseModel;
    if ((!ShowServiceManager.a(a)) && (ShowServiceManager.b(a) != null)) {
      ShowServiceManager.b(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.ShowServiceManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */