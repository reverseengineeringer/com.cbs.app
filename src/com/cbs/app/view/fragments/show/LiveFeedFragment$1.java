package com.cbs.app.view.fragments.show;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.Iterator;
import java.util.List;

final class LiveFeedFragment$1
  implements ResponseModelListener
{
  LiveFeedFragment$1(LiveFeedFragment paramLiveFeedFragment) {}
  
  public final void a()
  {
    LiveFeedFragment.e();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    LiveFeedFragment.e();
    if ((paramResponseModel instanceof UpsellEndpointResponse))
    {
      paramResponseModel = ((UpsellEndpointResponse)paramResponseModel).getUpsellInfo();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        paramResponseModel = paramResponseModel.iterator();
        while (paramResponseModel.hasNext())
        {
          UpsellInfo localUpsellInfo = (UpsellInfo)paramResponseModel.next();
          if (localUpsellInfo.getActionTarget().equals("android_content_1"))
          {
            LiveFeedFragment.e();
            a.i = localUpsellInfo;
            LiveFeedFragment.a(a, a.i.getTitle());
            LiveFeedFragment.e();
            new StringBuilder("upsell title : ").append(LiveFeedFragment.a(a));
            LiveFeedFragment.b(a, a.i.getUpsellMessage());
            LiveFeedFragment.e();
            new StringBuilder("upsell message : ").append(LiveFeedFragment.b(a));
            LiveFeedFragment.c(a, a.i.getUpsellMessage2());
            LiveFeedFragment.d(a, a.i.getUpsellImagePath());
            LiveFeedFragment.e();
            new StringBuilder("upsell image1 url1 : ").append(LiveFeedFragment.c(a));
            a.i.getUpsellImagePath1();
            LiveFeedFragment.e();
            LiveFeedFragment.e(a, a.i.getCallToAction());
            LiveFeedFragment.e();
            new StringBuilder("callToActionText : ").append(LiveFeedFragment.d(a));
            String str = a.i.getCallToAction();
            LiveFeedFragment.f(a, Util.k(LiveFeedFragment.e(a), localUpsellInfo.getCallToActionURL()));
            if ((str != null) && (LiveFeedFragment.f(a) != null))
            {
              LiveFeedFragment.e();
              new StringBuilder(" callToAction: ").append(str).append(" callToActionUrl: ").append(LiveFeedFragment.f(a));
            }
          }
        }
        if (LiveFeedFragment.g(a) != null) {
          a.a();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.LiveFeedFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */