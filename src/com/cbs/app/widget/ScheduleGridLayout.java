package com.cbs.app.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.GridLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cbs.app.adapter.CustomAdapterViewGroup;
import com.cbs.app.adapter.CustomAdapterViewGroup.TextGroup;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ButtonServiceHelper;
import com.cbs.app.view.ThumbNailView;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Asset;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.ShowAssetsResponse;
import com.cbs.app.view.model.rest.ShowEndpointResponse;
import com.cbs.app.view.model.rest.ShowEpisodeResponse;
import com.cbs.app.view.model.rest.ShowResponse;
import com.cbs.app.view.model.rest.ShowSeasonResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.visualon.player.CBSPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ScheduleGridLayout
  extends GridLayout
{
  private static final String t = ScheduleGridLayout.class.getSimpleName();
  private static ArrayList<Episode> u = null;
  private boolean A = false;
  private int B;
  private int C = 0;
  private int D = 0;
  private int E = 0;
  private View F;
  private boolean G = true;
  private GridLayout.LayoutParams H;
  private Show I;
  private Episode J;
  private ArrayList<VideoData> K = null;
  private List<Show> L = null;
  boolean a = false;
  boolean b = false;
  boolean c = false;
  boolean d = false;
  boolean e = false;
  String f = null;
  Button g;
  int h;
  String i = null;
  String j = null;
  String k = null;
  int l;
  String m = null;
  String n = null;
  VideoData o = new VideoData();
  boolean p = false;
  ArrayList<VideoData> q = null;
  ProgressDialog r = null;
  int s;
  private final int v = 6;
  private final int w = 22;
  private final int x = 25;
  private final int y = 22;
  private final Context z;
  
  public ScheduleGridLayout(Context paramContext)
  {
    super(paramContext);
    z = paramContext;
  }
  
  public ScheduleGridLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    z = paramContext;
    setColumnCount(6);
    setOrientation(0);
    paramContext = new GridLayout.LayoutParams();
    height = -2;
    width = -2;
    setUseDefaultMargins(false);
  }
  
  public static void a(Dialog paramDialog)
  {
    paramDialog.findViewById(2131689886).setVisibility(8);
    paramDialog.findViewById(2131689885).setVisibility(8);
  }
  
  private static boolean b(Episode paramEpisode)
  {
    if (paramEpisode != null)
    {
      new StringBuilder("Episode Title : ").append(paramEpisode.getEpisodeTitle());
      if ((u != null) && (u.size() != 0))
      {
        Iterator localIterator = u.iterator();
        while (localIterator.hasNext())
        {
          Episode localEpisode = (Episode)localIterator.next();
          if ((localEpisode.getEpisodeTitle().equals(paramEpisode.getEpisodeTitle())) && (localEpisode.getEpisodeNumber().equals(paramEpisode.getEpisodeNumber()))) {
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public static void setTonightEpisodes(ArrayList<Episode> paramArrayList)
  {
    u = paramArrayList;
  }
  
  public final void a(final Episode paramEpisode)
  {
    Object localObject2 = paramEpisode.getStartTime();
    Object localObject1 = paramEpisode.getEndTime();
    int i3;
    int i2;
    int i5;
    if ((((String)localObject2).indexOf(":") > 0) && (((String)localObject1).indexOf(":") > 0))
    {
      localObject2 = ((String)localObject2).split(":");
      i3 = Integer.parseInt(localObject2[0]);
      int i4 = Integer.parseInt(localObject2[1]);
      localObject1 = ((String)localObject1).split(":");
      i2 = Integer.parseInt(localObject1[0]);
      i1 = Integer.parseInt(localObject1[1]);
      i2 = (i2 - i3) * 2;
      i5 = i1 - i4;
      if (i5 >= 25)
      {
        i1 = i2 + 1;
        i2 = i1;
        if (i1 < 0) {
          i2 = 0;
        }
        i1 = i2;
        if (i2 > 1)
        {
          i1 = i2;
          if (i3 >= 22)
          {
            i1 = i2;
            if (i4 < 22) {}
          }
        }
      }
    }
    for (int i1 = 1;; i1 = 0)
    {
      i3 = i1 * 30;
      G = true;
      localObject1 = (LinearLayout)F.findViewById(2131689919);
      if ((E == 0) && (C <= 15))
      {
        localObject1 = (Button)((LinearLayout)localObject1).findViewWithTag("day" + (C + 1));
        if (C == 0) {
          ((Button)localObject1).setText("Today\n" + paramEpisode.getAirDateString().substring(0, 5));
        }
      }
      else
      {
        label258:
        localObject1 = new ImageView(z);
        ((ImageView)localObject1).setScaleType(ImageView.ScaleType.CENTER_CROP);
        if (paramEpisode.getEndTime().indexOf(":") <= 0) {
          break label1722;
        }
        localObject2 = paramEpisode.getEndTime().split(":");
        i2 = Integer.parseInt(localObject2[0]);
        i1 = Integer.parseInt(localObject2[1]);
      }
      for (;;)
      {
        setGridImageParams();
        localObject2 = H;
        height -= H.topMargin + H.bottomMargin;
        if ((i3 > 150) && (i3 <= 180))
        {
          H.columnSpec = GridLayout.spec(D, 6);
          H.width = (H.width * 3 * 2 - (H.rightMargin + H.leftMargin));
          D += 5;
          if (paramEpisode.getFilepathOverrideThreeHours() != null)
          {
            ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideThreeHours(), H.width), (ImageView)localObject1);
            label458:
            H.rowSpec = GridLayout.spec(C);
            ((ImageView)localObject1).setLayoutParams(H);
            if (paramEpisode != null)
            {
              localObject2 = paramEpisode.getTitle();
              if ((localObject2 != null) && (!((String)localObject2).equals("Please check your local listings for more information."))) {
                ((ImageView)localObject1).setOnClickListener(new View.OnClickListener()
                {
                  public final void onClick(View paramAnonymousView)
                  {
                    if ((!CBSPlayer.a()) && (!ScheduleGridLayout.f(ScheduleGridLayout.this)))
                    {
                      ScheduleGridLayout.a(ScheduleGridLayout.this, true);
                      ScheduleGridLayout.a(ScheduleGridLayout.this, paramEpisode);
                    }
                  }
                });
              }
            }
          }
        }
        try
        {
          addView((View)localObject1);
          if (!G)
          {
            localObject1 = new TextView(z);
            ((TextView)localObject1).setTextColor(getResources().getColor(17170443));
            ((TextView)localObject1).setLayoutParams(H);
            paramEpisode = paramEpisode.getTitle().substring(paramEpisode.getTitle().indexOf("-") + 1);
            ((TextView)localObject1).setTypeface(Typeface.DEFAULT_BOLD);
            ((TextView)localObject1).setText(paramEpisode);
            ((TextView)localObject1).setTextColor(z.getResources().getColor(2131558417));
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          try
          {
            addView((View)localObject1);
            D += 1;
            E += 1;
            if ((E == 6) || (D == 6))
            {
              D = 0;
              E = 0;
              C += 1;
            }
            return;
            i1 = i2;
            if (i5 >= 0) {
              break;
            }
            i1 = i2 - 1;
            break;
            ((Button)localObject1).setText(paramEpisode.getDayOfWeek().substring(0, 3) + "\n" + paramEpisode.getAirDateString().substring(0, 5));
            break label258;
            if (paramEpisode.getFilepath_hour() != null)
            {
              ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
              break label458;
            }
            G = false;
            ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder_2", "drawable", z.getPackageName()));
            break label458;
            if ((i3 > 120) && (i3 <= 150))
            {
              H.columnSpec = GridLayout.spec(D, 5);
              H.width = ((int)(H.width * 2.5D * 2.0D) - (H.rightMargin + H.leftMargin));
              D += 4;
              if (paramEpisode.getFilepathOverrideOneAndHalfHour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideOneAndHalfHour(), H.width), (ImageView)localObject1);
                break label458;
              }
              if (paramEpisode.getFilepath_hour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
                break label458;
              }
              G = false;
              ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder_2", "drawable", z.getPackageName()));
              break label458;
            }
            if ((i3 > 110) && (i3 <= 120))
            {
              H.columnSpec = GridLayout.spec(D, 4);
              H.width = (H.width * 2 * 2 - (H.rightMargin + H.leftMargin));
              D += 3;
              if (paramEpisode.getFilepathOverrideTwoHours() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideTwoHours(), H.width), (ImageView)localObject1);
                break label458;
              }
              if (paramEpisode.getFilepath_hour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
                break label458;
              }
              G = false;
              ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder_2", "drawable", z.getPackageName()));
              break label458;
            }
            if (i3 > 70)
            {
              H.columnSpec = GridLayout.spec(D, 3);
              H.width = ((int)(H.width * 1.5D) * 2 - (H.rightMargin + H.leftMargin));
              D += 2;
              if (paramEpisode.getFilepathOverrideOneAndHalfHour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideOneAndHalfHour(), H.width), (ImageView)localObject1);
                break label458;
              }
              if (paramEpisode.getFilepath_hour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
                break label458;
              }
              G = false;
              ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder", "drawable", z.getPackageName()));
              break label458;
            }
            if (i3 > 50)
            {
              H.columnSpec = GridLayout.spec(D, 2);
              H.width = (H.width * 2 - (H.rightMargin + H.leftMargin));
              D += 1;
              if (paramEpisode.getFilepathOverrideOneHour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideOneHour(), H.width), (ImageView)localObject1);
                break label458;
              }
              if (paramEpisode.getFilepath_hour() != null)
              {
                ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
                break label458;
              }
              G = false;
              ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder", "drawable", z.getPackageName()));
              break label458;
            }
            H.columnSpec = GridLayout.spec(D, 1);
            H.width -= H.rightMargin + H.leftMargin;
            if ((i2 >= 23) && (i1 > 10) && (paramEpisode.getFilepath_hour() != null))
            {
              ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_hour(), H.width), (ImageView)localObject1);
              break label458;
            }
            if (paramEpisode.getFilepathOverrideHalfHour() != null)
            {
              ImageHelper.a(ImageHelper.b(paramEpisode.getFilepathOverrideHalfHour(), H.width), (ImageView)localObject1);
              break label458;
            }
            if (paramEpisode.getFilepath_halfhour() != null)
            {
              ImageHelper.a(ImageHelper.b(paramEpisode.getFilepath_halfhour(), H.width), (ImageView)localObject1);
              break label458;
            }
            G = false;
            ((ImageView)localObject1).setImageResource(z.getResources().getIdentifier("schedule_placeholder", "drawable", z.getPackageName()));
            break label458;
            localIllegalArgumentException = localIllegalArgumentException;
            Log.e(t, "error: " + localIllegalArgumentException.getLocalizedMessage());
          }
          catch (IllegalArgumentException paramEpisode)
          {
            for (;;)
            {
              Log.e(t, "error: " + paramEpisode.getLocalizedMessage());
            }
          }
        }
        label1722:
        i1 = 0;
        i2 = 0;
      }
    }
  }
  
  public final void a(VideoData paramVideoData)
  {
    if ((VideoUtil.b(paramVideoData) != null) && (paramVideoData.getCbsShowId() != 0L))
    {
      Action localAction = Action.be;
      HashMap localHashMap = new HashMap();
      localHashMap.put("videoTitle", VideoUtil.b(paramVideoData));
      localHashMap.put("videoId", Long.valueOf(paramVideoData.getCbsShowId()));
      localHashMap.put("optionSelected", f);
      paramVideoData = "cbscom:" + paramVideoData.getCbsShowId() + "|" + VideoUtil.b(paramVideoData);
      localHashMap.put("evar_63", paramVideoData);
      localHashMap.put("prop_63", paramVideoData);
      localHashMap.put("events", "event19");
      AnalyticsManager.a(z, localAction, localHashMap);
    }
  }
  
  public final void a(final VideoData paramVideoData, final Dialog paramDialog)
  {
    CustomAdapterViewGroup localCustomAdapterViewGroup;
    if ((z != null) && ((e) || (d)))
    {
      new StringBuilder("Displaying data").append(e).append(d);
      localCustomAdapterViewGroup = (CustomAdapterViewGroup)paramDialog.findViewById(2131689886);
      c.b.setVisibility(8);
      int i1 = paramDialog.getWindow().getDecorView().getWidth();
      if (i1 > 0)
      {
        s = i1;
        localCustomAdapterViewGroup.setWidthAndHeight(s, (int)(s * 0.36F));
      }
      ImageHelper.a(ImageHelper.a(i, s), b);
      if (VideoUtil.c(paramVideoData)) {
        break label241;
      }
      b.setFlagVisibility(1);
      localCustomAdapterViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ScheduleGridLayout.a();
          new StringBuilder("video link : ").append(paramVideoData.getUrl());
          if (ScheduleGridLayout.b(ScheduleGridLayout.this) != null)
          {
            paramAnonymousView = ShowServiceManager.a(ScheduleGridLayout.b(ScheduleGridLayout.this).getId());
            if (paramAnonymousView != null)
            {
              ScheduleGridLayout.a();
              new StringBuilder("currentNavShow: ").append(showId);
              VideoUtil.a(ScheduleGridLayout.c(ScheduleGridLayout.this), paramVideoData, paramAnonymousView);
              a(paramVideoData);
              paramDialog.dismiss();
            }
          }
        }
      });
      if ((!e) && (d)) {
        ((TextView)paramDialog.findViewById(2131689885)).setText("Latest available clip");
      }
      if (k == null) {
        break label253;
      }
      c.a.setText(k);
    }
    for (;;)
    {
      c.c.setText(Util.b(paramVideoData));
      c.d.setText(Util.c(paramVideoData));
      return;
      label241:
      b.setFlagVisibility(0);
      break;
      label253:
      c.a.setText("Not Available");
    }
  }
  
  public void setClipVideos(ArrayList<VideoData> paramArrayList)
  {
    K = paramArrayList;
  }
  
  public void setGridImageParams()
  {
    if (z != null)
    {
      int i1 = Util.a(z, 5.0D);
      H = new GridLayout.LayoutParams();
      H.height = -2;
      H.width = -2;
      H.rightMargin = i1;
      H.topMargin = i1;
      H.leftMargin = i1;
      H.bottomMargin = i1;
      if (B != 720) {
        break label161;
      }
      H.width = Util.a(z, 183.0D);
      H.height = Util.a(z, 185.0D);
    }
    for (;;)
    {
      new StringBuilder("gridImageParams.width: ").append(H.width).append(" gridImageParams.height: ").append(H.height);
      return;
      label161:
      if (B == 600)
      {
        H.width = Util.a(z, 137.0D);
        H.height = Util.a(z, 137.0D);
      }
      else
      {
        H.width = Util.a(z, 100.0D);
        H.height = Util.a(z, 100.0D);
      }
    }
  }
  
  public void setSize(int paramInt)
  {
    B = paramInt;
    setGridImageParams();
  }
  
  public void setViewHandle(View paramView)
  {
    F = paramView;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */