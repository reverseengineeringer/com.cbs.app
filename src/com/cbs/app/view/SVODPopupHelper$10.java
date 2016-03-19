package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;

final class SVODPopupHelper$10
  implements View.OnClickListener
{
  SVODPopupHelper$10(String paramString) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.d();
    if (a != null) {
      new ShowServiceImpl().g(SVODPopupHelper.e(), a, SVODPopupHelper.e);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */