package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;

final class MyCBSExporter$3
  implements ResponseModelListener
{
  MyCBSExporter$3(MyCBSExporter paramMyCBSExporter) {}
  
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
        MyCBSExporter.a(a, paramResponseModel.getFavshowlist());
        if (MyCBSExporter.a(a) == null)
        {
          paramResponseModel = MyCBSExporter.a;
          new MyCBSService().a(a.e, "favorite-shows", a.g);
        }
      }
    }
    while (a.c == null)
    {
      do
      {
        return;
        paramResponseModel = MyCBSExporter.a;
        new MyCBSService().a(a.e, a.f);
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
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyCBSExporter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */