package com.cbs.app.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;

final class SVODPopupHelper$9
  implements View.OnClickListener
{
  SVODPopupHelper$9(String paramString, TextView paramTextView) {}
  
  public final void onClick(View paramView)
  {
    SVODPopupHelper.d();
    if (a != null)
    {
      new ShowServiceImpl().g(SVODPopupHelper.e(), a, SVODPopupHelper.e);
      return;
    }
    b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */