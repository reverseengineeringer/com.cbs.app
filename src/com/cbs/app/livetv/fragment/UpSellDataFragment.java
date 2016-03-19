package com.cbs.app.livetv.fragment;

import android.support.v4.app.Fragment;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.UpsellService;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;

public abstract class UpSellDataFragment
  extends Fragment
{
  private boolean a = false;
  
  protected abstract void a();
  
  protected abstract void a(UpsellEndpointResponse paramUpsellEndpointResponse);
  
  protected final void e()
  {
    if (!a)
    {
      a = true;
      new UpsellService().a(getActivity(), "MVPD_LIVE_TV_LANDING_ANDROID", new ResponseModelListener()
      {
        public final void a()
        {
          UpSellDataFragment.a(UpSellDataFragment.this);
          UpSellDataFragment.this.a();
        }
        
        public final void a(ResponseModel paramAnonymousResponseModel)
        {
          UpSellDataFragment.a(UpSellDataFragment.this);
          if (!isAdded()) {
            return;
          }
          a((UpsellEndpointResponse)paramAnonymousResponseModel);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.UpSellDataFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */