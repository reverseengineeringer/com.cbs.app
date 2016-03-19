package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.ShowVideo;
import com.cbs.app.view.model.rest.MyCbsEndpointResponse;
import java.util.Arrays;
import java.util.Comparator;

final class MyShowVideoFragment$16
  implements ResponseModelListener
{
  MyShowVideoFragment$16(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    MyShowVideoFragment.i();
    MyShowVideoFragment.a(a, null);
    MyShowVideoFragment.C(a);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    MyShowVideoFragment.i();
    int i;
    Object localObject1;
    int j;
    if ((paramResponseModel instanceof MyCbsEndpointResponse))
    {
      MyShowVideoFragment.i();
      paramResponseModel = (MyCbsEndpointResponse)paramResponseModel;
      MyShowVideoFragment.a(a, paramResponseModel.getShowVideoArray());
      if (MyShowVideoFragment.B(a) != null)
      {
        paramResponseModel = MyShowVideoFragment.B(a);
        int k = paramResponseModel.length;
        i = 0;
        if (i < k)
        {
          localObject1 = paramResponseModel[i];
          if (localObject1 == null) {
            break label160;
          }
          Object localObject2 = ((ShowVideo)localObject1).getShowId();
          if (localObject2 == null) {
            break label160;
          }
          localObject2 = ShowServiceManager.a(((Integer)localObject2).longValue());
          if (localObject2 == null) {
            break label160;
          }
          j = 1;
          ((ShowVideo)localObject1).setShowTitle(title);
        }
      }
    }
    for (;;)
    {
      if ((j == 0) && (localObject1 != null)) {
        ((ShowVideo)localObject1).setShowTitle("z");
      }
      i += 1;
      break;
      Arrays.sort(MyShowVideoFragment.B(a), new Comparator() {});
      MyShowVideoFragment.C(a);
      return;
      label160:
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */