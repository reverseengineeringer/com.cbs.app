package com.cbs.app.view.fragments.show.cast;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.cbs.app.view.model.DeviceCast;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import java.util.List;

public class CastMemberImageFragment
  extends Fragment
{
  private static final String a = CastMemberImageFragment.class.getSimpleName();
  private View b = null;
  private DeviceCast c = null;
  private Activity d = null;
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    d = paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    b = paramLayoutInflater.inflate(2130903085, paramViewGroup, false);
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater = paramLayoutInflater.getParcelable("deviceCast");
      if (paramLayoutInflater != null)
      {
        c = ((DeviceCast)paramLayoutInflater);
        if ((b != null) && (c != null)) {
          if ((c.getFilepathIPadCastCarouselLandscape() == null) || (c.getFilepathIPadCastCarouselLandscape().size() <= 0)) {
            break label319;
          }
        }
      }
    }
    label295:
    label305:
    label319:
    for (paramLayoutInflater = (String)c.getFilepathIPadCastCarouselLandscape().get(0);; paramLayoutInflater = null)
    {
      int j;
      int k;
      int m;
      int n;
      if (paramLayoutInflater != null)
      {
        paramViewGroup = b.findViewById(2131689585);
        if ((paramViewGroup != null) && ((paramViewGroup instanceof ImageView)))
        {
          paramViewGroup = (ImageView)paramViewGroup;
          j = Util.b(d);
          k = Math.round(getResources().getDimension(2131361986));
          if (!Util.i(d))
          {
            i = j;
            if (!Util.j(d)) {}
          }
          else
          {
            if (!Util.k(d)) {
              break label305;
            }
            m = Util.a(d, 240.0D);
            i = Util.a(d, 300.0D);
            n = Util.a(d, 400.0D);
            if (!Util.i(d)) {
              break label295;
            }
            i = j - i;
          }
        }
      }
      for (int i = i - m - k * 2;; i = j / 2 - k * 2)
      {
        i = Util.a(d, i);
        j = Util.a(d);
        ImageHelper.c(ImageHelper.a(paramLayoutInflater, i, j), paramViewGroup);
        return b;
        i = j - n;
        break;
      }
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastMemberImageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */