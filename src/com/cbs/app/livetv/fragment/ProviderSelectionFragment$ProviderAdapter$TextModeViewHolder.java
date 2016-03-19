package com.cbs.app.livetv.fragment;

import android.view.View;
import android.widget.TextView;
import com.cbs.app.view.model.MVPDConfig;

public class ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder
  extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
{
  TextView a;
  
  public ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder(View paramView)
  {
    super(paramView);
    a = ((TextView)paramView);
  }
  
  public final void a(MVPDConfig paramMVPDConfig)
  {
    if (paramMVPDConfig != null)
    {
      a.setText(paramMVPDConfig.getMvpd());
      a.setClickable(true);
      return;
    }
    a.setText("");
    a.setClickable(false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.ProviderAdapter.TextModeViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */