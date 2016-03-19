package com.cbs.app.livetv.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.utils.ImageHelper;

public class ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder
  extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
{
  ImageView a;
  TextView b;
  
  public ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder(View paramView)
  {
    super(paramView);
    a = ((ImageView)paramView.findViewById(2131690165));
    b = ((TextView)paramView.findViewById(2131690166));
  }
  
  public final void a(MVPDConfig paramMVPDConfig)
  {
    if (paramMVPDConfig != null)
    {
      String str = paramMVPDConfig.getFilepathAdobeLogoOverride();
      if (!TextUtils.isEmpty(str))
      {
        ImageHelper.a(ImageResizerUrl.a(str, a.getWidth()), a, -1, -1, true);
        a.setVisibility(0);
        b.setVisibility(8);
        return;
      }
      if (!TextUtils.isEmpty(paramMVPDConfig.getAdobeLogoUrl()))
      {
        ImageHelper.a(paramMVPDConfig.getAdobeLogoUrl(), a, -1, -1, true);
        a.setVisibility(0);
        b.setVisibility(8);
        return;
      }
      if ((!TextUtils.isEmpty(paramMVPDConfig.getMvpd())) && (paramMVPDConfig.getMvpd().equals("special_case")))
      {
        a.setVisibility(8);
        b.setVisibility(0);
        b.setClickable(false);
        itemView.setClickable(false);
        return;
      }
      a.setVisibility(8);
      b.setVisibility(0);
      b.setText(paramMVPDConfig.getMvpd());
      return;
    }
    a.setVisibility(8);
    b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.ProviderAdapter.ImageModeViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */