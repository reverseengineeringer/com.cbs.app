package com.cbs.app.service;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.TonightEndpointResponse;

public class TonightServiceImpl
  extends CBSBaseService
  implements TonightService
{
  public final void a(Context paramContext, ResponseModelListener paramResponseModelListener)
  {
    b(paramContext, "v2.0", "/tonight.json", paramResponseModelListener, TonightEndpointResponse.class);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.TonightServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */