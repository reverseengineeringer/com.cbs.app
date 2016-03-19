package com.cbs.app.view.fragments.show.photos;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.cbs.app.adapter.ShowAlbumsAdapter2;
import com.cbs.app.analytics.Action;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.ShowFragmentV2;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowAlbum;
import com.cbs.app.view.model.rest.Album;
import com.cbs.app.view.model.rest.AlbumPhotoCollection;
import com.cbs.app.view.model.rest.ShowAlbumPhotosEndpointResponse;
import com.cbs.app.view.model.rest.ShowPhotosEndpointResponse;
import com.cbs.app.view.utils.GoogleAppIndexDeepLinkUtil;
import com.cbs.app.view.utils.Util;
import com.cbs.app.widget.GridViewWithHeaderBaseAdapter.GridItemClickListener;
import com.google.android.gms.appindexing.c;
import com.google.android.gms.common.api.b.a;
import java.util.List;

public class ShowPhotosFragment
  extends AbstractAsyncFragment
{
  private static final String l = ShowPhotosFragment.class.getName();
  private static Uri m = null;
  private static Uri n = null;
  final AbstractAsyncFragment h = this;
  public boolean i = false;
  public boolean j = false;
  GridViewWithHeaderBaseAdapter.GridItemClickListener k = new GridViewWithHeaderBaseAdapter.GridItemClickListener()
  {
    public final void a(int paramAnonymousInt)
    {
      ShowPhotosFragment.a();
      ShowPhotosFragment.this.a(paramAnonymousInt);
    }
  };
  private BackButtonListener o = new BackButtonListener()
  {
    public final boolean c()
    {
      ShowPhotosFragment.a();
      Object localObject = getActivity().getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject != null) && ((localObject instanceof ShowFragmentV2)))
      {
        localObject = (ShowFragmentV2)localObject;
        ((ShowFragmentV2)localObject).e();
        ((ShowFragmentV2)localObject).f();
        return true;
      }
      return false;
    }
    
    public final String getTag()
    {
      return ShowPhotosFragment.a();
    }
  };
  private com.google.android.gms.common.api.b p;
  private ShowItem q;
  private Show r;
  private long s = -1L;
  private ShowAlbum[] t = null;
  private View u;
  
  public ShowPhotosFragment()
  {
    setRetainInstance(true);
  }
  
  private void e()
  {
    Object localObject2 = getActivity();
    ListView localListView;
    Object localObject1;
    if ((u != null) && (localObject2 != null))
    {
      localListView = (ListView)u.findViewById(2131689957);
      if (t == null) {
        break label148;
      }
      localObject1 = new ShowAlbumsAdapter2((Context)localObject2, t);
      if (!Util.k((Context)localObject2)) {
        break label140;
      }
      ((ShowAlbumsAdapter2)localObject1).setNumColumns(4);
      ((ShowAlbumsAdapter2)localObject1).setOnGridClickListener(k);
      localObject2 = u.findViewById(2131689767);
      if (localObject2 != null) {
        ((View)localObject2).setVisibility(8);
      }
      localObject2 = g.getLayoutInflater().inflate(2130903140, null, false);
      if ((localListView != null) && (localListView.getFooterViewsCount() == 0))
      {
        localListView.addFooterView((View)localObject2);
        localListView.setFooterDividersEnabled(false);
      }
      if (localListView != null)
      {
        localListView.setAdapter((ListAdapter)localObject1);
        localListView.setVisibility(0);
      }
    }
    label140:
    label148:
    do
    {
      return;
      ((ShowAlbumsAdapter2)localObject1).setNumColumns(3);
      break;
      localObject1 = u.findViewById(2131689767);
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
    } while (localListView == null);
    localListView.setVisibility(8);
  }
  
  public final void a(int paramInt)
  {
    j = false;
    if ((t != null) && (t.length > 0) && (paramInt < t.length))
    {
      final ShowAlbum localShowAlbum = t[paramInt];
      if (localShowAlbum != null)
      {
        ResponseModelListener local3 = new ResponseModelListener()
        {
          public final void a()
          {
            ShowPhotosFragment.a();
            h.d();
            j = true;
          }
          
          public final void a(ResponseModel paramAnonymousResponseModel)
          {
            ShowPhotosFragment.a();
            h.d();
            int i;
            if ((paramAnonymousResponseModel instanceof ShowAlbumPhotosEndpointResponse))
            {
              ShowPhotosFragment.a();
              paramAnonymousResponseModel = ((ShowAlbumPhotosEndpointResponse)paramAnonymousResponseModel).getAlbums();
              if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
              {
                ShowPhotosFragment.a();
                paramAnonymousResponseModel = ((Album)paramAnonymousResponseModel.get(0)).getAlbumPhotoCollectoin();
                if (paramAnonymousResponseModel != null)
                {
                  ShowPhotosFragment.a();
                  paramAnonymousResponseModel = paramAnonymousResponseModel.getResults();
                  if (paramAnonymousResponseModel != null)
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
                FragmentActivity localFragmentActivity = h.getActivity();
                if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing()))
                {
                  Intent localIntent = new Intent(localFragmentActivity, GalleryActivity.class);
                  localIntent.putParcelableArrayListExtra("items", paramAnonymousResponseModel);
                  localIntent.putExtra("show_title", atitle);
                  localIntent.putExtra("show_id", aid);
                  localIntent.putExtra("show", ShowPhotosFragment.b(ShowPhotosFragment.this));
                  localIntent.putExtra("showAlbum", localShowAlbum);
                  localFragmentActivity.startActivity(localIntent);
                }
              }
              for (;;)
              {
                j = true;
                return;
                ShowPhotosFragment.a();
              }
              i = 0;
              continue;
              paramAnonymousResponseModel = null;
              i = 0;
            }
          }
        };
        h.b();
        new ShowServiceImpl().f(getActivity(), Long.valueOf(localShowAlbum.getId()).toString(), local3);
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    e();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = true;
    if ((Util.g(getActivity())) || (Util.f(getActivity()))) {}
    for (u = paramLayoutInflater.inflate(2130903154, paramViewGroup, false);; u = paramLayoutInflater.inflate(2130903155, paramViewGroup, false))
    {
      if ((g instanceof NavigationActivity)) {
        ((NavigationActivity)g).a(o);
      }
      r = ((Show)getArguments().getParcelable("show"));
      if (r != null) {
        s = r.getShowId();
      }
      if (q != null) {
        s = q.showId;
      }
      if (s != -1L)
      {
        paramLayoutInflater = new ResponseModelListener()
        {
          public final void a()
          {
            ShowPhotosFragment.a();
            i = true;
          }
          
          public final void a(ResponseModel paramAnonymousResponseModel)
          {
            ShowPhotosFragment.a();
            if ((paramAnonymousResponseModel instanceof ShowPhotosEndpointResponse))
            {
              ShowPhotosFragment.a();
              paramAnonymousResponseModel = ((ShowPhotosEndpointResponse)paramAnonymousResponseModel).getShowAlbums();
              if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
              {
                ShowPhotosFragment.a();
                new StringBuilder("showAlbumsList.size:").append(paramAnonymousResponseModel.size());
                ShowPhotosFragment.a(ShowPhotosFragment.this, (ShowAlbum[])paramAnonymousResponseModel.toArray(new ShowAlbum[paramAnonymousResponseModel.size()]));
              }
            }
            for (;;)
            {
              ShowPhotosFragment.c(ShowPhotosFragment.this);
              i = true;
              return;
              ShowPhotosFragment.a();
              continue;
              ShowPhotosFragment.a();
            }
          }
        };
        new ShowServiceImpl().e(getActivity(), Long.valueOf(s).toString(), paramLayoutInflater);
      }
      p = new b.a(getActivity()).a(com.google.android.gms.appindexing.b.b).b();
      return u;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(o);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d = Action.k;
    if (r != null)
    {
      e = r.getTitle();
      f = Long.valueOf(r.getId()).toString();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    p.c();
    String str = GoogleAppIndexDeepLinkUtil.a(r, null, "photos");
    Object localObject = GoogleAppIndexDeepLinkUtil.b(r, null, "photos");
    if ((str != null) && (localObject != null))
    {
      m = Uri.parse(str);
      new StringBuilder("APP_URI : ").append(m);
      n = Uri.parse((String)localObject);
      new StringBuilder("WEB_URL : ").append(n);
      str = r.getTitle() + " photos - CBS.com";
      localObject = com.google.android.gms.appindexing.b.c;
      com.google.android.gms.common.api.b localb = p;
      getActivity();
      ((c)localObject).a(localb, m, str, n);
    }
  }
  
  public void onStop()
  {
    super.onStop();
    c localc = com.google.android.gms.appindexing.b.c;
    com.google.android.gms.common.api.b localb = p;
    getActivity();
    localc.a(localb, m);
    p.d();
  }
  
  public void setShowItem(ShowItem paramShowItem)
  {
    q = paramShowItem;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.photos.ShowPhotosFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */