package com.cbs.app.view.fragments;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.fragments.show.videos.CustomWebviewActivity;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class HomeMarqueeFragment
  extends AbstractAsyncFragment
{
  private static final String i = HomeMarqueeFragment.class.getSimpleName();
  int h = -1;
  private String j = "???";
  private DeviceHome k;
  private double l;
  private float m;
  private String n;
  
  public static HomeMarqueeFragment a(DeviceHome paramDeviceHome)
  {
    HomeMarqueeFragment localHomeMarqueeFragment = new HomeMarqueeFragment();
    k = paramDeviceHome;
    return localHomeMarqueeFragment;
  }
  
  private void a(long paramLong, String paramString1, String paramString2)
  {
    new StringBuilder("handleShow() called with: optionalId = [").append(paramLong).append("], action = [").append(paramString1).append("], target = [").append(paramString2).append("]");
    ShowItem localShowItem = ShowServiceManager.a(paramLong);
    if ((localShowItem != null) && (g != null))
    {
      if ((g instanceof NavigationActivity))
      {
        NavigationActivity localNavigationActivity = (NavigationActivity)g;
        localNavigationActivity.i();
        localNavigationActivity.a(localShowItem);
      }
      a(paramString1, paramString2, Long.valueOf(paramLong).toString(), "", localShowItem);
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, ShowItem paramShowItem)
  {
    HashMap localHashMap = new HashMap();
    if (paramString1 != null) {
      localHashMap.put("action", paramString1);
    }
    localHashMap.put("appState", "cbscom:Homescreen");
    if (paramString2 != null) {
      localHashMap.put("target", paramString2);
    }
    localHashMap.put("position", Integer.toString(h));
    if (paramString3 != null) {
      localHashMap.put("optionalId", paramString3);
    }
    localHashMap.put("events", "event19");
    if (paramString4 != null) {
      localHashMap.put("cid", paramString4);
    }
    if (paramShowItem != null)
    {
      localHashMap.put("ShowTitle", title);
      localHashMap.put("showId", String.valueOf(showId));
      paramString1 = "cbscom:" + showId + "|" + title;
      localHashMap.put("evar_63", paramString1);
      localHashMap.put("prop_63", paramString1);
    }
    AnalyticsManager.a(g, Action.au, localHashMap);
  }
  
  public final void b(DeviceHome paramDeviceHome)
  {
    if (paramDeviceHome != null)
    {
      localObject1 = paramDeviceHome.getAction();
      if ((localObject1 == null) || (((List)localObject1).size() <= 0)) {
        break label603;
      }
    }
    label257:
    label603:
    for (Object localObject1 = (String)((List)localObject1).get(((List)localObject1).size() - 1);; localObject1 = null)
    {
      Object localObject2 = paramDeviceHome.getTarget();
      if ((localObject2 != null) && (((List)localObject2).size() > 0)) {}
      for (localObject2 = (String)((List)localObject2).get(((List)localObject2).size() - 1);; localObject2 = null)
      {
        Object localObject3 = paramDeviceHome.getOptional_id();
        paramDeviceHome = paramDeviceHome.getPid();
        try
        {
          l1 = Long.parseLong((String)localObject3);
          if ((localObject1 != null) && (((String)localObject1).equals("open")) && (localObject2 != null) && (((String)localObject2).equals("show_section")) && (l1 != 0L))
          {
            a(l1, (String)localObject1, (String)localObject2);
            return;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          long l1;
          Object localObject4;
          do
          {
            do
            {
              do
              {
                do
                {
                  for (;;)
                  {
                    localNumberFormatException.getMessage();
                    l1 = 0L;
                  }
                  if ((localObject1 != null) && (((String)localObject1).equals("sync")) && (l1 != 0L))
                  {
                    a(l1, (String)localObject1, (String)localObject2);
                    return;
                  }
                  if ((localObject1 != null) && (((String)localObject1).equals("url")))
                  {
                    if (localObject2 != null)
                    {
                      if (!((String)localObject2).contains("/all-access/")) {
                        break label257;
                      }
                      SVODPopupHelper.setWeWantToSeeVideo(null);
                      SVODPopupHelper.setWeWantToSeeShow(null);
                      SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                      SVODPopupHelper.c(g);
                    }
                    for (;;)
                    {
                      a((String)localObject1, (String)localObject2, (String)localObject3, paramDeviceHome, null);
                      return;
                      if (Pattern.compile(Pattern.quote("cbs:"), 2).matcher((CharSequence)localObject2).find())
                      {
                        localObject4 = Uri.parse(Util.d((String)localObject2));
                        UriHandler.a(getActivity(), (Uri)localObject4);
                      }
                      else
                      {
                        localObject4 = new Intent("android.intent.action.VIEW");
                        ((Intent)localObject4).setData(Uri.parse((String)localObject2));
                        if (Util.a(getActivity(), (Intent)localObject4)) {
                          startActivity((Intent)localObject4);
                        }
                      }
                    }
                  }
                  if ((localObject1 == null) || (!((String)localObject1).equals("embeddedURL"))) {
                    break;
                  }
                } while (localObject2 == null);
                if (((String)localObject2).contains("/all-access/"))
                {
                  SVODPopupHelper.setWeWantToSeeVideo(null);
                  SVODPopupHelper.setWeWantToSeeShow(null);
                  SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
                  SVODPopupHelper.c(g);
                  return;
                }
                paramDeviceHome = new Intent(g, CustomWebviewActivity.class);
                localObject1 = new Bundle();
                ((Bundle)localObject1).putString("launchUrl", (String)localObject2);
                paramDeviceHome.putExtras((Bundle)localObject1);
              } while (!Util.a(getActivity(), paramDeviceHome));
              g.startActivity(paramDeviceHome);
              return;
            } while ((localObject1 == null) || (!((String)localObject1).equals("video")) || (l1 == 0L));
            new StringBuilder("handleVideo() called with: optionId = [").append(l1).append("], pid = [").append(paramDeviceHome).append("], action = [").append((String)localObject1).append("], target = [").append((String)localObject2).append("]");
            localObject3 = ShowServiceManager.a(l1);
          } while ((localObject3 == null) || (g == null));
          if ((g instanceof NavigationActivity))
          {
            localObject4 = (NavigationActivity)g;
            ((NavigationActivity)localObject4).i();
            ((NavigationActivity)localObject4).a((ShowItem)localObject3, paramDeviceHome);
          }
          a((String)localObject1, (String)localObject2, Long.valueOf(l1).toString(), paramDeviceHome, (ShowItem)localObject3);
          return;
        }
      }
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (paramBundle.containsKey("HomeMarqueeFragment:Content"))) {
      j = paramBundle.getString("HomeMarqueeFragment:Content");
    }
    int i1 = Util.b(g);
    l = Util.a(g, i1);
    if ((Util.i(getActivity())) || (Util.j(getActivity()))) {
      l = 500.0D;
    }
    m = getResourcesgetDisplayMetricsdensityDpi;
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(2130903144, paramViewGroup, false);
    n = "ANONYMOUS";
    paramLayoutInflater = AuthStatusManager.getUserAuthStatus();
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater = paramLayoutInflater.getUserStatus();
      if (paramLayoutInflater != null) {
        n = paramLayoutInflater.getDescription();
      }
    }
    if (k != null)
    {
      paramLayoutInflater = k.getSvod_flag();
      if ((paramLayoutInflater != null) && (paramLayoutInflater.size() > 0) && (paramLayoutInflater.contains(n)) && (paramViewGroup != null))
      {
        paramLayoutInflater = paramViewGroup.findViewById(2131689904);
        if (paramLayoutInflater != null) {
          paramLayoutInflater.setVisibility(0);
        }
      }
    }
    paramLayoutInflater = null;
    if (paramViewGroup != null) {
      paramLayoutInflater = (ImageView)paramViewGroup.findViewById(2131689903);
    }
    if (paramLayoutInflater != null)
    {
      paramLayoutInflater.setScaleType(ImageView.ScaleType.CENTER_CROP);
      if (!Util.e(g)) {
        break label198;
      }
      paramLayoutInflater.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }
    for (;;)
    {
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b(HomeMarqueeFragment.a(HomeMarqueeFragment.this));
        }
      });
      if (k != null) {
        ImageHelper.b(ImageHelper.a(k.getFilepath(), l, m), paramLayoutInflater);
      }
      return paramViewGroup;
      label198:
      paramLayoutInflater.setLayoutParams(new RelativeLayout.LayoutParams(Util.a(g, 500.0D), Util.a(g, 209.0D)));
    }
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
  }
  
  public final void onDetach()
  {
    super.onDetach();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("HomeMarqueeFragment:Content", j);
  }
  
  public final void onStop()
  {
    super.onStop();
  }
  
  public final void setPosition(int paramInt)
  {
    h = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeMarqueeFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */