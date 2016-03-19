package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.List;

final class MyCBSExporter$2
  implements ResponseModelListener
{
  MyCBSExporter$2(MyCBSExporter paramMyCBSExporter) {}
  
  public final void a()
  {
    String str = MyCBSExporter.a;
    if (a.c != null) {
      a.c.a();
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    String str = MyCBSExporter.a;
    if ((paramResponseModel != null) && ((paramResponseModel instanceof FavoriteShowsEndpointResponse)))
    {
      str = MyCBSExporter.a;
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        str = MyCBSExporter.a;
        paramResponseModel = paramResponseModel.getFavshowlist();
        if (paramResponseModel != null)
        {
          MyCBSExporter.a(a, paramResponseModel.getId());
          if (a.e != null)
          {
            a.d.a();
            paramResponseModel = a.d.getAllShows();
            a.d.b();
            if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
            {
              paramResponseModel = MyCBSExporter.a;
              new MyCBSService().a(a.e, a.f);
            }
          }
        }
      }
    }
    while (a.c == null)
    {
      do
      {
        do
        {
          do
          {
            return;
            Util.setMyCBSExported(a.e);
            paramResponseModel = MyCBSExporter.a;
          } while (a.c == null);
          a.c.a(MyCBSExporter.a(a));
          return;
          a.c.a();
          return;
          paramResponseModel = MyCBSExporter.a;
        } while (a.c == null);
        a.c.a();
        return;
        paramResponseModel = MyCBSExporter.a;
      } while (a.c == null);
      a.c.a();
      return;
    }
    a.c.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyCBSExporter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */