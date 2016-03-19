package com.cbs.app.view.fragments.show.photos;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.model.rest.ShowPhotosEndpointResponse;
import java.util.List;

final class ShowPhotosFragment$4
  implements ResponseModelListener
{
  ShowPhotosFragment$4(ShowPhotosFragment paramShowPhotosFragment) {}
  
  public final void a()
  {
    ShowPhotosFragment.a();
    a.i = true;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    ShowPhotosFragment.a();
    if ((paramResponseModel instanceof ShowPhotosEndpointResponse))
    {
      ShowPhotosFragment.a();
      paramResponseModel = ((ShowPhotosEndpointResponse)paramResponseModel).getShowAlbums();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        ShowPhotosFragment.a();
        new StringBuilder("showAlbumsList.size:").append(paramResponseModel.size());
        ShowPhotosFragment.a(a, (ShowAlbum[])paramResponseModel.toArray(new ShowAlbum[paramResponseModel.size()]));
      }
    }
    for (;;)
    {
      ShowPhotosFragment.c(a);
      a.i = true;
      return;
      ShowPhotosFragment.a();
      continue;
      ShowPhotosFragment.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.ShowPhotosFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */