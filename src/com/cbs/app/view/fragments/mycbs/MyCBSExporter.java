package com.cbs.app.view.fragments.mycbs;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.db.MyShow;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MyCBSExporter
{
  public static final String a = MyCBSExporter.class.getSimpleName();
  static boolean b = false;
  public ExporterDoneListener c;
  MyShowDataSource d = null;
  Context e;
  ResponseModelListener f = new ResponseModelListener()
  {
    public final void a()
    {
      String str = MyCBSExporter.a;
      if (c != null) {
        c.a();
      }
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = MyCBSExporter.a;
      if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        str = MyCBSExporter.a;
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        bool = paramAnonymousResponseModel.isSuccess();
        str = MyCBSExporter.a;
        if (bool)
        {
          MyCBSExporter.a(MyCBSExporter.this, paramAnonymousResponseModel.getFavshowlist());
          if (MyCBSExporter.a(MyCBSExporter.this) != null)
          {
            paramAnonymousResponseModel = MyCBSExporter.a;
            a(MyCBSExporter.a(MyCBSExporter.this));
            if (c != null) {
              c.a(MyCBSExporter.a(MyCBSExporter.this));
            }
          }
        }
      }
      while (c == null)
      {
        do
        {
          do
          {
            boolean bool;
            return;
            paramAnonymousResponseModel = MyCBSExporter.a;
          } while (c == null);
          c.a();
          return;
        } while (c == null);
        c.a();
        return;
      }
      c.a();
    }
  };
  ResponseModelListener g = new ResponseModelListener()
  {
    public final void a()
    {
      String str = MyCBSExporter.a;
      if (c != null) {
        c.a();
      }
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = MyCBSExporter.a;
      if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        str = MyCBSExporter.a;
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          str = MyCBSExporter.a;
          paramAnonymousResponseModel = paramAnonymousResponseModel.getFavshowlist();
          if (paramAnonymousResponseModel != null)
          {
            MyCBSExporter.a(MyCBSExporter.this, paramAnonymousResponseModel.getId());
            if (e != null)
            {
              d.a();
              paramAnonymousResponseModel = d.getAllShows();
              d.b();
              if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
              {
                paramAnonymousResponseModel = MyCBSExporter.a;
                new MyCBSService().a(e, f);
              }
            }
          }
        }
      }
      while (c == null)
      {
        do
        {
          do
          {
            do
            {
              return;
              Util.setMyCBSExported(e);
              paramAnonymousResponseModel = MyCBSExporter.a;
            } while (c == null);
            c.a(MyCBSExporter.a(MyCBSExporter.this));
            return;
            c.a();
            return;
            paramAnonymousResponseModel = MyCBSExporter.a;
          } while (c == null);
          c.a();
          return;
          paramAnonymousResponseModel = MyCBSExporter.a;
        } while (c == null);
        c.a();
        return;
      }
      c.a();
    }
  };
  ResponseModelListener h = new ResponseModelListener()
  {
    public final void a()
    {
      String str = MyCBSExporter.a;
      if (c != null) {
        c.a();
      }
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = MyCBSExporter.a;
      if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
      {
        str = MyCBSExporter.a;
        paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          MyCBSExporter.a(MyCBSExporter.this, paramAnonymousResponseModel.getFavshowlist());
          if (MyCBSExporter.a(MyCBSExporter.this) == null)
          {
            paramAnonymousResponseModel = MyCBSExporter.a;
            new MyCBSService().a(e, "favorite-shows", g);
          }
        }
      }
      while (c == null)
      {
        do
        {
          return;
          paramAnonymousResponseModel = MyCBSExporter.a;
          new MyCBSService().a(e, f);
          return;
          paramAnonymousResponseModel = MyCBSExporter.a;
        } while (c == null);
        c.a();
        return;
      }
      c.a();
    }
  };
  private FavoriteShowList i = null;
  private long j = -1L;
  
  public MyCBSExporter(Context paramContext, ExporterDoneListener paramExporterDoneListener)
  {
    e = paramContext;
    d = new MyShowDataSource(paramContext);
    c = paramExporterDoneListener;
  }
  
  public final void a()
  {
    if (!b)
    {
      b = true;
      if (!Util.r(e)) {
        new MyCBSService().a(e, h);
      }
    }
  }
  
  public final void a(FavoriteShowList paramFavoriteShowList)
  {
    int k = 0;
    int m = 0;
    j = paramFavoriteShowList.getId();
    new StringBuilder("has show list: ").append(j);
    Object localObject1 = paramFavoriteShowList.getShowList();
    Object localObject2;
    Object localObject3;
    Object localObject4;
    MyShow localMyShow;
    Object localObject5;
    if ((localObject1 != null) && (((ArrayList)localObject1).size() > 0))
    {
      d.a();
      paramFavoriteShowList = d.getAllShows();
      d.b();
      if ((paramFavoriteShowList != null) && (paramFavoriteShowList.size() > 0))
      {
        localObject2 = new MyCBSService();
        localObject3 = new ArrayList();
        localObject4 = paramFavoriteShowList.iterator();
        if (((Iterator)localObject4).hasNext())
        {
          localMyShow = (MyShow)((Iterator)localObject4).next();
          paramFavoriteShowList = ((ArrayList)localObject1).iterator();
          Object localObject6;
          do
          {
            if (!paramFavoriteShowList.hasNext()) {
              break;
            }
            localObject6 = (FavoriteShow)paramFavoriteShowList.next();
            localObject5 = localMyShow.getShowId();
            new StringBuilder("integer show id: ").append(localObject5);
            localObject6 = Long.valueOf(((FavoriteShow)localObject6).getCbsShowId());
            localObject5 = Long.valueOf(((Integer)localObject5).longValue());
            new StringBuilder("long show id2: ").append(localObject5);
            new StringBuilder("comparing ").append(localObject6).append(" to ").append(localObject5);
          } while (!((Long)localObject5).equals(localObject6));
        }
      }
    }
    for (k = 1;; k = 0)
    {
      localObject5 = new StringBuilder("found it?: ");
      if (k != 0) {}
      for (paramFavoriteShowList = "true";; paramFavoriteShowList = "false")
      {
        ((StringBuilder)localObject5).append(paramFavoriteShowList);
        if (k != 0) {
          break;
        }
        paramFavoriteShowList = localMyShow.getShowId();
        new StringBuilder("integer show id3: ").append(paramFavoriteShowList);
        paramFavoriteShowList = Long.valueOf(paramFavoriteShowList.longValue());
        new StringBuilder("long show id3: ").append(paramFavoriteShowList);
        localObject5 = new FavoriteShow();
        ((FavoriteShow)localObject5).setCbsShowId(localMyShow.getShowId().intValue());
        ((ArrayList)localObject1).add(localObject5);
        ((ArrayList)localObject3).add(paramFavoriteShowList);
        break;
      }
      paramFavoriteShowList = new Long[((ArrayList)localObject3).size()];
      localObject1 = ((ArrayList)localObject3).iterator();
      k = m;
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (Long)((Iterator)localObject1).next();
        new StringBuilder("adding: ").append(localObject3);
        paramFavoriteShowList[k] = localObject3;
        k += 1;
      }
      new StringBuilder("ids.length: ").append(paramFavoriteShowList.length);
      if (paramFavoriteShowList.length > 0) {
        ((MyCBSService)localObject2).a(e, "favorite-shows", paramFavoriteShowList);
      }
      for (;;)
      {
        Util.setMyCBSExported(e);
        return;
        d.a();
        localObject2 = d.getAllShows();
        d.b();
        if ((localObject2 != null) && (((List)localObject2).size() > 0))
        {
          paramFavoriteShowList = new ArrayList();
          localObject2 = ((List)localObject2).iterator();
          while (((Iterator)localObject2).hasNext())
          {
            localObject3 = (MyShow)((Iterator)localObject2).next();
            paramFavoriteShowList.add(Long.valueOf(((MyShow)localObject3).getShowId().longValue()));
            localObject4 = new FavoriteShow();
            ((FavoriteShow)localObject4).setCbsShowId(((MyShow)localObject3).getShowId().intValue());
            ((ArrayList)localObject1).add(localObject4);
          }
          localObject1 = new Long[paramFavoriteShowList.size()];
          paramFavoriteShowList = paramFavoriteShowList.iterator();
          while (paramFavoriteShowList.hasNext())
          {
            localObject2 = (Long)paramFavoriteShowList.next();
            new StringBuilder("adding: ").append(localObject2);
            localObject1[k] = localObject2;
            k += 1;
          }
          if (localObject1.length > 0) {
            new MyCBSService().a(e, "favorite-shows", (Long[])localObject1);
          }
        }
      }
    }
  }
  
  public FavoriteShowList getShowList()
  {
    return i;
  }
  
  public static abstract interface ExporterDoneListener
  {
    public abstract void a();
    
    public abstract void a(FavoriteShowList paramFavoriteShowList);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyCBSExporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */