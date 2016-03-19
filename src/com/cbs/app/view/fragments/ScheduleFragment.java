package com.cbs.app.view.fragments;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.cbs.app.analytics.Action;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.TonightService;
import com.cbs.app.service.TonightServiceImpl;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.BackButtonListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.rest.TonightEndpointResponse;
import com.cbs.app.view.model.rest.TonightResponse;
import com.cbs.app.view.utils.Util;
import com.cbs.app.widget.HorizontalScrollViewListener;
import com.cbs.app.widget.ObservableHorizontalScrollView;
import com.cbs.app.widget.ScheduleGridLayout;
import java.util.ArrayList;
import java.util.Iterator;

public class ScheduleFragment
  extends AbstractAsyncFragment
  implements HorizontalScrollViewListener
{
  protected static final String h = ScheduleFragment.class.getSimpleName();
  private static ArrayList<Episode> m = null;
  ScheduleGridLayout i;
  boolean j = false;
  ResponseModelListener k = new ResponseModelListener()
  {
    public final void a()
    {
      String str = ScheduleFragment.h;
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      String str = ScheduleFragment.h;
      if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof TonightEndpointResponse)))
      {
        paramAnonymousResponseModel = ((TonightEndpointResponse)paramAnonymousResponseModel).getTonightResponse();
        if (paramAnonymousResponseModel != null) {
          ScheduleFragment.a(paramAnonymousResponseModel.getTonightEpisodes());
        }
        j = true;
      }
    }
  };
  AccountUIHelper.RefreshAccountListener l = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      AccountUIHelper.setReconcileDialogShowing(false);
    }
  };
  private final BackButtonListener n = new BackButtonListener()
  {
    public final boolean c()
    {
      String str = ScheduleFragment.h;
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (ScheduleFragment.a(ScheduleFragment.this) != null)
      {
        bool1 = bool2;
        if ((ScheduleFragment.b(ScheduleFragment.this) instanceof NavigationActivity))
        {
          ((NavigationActivity)ScheduleFragment.c(ScheduleFragment.this)).k();
          bool1 = true;
        }
      }
      return bool1;
    }
    
    public final String getTag()
    {
      return ScheduleFragment.h;
    }
  };
  private ObservableHorizontalScrollView o;
  private ObservableHorizontalScrollView p;
  
  public ScheduleFragment()
  {
    setRetainInstance(true);
  }
  
  private static int a(String paramString1, String paramString2)
  {
    int i2;
    int i1;
    int i3;
    if ((paramString1.indexOf(":") > 0) && (paramString2.indexOf(":") > 0))
    {
      paramString1 = paramString1.split(":");
      i2 = Integer.parseInt(paramString1[0]);
      i1 = Integer.parseInt(paramString1[1]);
      paramString1 = paramString2.split(":");
      int i4 = Integer.parseInt(paramString1[0]);
      i3 = Integer.parseInt(paramString1[1]);
      i2 = (i4 - i2) * 2;
      i3 -= i1;
      if (i3 < 25) {
        break label92;
      }
      i1 = i2 + 1;
    }
    while (i1 < 0)
    {
      return 0;
      label92:
      i1 = i2;
      if (i3 < 0) {
        i1 = i2 - 1;
      }
    }
    return i1;
  }
  
  private static String a(int paramInt, String paramString)
  {
    int i1 = 0;
    String str = "20:00";
    int i2;
    if (paramString.indexOf(":") > 0)
    {
      paramString = paramString.split(":");
      i2 = Integer.parseInt(paramString[0]);
      int i3 = Integer.parseInt(paramString[1]);
      i2 = paramInt / 2 + i2;
      paramInt = paramInt % 2 * 30 + i3;
      if (paramInt <= 55) {
        break label136;
      }
    }
    for (paramInt = i2 + 1;; paramInt = i2)
    {
      if (i1 == 0)
      {
        str = String.valueOf(paramInt) + ":" + String.valueOf(i1) + "0";
        return str;
      }
      return String.valueOf(paramInt) + ":" + String.valueOf(i1);
      label136:
      i1 = paramInt;
    }
  }
  
  public final void a(ObservableHorizontalScrollView paramObservableHorizontalScrollView, int paramInt1, int paramInt2)
  {
    if ((paramObservableHorizontalScrollView == o) && (paramInt1 < o.getWidth() + o.getWidth() / 6)) {
      p.scrollTo(paramInt1, paramInt2);
    }
    while (paramObservableHorizontalScrollView != p) {
      return;
    }
    o.scrollTo(paramInt1, paramInt2);
  }
  
  public final void c() {}
  
  public void getTonightData()
  {
    new TonightServiceImpl().a(getActivity(), k);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getTonightData();
    AccountUIHelper.a(l);
    c = true;
    double d = getApplicationContext().getScreenWidth();
    getApplicationContext().getDensityDpi();
    if ((d < 8.0D) && (d > 5.1D))
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2130903150, paramViewGroup, false);
      i = ((ScheduleGridLayout)paramLayoutInflater.findViewById(2131689937));
      i.setSize(600);
      i.setViewHandle(paramLayoutInflater);
    }
    Object localObject;
    int i2;
    int i1;
    for (;;)
    {
      o = ((ObservableHorizontalScrollView)paramLayoutInflater.findViewById(2131689917));
      o.setScrollViewListener(this);
      p = ((ObservableHorizontalScrollView)paramLayoutInflater.findViewById(2131689936));
      p.setScrollViewListener(this);
      paramViewGroup = new ArrayList();
      paramBundle = getArguments();
      if (paramBundle == null) {
        break label309;
      }
      paramBundle.getParcelableArray("allShows");
      localObject = paramBundle.getParcelableArray("episodeSchedule");
      if (localObject == null) {
        break;
      }
      i2 = localObject.length;
      i1 = 0;
      while (i1 < i2)
      {
        paramViewGroup.add((Episode)localObject[i1]);
        i1 += 1;
      }
      if (d > 8.0D)
      {
        paramLayoutInflater = paramLayoutInflater.inflate(2130903151, paramViewGroup, false);
        i = ((ScheduleGridLayout)paramLayoutInflater.findViewById(2131689937));
        i.setSize(720);
        i.setViewHandle(paramLayoutInflater);
      }
      else
      {
        paramLayoutInflater = paramLayoutInflater.inflate(2130903149, paramViewGroup, false);
        i = ((ScheduleGridLayout)paramLayoutInflater.findViewById(2131689937));
        i.setSize(320);
        i.setViewHandle(paramLayoutInflater);
      }
    }
    paramBundle.getParcelableArray("specials");
    label309:
    if (j) {
      ScheduleGridLayout.setTonightEpisodes(m);
    }
    Iterator localIterator = paramViewGroup.iterator();
    paramBundle = null;
    paramViewGroup = "20:00";
    while (localIterator.hasNext())
    {
      localObject = (Episode)localIterator.next();
      if (((Episode)localObject).getStartTime().indexOf(":") > 0)
      {
        String[] arrayOfString = ((Episode)localObject).getStartTime().split(":");
        i2 = Integer.parseInt(arrayOfString[0]);
        int i3 = Integer.parseInt(arrayOfString[1]);
        if ((i2 >= 20) && (i2 < 23) && ((paramBundle == null) || (((Episode)localObject).getAirDate_sec() - paramBundle.getAirDate_sec() >= 1500L)))
        {
          if (((Episode)localObject).getEndTime().indexOf(":") > 0)
          {
            arrayOfString = ((Episode)localObject).getEndTime().split(":");
            i1 = Integer.parseInt(arrayOfString[0]);
            int i4 = Integer.parseInt(arrayOfString[1]);
            if ((i1 >= 23) && (i4 > 10)) {
              ((Episode)localObject).setDuration(String.valueOf(a(((Episode)localObject).getStartTime(), "23:00:00") * 30));
            }
          }
          i1 = 0;
          if (paramViewGroup.indexOf(":") > 0) {
            i1 = Integer.parseInt(paramViewGroup.split(":")[0]);
          }
          if (((i2 != 20) || (i3 >= 25)) && (i1 < 23)) {
            break label788;
          }
          paramViewGroup = "20:00";
        }
      }
    }
    label691:
    label788:
    for (;;)
    {
      i1 = a(paramViewGroup, ((Episode)localObject).getStartTime());
      if (i1 > 0) {
        if (paramBundle == null) {
          break label691;
        }
      }
      for (paramViewGroup = new Episode("Please check your local listings for more information.", "0", "Please check your local listings for more information.", Util.a(paramBundle.getAirDateString()), Util.b(paramBundle.getAirDateString()), "", "", "", "", paramViewGroup, a(i1, paramViewGroup), String.valueOf(i1 * 30), "", "", null, null, 0L, "", null, null, null, null, null, null, null);; paramViewGroup = new Episode("Please check your local listings for more information.", "0", "Please check your local listings for more information.", Util.getCurrentDateString(), "Sunday", "", "", "", "", paramViewGroup, a(i1, paramViewGroup), String.valueOf(i1 * 30), "", "", null, null, 0L, "", null, null, null, null, null, null, null))
      {
        i.a(paramViewGroup);
        paramViewGroup = a(i1, ((Episode)localObject).getEndTime());
        i.a((Episode)localObject);
        paramBundle = (Bundle)localObject;
        break;
      }
      if ((g instanceof NavigationActivity)) {
        ((NavigationActivity)g).a(n);
      }
      return paramLayoutInflater;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if ((g instanceof NavigationActivity)) {
      ((NavigationActivity)g).b(n);
    }
    AccountUIHelper.b(l);
  }
  
  public void onDetach()
  {
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    d = Action.v;
    super.onResume();
    AccountUIHelper.i(getActivity());
    if ((getActivity() != null) && ((getActivity() instanceof NavigationActivity))) {
      ((NavigationActivity)getActivity()).a(-1L, Util.c("fragment_schedule"));
    }
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  public void onStop()
  {
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ScheduleFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */