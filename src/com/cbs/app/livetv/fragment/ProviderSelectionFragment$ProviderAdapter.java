package com.cbs.app.livetv.fragment;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.utils.ImageHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ProviderSelectionFragment$ProviderAdapter
  extends ArrayListAdapter<MVPDConfig, ViewHolder>
{
  private int a = 1;
  
  protected final void a(ArrayList<MVPDConfig> paramArrayList, final String paramString)
  {
    Collections.sort(paramArrayList, new Comparator()
    {
      private Pattern c;
      
      private static int a(Matcher paramAnonymousMatcher)
      {
        int i = Integer.MAX_VALUE;
        if (paramAnonymousMatcher.find()) {
          i = paramAnonymousMatcher.start();
        }
        return i;
      }
    });
  }
  
  public int getItemViewType(int paramInt)
  {
    return a;
  }
  
  public int getMode()
  {
    return a;
  }
  
  public void setMode(int paramInt)
  {
    a = paramInt;
    if (getItemCount() > 0) {
      notifyItemRangeChanged(0, getItemCount());
    }
  }
  
  public static class ImageModeViewHolder
    extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
  {
    ImageView a;
    TextView b;
    
    public ImageModeViewHolder(View paramView)
    {
      super();
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
  
  public static class TextModeViewHolder
    extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
  {
    TextView a;
    
    public TextModeViewHolder(View paramView)
    {
      super();
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
  
  public static abstract class ViewHolder
    extends RecyclerView.ViewHolder
  {
    public ViewHolder(View paramView)
    {
      super();
    }
    
    public abstract void a(MVPDConfig paramMVPDConfig);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment.ProviderAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */