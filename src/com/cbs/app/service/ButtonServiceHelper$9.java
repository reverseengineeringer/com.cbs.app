package com.cbs.app.service;

import android.widget.Toast;
import com.cbs.app.view.fragments.mycbs.MyCBSExporter.ExporterDoneListener;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.Show;
import java.util.ArrayList;
import java.util.Iterator;

final class ButtonServiceHelper$9
  implements MyCBSExporter.ExporterDoneListener
{
  public final void a() {}
  
  public final void a(FavoriteShowList paramFavoriteShowList)
  {
    ButtonServiceHelper.k();
    if (paramFavoriteShowList != null)
    {
      paramFavoriteShowList = paramFavoriteShowList.getShowList();
      if (paramFavoriteShowList == null) {
        break label143;
      }
      paramFavoriteShowList = paramFavoriteShowList.iterator();
      do
      {
        if (!paramFavoriteShowList.hasNext()) {
          break;
        }
      } while (((FavoriteShow)paramFavoriteShowList.next()).getCbsShowId() != ButtonServiceHelper.f().getShowId());
    }
    label143:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        ButtonServiceHelper.a(true);
      }
      if (ButtonServiceHelper.h()) {
        if (ButtonServiceHelper.i()) {
          ButtonServiceHelper.a();
        }
      }
      for (;;)
      {
        ButtonServiceHelper.c();
        return;
        if (ButtonServiceHelper.j())
        {
          Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
        }
        else
        {
          ButtonServiceHelper.b();
          continue;
          if (ButtonServiceHelper.l()) {
            if (ButtonServiceHelper.j()) {
              Toast.makeText(ButtonServiceHelper.g(), "You already had this show added to My CBS", 1).show();
            } else {
              ButtonServiceHelper.b();
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */