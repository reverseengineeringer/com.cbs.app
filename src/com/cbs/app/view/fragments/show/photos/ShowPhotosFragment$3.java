package com.cbs.app.view.fragments.show.photos;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.model.rest.Album;
import com.cbs.app.view.model.rest.AlbumPhotoCollection;
import com.cbs.app.view.model.rest.ShowAlbumPhotosEndpointResponse;
import java.util.List;

final class ShowPhotosFragment$3
  implements ResponseModelListener
{
  ShowPhotosFragment$3(ShowPhotosFragment paramShowPhotosFragment, ShowAlbum paramShowAlbum) {}
  
  public final void a()
  {
    ShowPhotosFragment.a();
    b.h.d();
    b.j = true;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    ShowPhotosFragment.a();
    b.h.d();
    int i;
    if ((paramResponseModel instanceof ShowAlbumPhotosEndpointResponse))
    {
      ShowPhotosFragment.a();
      paramResponseModel = ((ShowAlbumPhotosEndpointResponse)paramResponseModel).getAlbums();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        ShowPhotosFragment.a();
        paramResponseModel = ((Album)paramResponseModel.get(0)).getAlbumPhotoCollectoin();
        if (paramResponseModel != null)
        {
          ShowPhotosFragment.a();
          paramResponseModel = paramResponseModel.getResults();
          if (paramResponseModel != null)
          {
            ShowPhotosFragment.a();
            i = 1;
          }
        }
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        ShowPhotosFragment.a();
        FragmentActivity localFragmentActivity = b.h.getActivity();
        if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing()))
        {
          Intent localIntent = new Intent(localFragmentActivity, GalleryActivity.class);
          localIntent.putParcelableArrayListExtra("items", paramResponseModel);
          localIntent.putExtra("show_title", ab).title);
          localIntent.putExtra("show_id", ab).id);
          localIntent.putExtra("show", ShowPhotosFragment.b(b));
          localIntent.putExtra("showAlbum", a);
          localFragmentActivity.startActivity(localIntent);
        }
      }
      for (;;)
      {
        b.j = true;
        return;
        ShowPhotosFragment.a();
      }
      i = 0;
      continue;
      paramResponseModel = null;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.ShowPhotosFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */