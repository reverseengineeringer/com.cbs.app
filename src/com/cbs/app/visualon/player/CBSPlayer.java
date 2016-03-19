package com.cbs.app.visualon.player;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.adobe.a.b.e;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.analytics.AnalyticsManager.AgeGroupAndGender;
import com.cbs.app.analytics.impl.ComScoreService;
import com.cbs.app.listener.PhoneStateChangeListener;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.MyCBSDBService;
import com.cbs.app.service.MyCBSDBServiceImpl;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.fragments.show.videos.VideosFragment;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.utils.CapUtil;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.google.android.gms.ads.a.a;
import com.google.android.gms.ads.a.a.a;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.visualon.OSMPAdTracking.VOOSMPAdTrackingImpl;
import com.visualon.OSMPAdTracking.VOOSMPAdTrackingServer;
import com.visualon.OSMPAdTracking.VOOSMPAdTrackingServer.TrackingPropertyItem;
import com.visualon.OSMPAdTracking.VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_EVENT_TYPE;
import com.visualon.OSMPAdTracking.VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER;
import com.visualon.OSMPPlayer.VOCommonPlayer;
import com.visualon.OSMPPlayer.VOCommonPlayerListener;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_AD_STATUS;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_AVAILABLE_TRACK_TYPE;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;
import com.visualon.OSMPPlayer.VOOSMPAdInfo;
import com.visualon.OSMPPlayer.VOOSMPAdInformation;
import com.visualon.OSMPPlayer.VOOSMPAdOpenParam;
import com.visualon.OSMPPlayer.VOOSMPAdPeriod;
import com.visualon.OSMPPlayer.VOOSMPAdTracking;
import com.visualon.OSMPPlayer.VOOSMPInitParam;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_AD_ENGINE_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_AD_OPEN_FLAG;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_AD_RESUME_MODE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_ASPECT_RATIO;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_DECODER_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_LAYOUT_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_PLAYER_ENGINE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_RENDER_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_RETURN_CODE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_STATUS;
import com.visualon.OSMPPlayerImpl.VOCommonPlayerImpl;
import com.visualon.OSMPUtils.voLog;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeUnit;

public class CBSPlayer
{
  private static TextView A;
  private static ProgressBar B;
  private static Date C;
  private static Timer D;
  private static TimerTask E;
  private static VOCommonPlayer F;
  private static boolean G;
  private static long H;
  private static long I;
  private static ArrayList<String> J;
  private static boolean K;
  private static LinearLayout L;
  private static int M;
  private static VOOSMPType.VO_OSMP_ASPECT_RATIO N;
  private static boolean O;
  private static String P;
  private static VideoData Q;
  private static SyncbakChannel R;
  private static String S;
  private static String T;
  private static String U;
  private static String V;
  private static RelativeLayout W;
  private static VOOSMPAdTracking X;
  private static TextView Y;
  private static TextView Z;
  public static final String a = CBSPlayer.class.getSimpleName();
  private static boolean aA = false;
  private static final SeekBar.OnSeekBarChangeListener aB = new SeekBar.OnSeekBarChangeListener()
  {
    public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
    {
      CBSPlayer.b(false);
      if (CBSPlayer.E() != null) {
        CBSPlayer.b(CBSPlayer.E().getPosition());
      }
    }
    
    public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar)
    {
      CBSPlayer.D();
      CBSPlayer.b(true);
    }
    
    public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar)
    {
      CBSPlayer.D();
      CBSPlayer.b(false);
      if (CBSPlayer.E() != null)
      {
        CBSPlayer.F().setEnabled(false);
        CBSPlayer.a(paramAnonymousSeekBar.getProgress());
        if ((CBSPlayer.E() != null) && (CBSPlayer.G() != null) && (CBSPlayer.H() != null) && (CBSPlayer.I() != 1)) {
          new MyCBSDBServiceImpl().a(CBSPlayer.H(), CBSPlayer.G().getCid(), CBSPlayer.E().getPosition());
        }
        paramAnonymousSeekBar = CBSPlayer.a;
        new StringBuilder("new position: ").append(CBSPlayer.J());
        paramAnonymousSeekBar = CBSPlayer.a;
        new StringBuilder("max position: ").append(CBSPlayer.E().getMaxPosition());
        TimeCal.a("SetPos --->");
        CBSPlayer.E().setPosition(Math.min(CBSPlayer.J(), CBSPlayer.E().getMaxPosition() - TimeUnit.SECONDS.toMillis(2L)));
        TimeCal.a("SetPos <---");
        CBSPlayer.c(true);
      }
    }
  };
  private static Date aC;
  private static boolean aD = true;
  private static int aE = -1;
  private static final VOCommonPlayerListener aF = new VOCommonPlayerListener()
  {
    public final VOOSMPType.VO_OSMP_RETURN_CODE onVOEvent(VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID paramAnonymousVO_OSMP_CB_EVENT_ID, int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
    {
      Object localObject = AuthStatusManager.getTrackingAuthString();
      switch (CBSPlayer.7.d[paramAnonymousVO_OSMP_CB_EVENT_ID.ordinal()])
      {
      }
      label546:
      label636:
      label653:
      label746:
      label753:
      label764:
      label791:
      label808:
      do
      {
        for (;;)
        {
          return VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
          CBSPlayer.a(VOOSMPType.VO_OSMP_ASPECT_RATIO.valueOf(paramAnonymousInt1));
          continue;
          paramAnonymousVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT.valueOf(paramAnonymousInt1);
          switch (CBSPlayer.7.b[paramAnonymousVO_OSMP_CB_EVENT_ID.ordinal()])
          {
          case 1: 
          default: 
            break;
          case 2: 
            CBSPlayer.c(false);
            CBSPlayer.b(false);
            break;
          case 3: 
            paramAnonymousVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_AVAILABLE_TRACK_TYPE.valueOf(paramAnonymousInt2);
            paramAnonymousObject = CBSPlayer.7.a;
            paramAnonymousVO_OSMP_CB_EVENT_ID.ordinal();
            continue;
            CBSPlayer.E();
            CBSPlayer.b(paramAnonymousVO_OSMP_CB_EVENT_ID.getValue());
            continue;
            if (CBSPlayer.K() == VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_MEDIACODEC.getValue())
            {
              CBSPlayer.g(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_IOMX.getValue());
              CBSPlayer.E().destroy();
              CBSPlayer.l();
              CBSPlayer.m();
            }
            else
            {
              CBSPlayer.E();
              CBSPlayer.b(10000002);
              continue;
              CBSPlayer.M().sendEmptyMessage(CBSPlayer.L());
              if (CBSPlayer.G() != null)
              {
                PlayerEventTracker.b(CBSPlayer.H(), CBSPlayer.G(), (String)localObject);
                continue;
                TimeCal.a("Receive Engine Seek Complete <---");
                CBSPlayer.N().onProgressChanged(CBSPlayer.F(), (int)CBSPlayer.E().getPosition(), false);
                continue;
                TimeCal.a("Receive Source Seek Complete <---");
                continue;
                TimeCal.a("Receive VideoRenderStart <---");
                continue;
                CBSPlayer.i = paramAnonymousInt1;
                CBSPlayer.j = paramAnonymousInt2;
                continue;
                CBSPlayer.O().setVisibility(8);
                CBSPlayer.P();
                continue;
                CBSPlayer.Q();
                if (CBSPlayer.I() != 1)
                {
                  CBSPlayer.O().setVisibility(0);
                  continue;
                  CBSPlayer.O().setVisibility(8);
                  CBSPlayer.P();
                  continue;
                  CBSPlayer.O().setVisibility(0);
                  CBSPlayer.Q();
                  continue;
                  if (CBSPlayer.I() != 1)
                  {
                    if (paramAnonymousInt1 == VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE.getValue())
                    {
                      if (CBSPlayer.E() == null) {
                        break label808;
                      }
                      paramAnonymousVO_OSMP_CB_EVENT_ID = CBSPlayer.E().start();
                      CBSPlayer.d(true);
                      if (paramAnonymousVO_OSMP_CB_EVENT_ID == VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE)
                      {
                        paramAnonymousVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_SHORT_TIME;
                        if (CBSPlayer.R() > 0)
                        {
                          if (CBSPlayer.R() != 1) {
                            break label746;
                          }
                          paramAnonymousVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_SHORT_TIME;
                          new StringBuilder("RESUME resumeMode: ").append(CBSPlayer.R()).append(" resumeTime: ").append(CBSPlayer.S());
                          if ((CBSPlayer.S() <= 0L) || (CBSPlayer.S() >= CBSPlayer.E().getMaxPosition())) {
                            break label753;
                          }
                          new StringBuilder("RESUME resumeMode: ").append(CBSPlayer.R()).append(" resumeTime: ").append(CBSPlayer.S());
                          CBSPlayer.E().resume(paramAnonymousVO_OSMP_CB_EVENT_ID, CBSPlayer.S());
                        }
                        if (CBSPlayer.G() == null) {
                          break label764;
                        }
                        PlayerEventTracker.a(CBSPlayer.H(), CBSPlayer.G(), (String)localObject);
                        CBSPlayer.c((int)CBSPlayer.E().getPosition());
                        CBSPlayer.d((int)CBSPlayer.E().getDuration());
                        CBSPlayer.X();
                        CBSPlayer.Y();
                        CBSPlayer.Z().setImageResource(2130838027);
                        CBSPlayer.F().setAdsInfo(CBSPlayer.aa());
                        CBSPlayer.F().invalidate();
                        if (Preferences.b(CBSPlayer.H(), "ccSettingTurnedOn", 0) != 1) {
                          break label791;
                        }
                        CBSPlayer.e(true);
                        CBSPlayer.ab().setImageResource(2130837666);
                      }
                    }
                    for (;;)
                    {
                      CBSPlayer.ac();
                      break;
                      paramAnonymousVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_LONG_TIME;
                      break label546;
                      CBSPlayer.T();
                      CBSPlayer.U();
                      break label636;
                      if ((CBSPlayer.V() == null) || (CBSPlayer.W() == null)) {
                        break label653;
                      }
                      PlayerEventTracker.a(CBSPlayer.H(), CBSPlayer.V(), CBSPlayer.W());
                      break label653;
                      CBSPlayer.e(false);
                      CBSPlayer.ab().setImageResource(2130837665);
                      continue;
                      CBSPlayer.E();
                      CBSPlayer.b(paramAnonymousInt1);
                    }
                    new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                    CBSPlayer.a(-1L);
                    CBSPlayer.h(paramAnonymousInt1);
                    CBSPlayer.f(false);
                    CBSPlayer.F().invalidate();
                    CBSPlayer.c(false);
                    CBSPlayer.F().setEnabled(true);
                    CBSPlayer.M().sendEmptyMessage(CBSPlayer.ad());
                    VideoUtil.a(CBSPlayer.H(), VideoUtil.b(CBSPlayer.H()));
                    CBSPlayer.A();
                    if (CBSPlayer.G() != null)
                    {
                      CBSPlayer.H();
                      PlayerEventTracker.a(CBSPlayer.G());
                    }
                    else if ((CBSPlayer.V() != null) && (CBSPlayer.W() != null))
                    {
                      CBSPlayer.H();
                      paramAnonymousVO_OSMP_CB_EVENT_ID = CBSPlayer.V();
                      CBSPlayer.W();
                      PlayerEventTracker.a(paramAnonymousVO_OSMP_CB_EVENT_ID);
                      continue;
                      new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                      CBSPlayer.h(paramAnonymousInt1);
                      CBSPlayer.M().sendEmptyMessage(CBSPlayer.ae());
                      CBSPlayer.d(true);
                      CBSPlayer.F().invalidate();
                      continue;
                      new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                      CBSPlayer.c(false);
                      CBSPlayer.F().setEnabled(false);
                      CBSPlayer.h(paramAnonymousInt1);
                      CBSPlayer.f(true);
                      if ((CBSPlayer.af()) && (CBSPlayer.E() != null) && (CBSPlayer.G() != null) && (CBSPlayer.H() != null) && (CBSPlayer.E().getPosition() > CBSPlayer.J()))
                      {
                        long l = CBSPlayer.E().getPosition() - 6000L;
                        if (l > 0L)
                        {
                          new StringBuilder("2.2 set resume time to ").append(l).append(" for ").append(CBSPlayer.G().getCid());
                          new MyCBSDBServiceImpl().a(CBSPlayer.H(), CBSPlayer.G().getCid(), l);
                        }
                      }
                      PlayerEventTracker.a(CBSPlayer.H(), Integer.toString(paramAnonymousInt1));
                      new StringBuilder("isAtStartOfAdPod ").append(CBSPlayer.af());
                      if (CBSPlayer.af()) {
                        PlayerEventTracker.b(CBSPlayer.H(), Integer.toString(paramAnonymousInt1));
                      }
                      CBSPlayer.d(false);
                      CBSPlayer.M().sendEmptyMessage(CBSPlayer.ag());
                      continue;
                      CBSPlayer.h(paramAnonymousInt1);
                      CBSPlayer.F().a(CBSPlayer.ah());
                      if (CBSPlayer.ai() < CBSPlayer.aj().length)
                      {
                        CBSPlayer.aj()[CBSPlayer.ai()] = CBSPlayer.ah();
                        new StringBuilder("OnVOEvent VO_OSMP_AD_CB_AD_END mAdsNumber = ").append(CBSPlayer.ai()).append("  mPlayedAds[mAdsNumber]").append(CBSPlayer.aj()[CBSPlayer.ai()]);
                        CBSPlayer.ak();
                      }
                      CBSPlayer.M().sendEmptyMessage(CBSPlayer.al());
                      CBSPlayer.H();
                      PlayerEventTracker.a();
                      CBSPlayer.F().invalidate();
                      continue;
                      CBSPlayer.i(paramAnonymousInt1);
                      CBSPlayer.M().sendEmptyMessage(CBSPlayer.am());
                      continue;
                      paramAnonymousVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_AD_STATUS.valueOf(paramAnonymousInt1);
                      paramAnonymousObject = CBSPlayer.7.c;
                      paramAnonymousVO_OSMP_CB_EVENT_ID.ordinal();
                      continue;
                      CBSPlayer.E();
                      CBSPlayer.b(paramAnonymousVO_OSMP_CB_EVENT_ID.getValue());
                      continue;
                      CBSPlayer.E();
                      CBSPlayer.b(paramAnonymousVO_OSMP_CB_EVENT_ID.getValue());
                      continue;
                      CBSPlayer.E();
                      CBSPlayer.b(paramAnonymousVO_OSMP_CB_EVENT_ID.getValue());
                      continue;
                      CBSPlayer.E();
                      CBSPlayer.b(paramAnonymousVO_OSMP_CB_EVENT_ID.getValue());
                    }
                  }
                }
              }
            }
            break;
          }
        }
        CBSPlayer.a((VOOSMPAdInfo)paramAnonymousObject);
        new StringBuilder("duratoinzz: ").append(CBSPlayer.E().getDuration());
        new StringBuilder("max timezz: ").append(CBSPlayer.E().getMaxPosition());
        paramAnonymousVO_OSMP_CB_EVENT_ID = CBSPlayer.aa().getPeriodList();
      } while ((paramAnonymousVO_OSMP_CB_EVENT_ID == null) || (paramAnonymousVO_OSMP_CB_EVENT_ID.size() <= 0));
      paramAnonymousObject = paramAnonymousVO_OSMP_CB_EVENT_ID.iterator();
      label1494:
      StringBuilder localStringBuilder;
      if (((Iterator)paramAnonymousObject).hasNext())
      {
        localObject = (VOOSMPAdPeriod)((Iterator)paramAnonymousObject).next();
        localStringBuilder = new StringBuilder("adPeriodzz: ").append(((VOOSMPAdPeriod)localObject).getStartTime()).append(" type: ");
        if (((VOOSMPAdPeriod)localObject).getPeriodType() != 1) {
          break label1609;
        }
      }
      label1609:
      for (paramAnonymousVO_OSMP_CB_EVENT_ID = "ads";; paramAnonymousVO_OSMP_CB_EVENT_ID = "content")
      {
        localStringBuilder.append(paramAnonymousVO_OSMP_CB_EVENT_ID).append(" end time: ").append(((VOOSMPAdPeriod)localObject).getEndTime()).append(" duration: ").append(((VOOSMPAdPeriod)localObject).getEndTime() - ((VOOSMPAdPeriod)localObject).getStartTime());
        break label1494;
        break;
      }
    }
    
    public final VOOSMPType.VO_OSMP_RETURN_CODE onVOSyncEvent(VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID paramAnonymousVO_OSMP_CB_SYNC_EVENT_ID, int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
    {
      return VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    }
  };
  private static final Handler aG = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      if (what == CBSPlayer.an())
      {
        CBSPlayer.l();
        CBSPlayer.m();
      }
      do
      {
        do
        {
          do
          {
            return;
          } while (CBSPlayer.E() == null);
          if (what == CBSPlayer.ao())
          {
            CBSPlayer.p();
            return;
          }
          if (what == CBSPlayer.ap())
          {
            CBSPlayer.r();
            return;
          }
          if (what == CBSPlayer.aq())
          {
            CBSPlayer.P();
            return;
          }
          if (what == CBSPlayer.L())
          {
            CBSPlayer.t();
            CBSPlayer.b(CBSPlayer.H());
            return;
          }
          if (what != CBSPlayer.ag()) {
            break;
          }
        } while (CBSPlayer.aa() == null);
        CBSPlayer.a(new Date(System.currentTimeMillis()));
        return;
        if (what == CBSPlayer.ad())
        {
          CBSPlayer.ar().setVisibility(8);
          CBSPlayer.as().setVisibility(8);
          return;
        }
      } while (what != CBSPlayer.am());
      CBSPlayer.P();
    }
  };
  private static LinearLayout aa;
  private static TextView ab;
  private static int ac;
  private static boolean ad;
  private static boolean ae;
  private static VOOSMPAdInfo af;
  private static int ag;
  private static boolean ah;
  private static boolean ai;
  private static boolean aj;
  private static boolean ak;
  private static int[] al;
  private static int am;
  private static LinearLayout an;
  private static LinearLayout ao;
  private static Context ap;
  private static View aq;
  private static VOOSMPType.VO_OSMP_LAYOUT_TYPE ar;
  private static int as;
  private static int at;
  private static long au;
  private static boolean av;
  private static long aw;
  private static long ax;
  private static String ay;
  private static int az;
  public static RelativeLayout b;
  public static int c;
  public static String d;
  public static String e;
  public static long f;
  static SurfaceView g;
  static SurfaceHolder h;
  static int i;
  static int j;
  private static final Set<FullScreenButtonListener> k = new CopyOnWriteArraySet();
  private static int l;
  private static int m;
  private static int n;
  private static int o;
  private static int p;
  private static int q;
  private static int r;
  private static int s;
  private static int t;
  private static int u;
  private static ImageView v;
  private static ImageButton w;
  private static ImageButton x;
  private static CBSSeekBarV3 y;
  private static TextView z;
  
  static
  {
    b = null;
    c = 0;
    d = null;
    e = null;
    f = -1L;
    g = null;
    h = null;
    i = 0;
    j = 0;
    l = 1;
    m = 2;
    n = 3;
    o = 5;
    p = 6;
    q = 7;
    r = 8;
    s = 9;
    t = 10;
    u = 11;
    v = null;
    w = null;
    x = null;
    y = null;
    z = null;
    A = null;
    B = null;
    C = null;
    D = null;
    E = null;
    F = null;
    G = false;
    H = 0L;
    I = 0L;
    J = null;
    K = true;
    L = null;
    M = -1;
    N = VOOSMPType.VO_OSMP_ASPECT_RATIO.VO_OSMP_RATIO_AUTO;
    O = false;
    P = null;
    Q = null;
    R = null;
    S = null;
    T = "cbs_android_app";
    U = "cbsicbsapp,cbsicbsiall";
    V = "om.cbsi.com";
    W = null;
    X = null;
    Y = null;
    Z = null;
    aa = null;
    ab = null;
    ac = 0;
    ad = false;
    ae = false;
    af = null;
    ag = 0;
    ah = false;
    ai = false;
    aj = false;
    ak = false;
    al = new int[50];
    am = 0;
    an = null;
    ao = null;
    ar = null;
    as = 0;
    at = 0;
    au = 0L;
    av = false;
    aw = -1L;
    ax = -1L;
    ay = null;
  }
  
  public static void A()
  {
    SharedPreferences localSharedPreferences;
    int i2;
    Object localObject;
    boolean bool;
    if ((ap != null) && (F != null))
    {
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ap);
      i2 = localSharedPreferences.getInt("ccSettingTurnedOn", 0);
      localObject = F;
      if (i2 != 1) {
        break label204;
      }
      bool = true;
      ((VOCommonPlayer)localObject).enableSubtitle(bool);
      localObject = w;
      if (i2 != 1) {
        break label209;
      }
    }
    label204:
    label209:
    for (int i1 = 2130837666;; i1 = 2130837665)
    {
      ((ImageButton)localObject).setImageResource(i1);
      if (i2 == 1)
      {
        setFontColor(localSharedPreferences.getString("ccFontColor", ap.getResources().getString(2131230885)));
        setFontFace(localSharedPreferences.getString("ccFontFace", ap.getResources().getString(2131230884)));
        setFontSize(localSharedPreferences.getInt("ccFontSize", 100));
        setFontOpacity(localSharedPreferences.getInt("ccFontOpacity", 100));
        setFontEdgeType(localSharedPreferences.getInt("ccFontEdgeType", 0));
        setCCBackgroundColor(localSharedPreferences.getString("ccBackgroundColor", ap.getResources().getString(2131230883)));
        setCCBackgroundOpacity(localSharedPreferences.getInt("ccBackgroundOpacity", 75));
      }
      return;
      bool = false;
      break;
    }
  }
  
  public static void B()
  {
    CCSettingPreferences.a(ap.getResources().getString(2131230885), ap);
    setFontColor(ap.getResources().getString(2131230885));
    CCSettingPreferences.b(ap.getResources().getString(2131230884), ap);
    setFontFace(ap.getResources().getString(2131230884));
    CCSettingPreferences.a(100, ap);
    setFontSize(100);
    CCSettingPreferences.b(100, ap);
    setFontOpacity(100);
    CCSettingPreferences.c(0, ap);
    setFontEdgeType(0);
    CCSettingPreferences.c(ap.getResources().getString(2131230883), ap);
    setCCBackgroundColor(ap.getResources().getString(2131230883));
    CCSettingPreferences.d(100, ap);
    setCCBackgroundOpacity(100);
  }
  
  public static void C()
  {
    Object localObject = (Activity)ap;
    boolean bool;
    if (PreferencesCCSettings.a("cc_enable_font_italic", (Activity)localObject))
    {
      bool = PreferencesCCSettings.a("cc_font_italic", (Activity)localObject);
      F.setSubtitleFontItalic(bool);
    }
    if (PreferencesCCSettings.a("cc_enable_font_bold", (Activity)localObject))
    {
      bool = PreferencesCCSettings.a("cc_font_bold", (Activity)localObject);
      F.setSubtitleFontBold(bool);
    }
    if (PreferencesCCSettings.a("cc_enable_font_underline", (Activity)localObject))
    {
      bool = PreferencesCCSettings.a("cc_font_underline", (Activity)localObject);
      F.setSubtitleFontUnderline(bool);
    }
    String str1;
    int i1;
    if (PreferencesCCSettings.a("cc_font_size", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_font_size_val", "100", (Activity)localObject);
      if (str1.length() > 0)
      {
        i1 = a(str1, 100);
        F.setSubtitleFontSizeScale(i1);
      }
    }
    String str2;
    if (PreferencesCCSettings.a("cc_font_color", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_font_color_opacity_val", "100", (Activity)localObject);
      str2 = PreferencesCCSettings.a("cc_font_color_val", "white", (Activity)localObject);
      if ((str1.length() > 0) && (str2.length() > 0))
      {
        if (!str2.equals("white"))
        {
          i1 = a(str2, 16777215);
          i1 = Color.argb(255, i1 / 256 / 256, (i1 & 0xFF00) / 256, i1 & 0xFF);
          F.setSubtitleFontColor(i1);
        }
        F.setSubtitleFontOpacity(a(str1, 100));
      }
    }
    if (PreferencesCCSettings.a("cc_background_color", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_background_color_opacity_val", "100", (Activity)localObject);
      str2 = PreferencesCCSettings.a("cc_background_color_val", "black", (Activity)localObject);
      if ((str1.length() > 0) && (str2.length() > 0))
      {
        if (!str2.equals("black"))
        {
          i1 = a(str2, 0);
          i1 = Color.argb(255, i1 / 256 / 256, (i1 & 0xFF00) / 256, i1 & 0xFF);
          F.setSubtitleFontBackgroundColor(i1);
        }
        F.setSubtitleFontBackgroundOpacity(a(str1, 100));
      }
    }
    if (PreferencesCCSettings.a("cc_edge_color", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_edge_color_opacity_val", "100", (Activity)localObject);
      str2 = PreferencesCCSettings.a("cc_edge_color_val", "green", (Activity)localObject);
      String str3 = PreferencesCCSettings.a("cc_edge_type_val", "1", (Activity)localObject);
      if ((str1.length() > 0) && (str2.length() > 0))
      {
        if (!str2.equals("green"))
        {
          i1 = a(str2, 0);
          i1 = Color.argb(255, i1 / 256 / 256, (i1 & 0xFF00) / 256, i1 & 0xFF);
          F.setSubtitleFontEdgeColor(i1);
        }
        F.setSubtitleFontEdgeOpacity(a(str1, 100));
      }
      if (str3.length() > 0)
      {
        i1 = Integer.parseInt(str3);
        F.setSubtitleFontEdgeType(i1);
      }
    }
    if (PreferencesCCSettings.a("cc_font_name", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_font_name_val", "Arial", (Activity)localObject);
      F.setSubtitleFontName(str1);
    }
    if (PreferencesCCSettings.a("cc_win_color", (Activity)localObject))
    {
      str1 = PreferencesCCSettings.a("cc_win_color_opacity_val", "0", (Activity)localObject);
      localObject = PreferencesCCSettings.a("cc_win_color_val", "black", (Activity)localObject);
      if ((str1.length() > 0) && (((String)localObject).length() > 0))
      {
        if (!((String)localObject).equals("black"))
        {
          i1 = a((String)localObject, 0);
          i1 = Color.argb(0, i1 / 256 / 256, (i1 & 0xFF00) / 256, i1 & 0xFF);
          F.setSubtitleWindowBackgroundColor(i1);
        }
        F.setSubtitleWindowBackgroundOpacity(a(str1, 100));
      }
    }
  }
  
  private static int a(String paramString, int paramInt)
  {
    try
    {
      String str = paramString.replaceAll("\\D", "");
      paramString = str;
      if (str.length() > 11) {
        paramString = str.substring(0, 10);
      }
      int i1 = Long.valueOf(paramString).intValue();
      return i1;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  private static String a(String paramString, Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder("UMPTPARAMcust_params=sb%3D" + paramString);
    if ((paramContext != null) && (!"0".equals(paramString)))
    {
      paramString = AnalyticsManager.c(paramContext);
      if (paramString != null)
      {
        paramContext = paramString.getGender();
        if (paramContext != null)
        {
          localStringBuilder.append("%26");
          localStringBuilder.append("ge");
          localStringBuilder.append("%3D");
          localStringBuilder.append(paramContext);
        }
        paramString = paramString.getAgeGroup();
        if (paramString != null)
        {
          localStringBuilder.append("%26");
          localStringBuilder.append("gr");
          localStringBuilder.append("%3D");
          localStringBuilder.append(paramString);
        }
      }
    }
    if ((ay != null) && (!ay.equals("")))
    {
      localStringBuilder.append("%26");
      localStringBuilder.append("c12");
      localStringBuilder.append("%3D");
      localStringBuilder.append(ay);
    }
    return localStringBuilder.toString();
  }
  
  public static void a(int paramInt)
  {
    if (y != null)
    {
      y.setHideAds(true);
      y.invalidate();
    }
    j();
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      a(((FullScreenButtonListener)localIterator.next()).a(paramInt));
    }
  }
  
  static void a(Context paramContext)
  {
    try
    {
      if (an == null)
      {
        Object localObject = new LinearLayout(paramContext);
        an = (LinearLayout)localObject;
        ((LinearLayout)localObject).setBackgroundColor(Color.parseColor("#FFFFFF"));
        an.setOrientation(1);
        localObject = new LinearLayout.LayoutParams(-1, Util.a(paramContext, 60.0D));
        TextView localTextView = new TextView(paramContext);
        localTextView.setText("Options");
        int i1 = Util.a(paramContext, 10.0D);
        localTextView.setPadding(i1, i1, i1, i1);
        localTextView.setTextColor(paramContext.getResources().getColor(2131558441));
        localTextView.setTextSize(2, 18.0F);
        localTextView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CBSPlayer.g();
            VideoUtil.a((Activity)CBSPlayer.H());
          }
        });
        an.addView(localTextView, (ViewGroup.LayoutParams)localObject);
        localObject = new RelativeLayout.LayoutParams(-2, Util.a(paramContext, 60.0D));
        ((RelativeLayout.LayoutParams)localObject).addRule(11);
        ((RelativeLayout.LayoutParams)localObject).addRule(2, 2131689726);
        ((RelativeLayout.LayoutParams)localObject).setMargins(0, 0, Util.a(paramContext, 130.0D), 0);
        ((RelativeLayout)aq).addView(an, (ViewGroup.LayoutParams)localObject);
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private static void a(Context paramContext, View paramView)
  {
    as = 0;
    Object localObject = new PhoneStateChangeListener();
    ((TelephonyManager)ap.getSystemService("phone")).listen((PhoneStateListener)localObject, 32);
    if (Util.e(paramContext))
    {
      ar = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_PHONE;
      localObject = (LinearLayout)paramView.findViewById(2131689726);
      L = (LinearLayout)localObject;
      ((LinearLayout)localObject).setVisibility(0);
      b = (RelativeLayout)paramView.findViewById(2131689719);
      ((Activity)paramContext).getWindow().setFormat(0);
      localObject = (SurfaceView)paramView.findViewById(2131689720);
      g = (SurfaceView)localObject;
      ((SurfaceView)localObject).setBackgroundColor(0);
      localObject = g.getHolder();
      h = (SurfaceHolder)localObject;
      ((SurfaceHolder)localObject).setFormat(1);
      v = (ImageView)paramView.findViewById(2131689728);
      localObject = (CBSSeekBarV3)paramView.findViewById(2131689732);
      y = (CBSSeekBarV3)localObject;
      ((CBSSeekBarV3)localObject).setOnSeekBarChangeListener(aB);
      y.setEnabled(false);
      y.setThumb(ap.getResources().getDrawable(2130837727));
      z = (TextView)paramView.findViewById(2131689729);
      A = (TextView)paramView.findViewById(2131689731);
      localObject = (TextView)paramView.findViewById(2131689723);
      Y = (TextView)localObject;
      ((TextView)localObject).setVisibility(0);
      localObject = (TextView)paramView.findViewById(2131689722);
      Z = (TextView)localObject;
      ((TextView)localObject).setVisibility(0);
      localObject = (RelativeLayout)paramView.findViewById(2131689721);
      W = (RelativeLayout)localObject;
      ((RelativeLayout)localObject).setVisibility(0);
      aa = (LinearLayout)paramView.findViewById(2131689724);
      ab = (TextView)paramView.findViewById(2131689730);
      B = (ProgressBar)paramView.findViewById(2131689736);
      if (Q == null) {
        break label499;
      }
      new StringBuilder("Video source is ").append(Q.getPid());
      label336:
      v.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CBSPlayer.b(new Date(System.currentTimeMillis()));
          CBSPlayer.at();
        }
      });
      localObject = (ImageButton)paramView.findViewById(2131689733);
      w = (ImageButton)localObject;
      ((ImageButton)localObject).setVisibility(8);
      if (!aj)
      {
        if (Preferences.b(ap, "ccSettingTurnedOn", 0) != 1) {
          break label557;
        }
        ad = true;
        w.setImageResource(2130837666);
        label403:
        w.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CBSPlayer.b(new Date(System.currentTimeMillis()));
            if (CBSPlayer.E() == null) {
              return;
            }
            if (CBSPlayer.au())
            {
              if (CBSPlayer.av() == null)
              {
                CBSPlayer.a(a);
                return;
              }
              CBSPlayer.g();
              return;
            }
            if (CBSPlayer.av() == null)
            {
              CBSPlayer.a(a);
              return;
            }
            CBSPlayer.g();
          }
        });
      }
      x = (ImageButton)paramView.findViewById(2131689734);
      if (!aj) {
        break label573;
      }
      x.setVisibility(8);
    }
    for (;;)
    {
      if (aj) {
        aE();
      }
      b.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (paramAnonymousMotionEvent.getAction() == 0)
          {
            if (CBSPlayer.ay().getVisibility() == 0) {
              break label21;
            }
            CBSPlayer.o();
          }
          for (;;)
          {
            return true;
            label21:
            CBSPlayer.q();
          }
        }
      });
      paramView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener()
      {
        public final void onSystemUiVisibilityChange(int paramAnonymousInt)
        {
          if ((paramAnonymousInt == 0) && (CBSPlayer.ay().getVisibility() != 0))
          {
            if (!CBSPlayer.x()) {
              CBSPlayer.j();
            }
            CBSPlayer.o();
          }
        }
      });
      if (Util.e(ap)) {
        aD();
      }
      return;
      ar = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_TABLET;
      break;
      label499:
      if ((R != null) && (S != null))
      {
        new StringBuilder("Video source is ").append(S);
        break label336;
      }
      if (P == null) {
        break label336;
      }
      new StringBuilder("Video source is ").append(P);
      break label336;
      label557:
      ad = false;
      w.setImageResource(2130837665);
      break label403;
      label573:
      x.setVisibility(0);
      x.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CBSPlayer.b(new Date(System.currentTimeMillis()));
          if (CBSPlayer.E() == null) {
            return;
          }
          new StringBuilder("onClick m_ibVideoExpand isFullScreen = ").append(CBSPlayer.aw());
          if (CBSPlayer.ax())
          {
            CBSPlayer.t();
            return;
          }
          if (CBSPlayer.aw())
          {
            CBSPlayer.a(false);
            CBSPlayer.g(false);
            return;
          }
          if ((a instanceof NavigationActivity)) {
            ((NavigationActivity)a).i();
          }
          CBSPlayer.a(true);
          CBSPlayer.g(true);
        }
      });
    }
  }
  
  public static void a(Context paramContext, View paramView, VideoData paramVideoData)
  {
    ap = paramContext;
    aq = paramView;
    Q = paramVideoData;
    P = null;
    R = null;
    S = null;
    if (Q.getPid().equals("k1vaU00UTgwM")) {
      aj = true;
    }
    if ((paramVideoData != null) && (paramVideoData.getFullEpisode())) {
      new MyCBSDBServiceImpl().a(ap, paramVideoData.getCbsShowId(), paramVideoData.getCid(), new Date());
    }
    T = Util.P(ap);
    a(paramContext, paramView);
  }
  
  public static void a(Context paramContext, View paramView, SyncbakChannel paramSyncbakChannel, String paramString)
  {
    ap = paramContext;
    aq = paramView;
    Q = null;
    P = null;
    R = paramSyncbakChannel;
    S = paramString;
    aj = false;
    T = Util.P(ap);
    a(paramContext, paramView);
  }
  
  private static void a(SyncbakChannel paramSyncbakChannel, VOOSMPAdTrackingServer paramVOOSMPAdTrackingServer, VOOSMPType.VO_OSMP_LAYOUT_TYPE paramVO_OSMP_LAYOUT_TYPE)
  {
    String str1 = AuthStatusManager.getUserId();
    Object localObject1 = AuthStatusManager.getTrackingAuthString();
    String str2 = paramSyncbakChannel.getName() + "-LiveTV";
    HashMap localHashMap = new HashMap();
    localHashMap.put("eVar5", "cbsicbsapp");
    localHashMap.put("eProp5", "cbsicbsapp");
    localHashMap.put("eVar38", "live video - paywall:1");
    localHashMap.put("eProp38", "live video - paywall:1");
    localHashMap.put("eVar25", paramSyncbakChannel.getName() + "-liveTV");
    localHashMap.put("eProp25", paramSyncbakChannel.getName() + "-liveTV");
    Object localObject2 = new HashMap();
    localObject2 = AnalyticsManager.a(ap, (HashMap)localObject2).entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      localHashMap.put(localEntry.getKey(), localEntry.getValue());
    }
    paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_OMNITURE, U, V, T, "can", "us", "native app", U, "D=User-Agent", localHashMap, ar);
    localHashMap = new HashMap();
    localHashMap.put("componentid", e);
    new StringBuilder("cbs componentid: ").append(e);
    if (localObject1 != null) {
      localHashMap.put("v25", localObject1);
    }
    if (str1 != null) {
      localHashMap.put("ursuid", str1);
    }
    localHashMap.put("gestval", "paywall:1");
    localHashMap.put("medastid", "600");
    localHashMap.put("medid", Integer.valueOf(paramSyncbakChannel.getStationId()));
    localHashMap.put("medtitle", str2);
    paramSyncbakChannel = "tablet";
    if (Util.e(ap)) {
      paramSyncbakChannel = "phone";
    }
    localObject1 = "android";
    if (Util.a()) {
      localObject1 = "amazon";
    }
    localHashMap.put("device", "type:" + paramSyncbakChannel + ";os:" + (String)localObject1);
    paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE, U, V, T, "can", "", "", "", "", localHashMap, ar);
    paramSyncbakChannel = MVPDController.getInstance().getCurrentMvpdId();
    if (paramSyncbakChannel != null)
    {
      localObject1 = new VOOSMPAdTrackingServer.TrackingPropertyItem();
      localHashMap = new HashMap();
      mEvTypes = EnumSet.of(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_EVENT_TYPE.INIT, VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_EVENT_TYPE.START);
      localHashMap.put("mso", paramSyncbakChannel);
      mProperties = localHashMap;
      paramVOOSMPAdTrackingServer.addTrackingProperty(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE, (VOOSMPAdTrackingServer.TrackingPropertyItem)localObject1);
    }
    paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_NIELSEN, null, "", T, "can", "", "", "", "", null, ar);
    paramSyncbakChannel = Util.u(ap);
    localObject1 = new HashMap();
    ((HashMap)localObject1).put("player", F);
    ((HashMap)localObject1).put("customerKey", "87a6b28bc7823e67a5bb2a0a6728c702afcae78d");
    ((HashMap)localObject1).put("defaultReportingCdnName", "AKAMAI");
    ((HashMap)localObject1).put("playerName", aH());
    if (paramSyncbakChannel != null) {
      ((HashMap)localObject1).put("viewerId", paramSyncbakChannel);
    }
    ((HashMap)localObject1).put("adServerName", "vidtech.cbsinteractive.com");
    ((HashMap)localObject1).put("Partner_ID", T);
    ((HashMap)localObject1).put("Player_Version", "1.0");
    if (Preferences.a(ap, "use_debug_conviva", false)) {
      ((HashMap)localObject1).put("logging", "yes");
    }
    paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_CONVIVA, (HashMap)localObject1);
    paramSyncbakChannel = new HashMap();
    paramSyncbakChannel.put("appId", "P1576C728-1641-4B4C-AE19-343CF249BCA8");
    paramSyncbakChannel.put("sfcode", "us");
    paramSyncbakChannel.put("appName", "CBS");
    paramSyncbakChannel.put("appVersion", "2.9.0");
    paramSyncbakChannel.put("isDebugMode", "false");
    paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_NIELSEN_MTVR, null, "", T, "can", "", "", "", "", paramSyncbakChannel, paramVO_OSMP_LAYOUT_TYPE);
    if (str1 != null)
    {
      paramSyncbakChannel = new HashMap();
      paramSyncbakChannel.put("userid", str1);
      paramSyncbakChannel.put("premium", "true");
      paramSyncbakChannel.put("sessionid", UUID.randomUUID().toString());
      paramSyncbakChannel.put("event", "beacon");
      paramSyncbakChannel.put("siteid", "244");
      paramSyncbakChannel.put("medtitle", str2);
    }
    try
    {
      paramSyncbakChannel.put("platform", URLEncoder.encode(getConcurrentPlatform(), "UTF-8"));
      paramSyncbakChannel.put("affiliate", "true");
      paramSyncbakChannel.put("episode", "true");
      paramVOOSMPAdTrackingServer.addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT, U, "Production", T, "can", "", "", "", "10000", paramSyncbakChannel, paramVO_OSMP_LAYOUT_TYPE);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
  }
  
  public static void a(SyncbakChannel paramSyncbakChannel, String paramString)
  {
    Q = null;
    P = null;
    R = paramSyncbakChannel;
    S = paramString;
  }
  
  public static void a(FullScreenButtonListener paramFullScreenButtonListener)
  {
    if (paramFullScreenButtonListener != null) {
      k.add(paramFullScreenButtonListener);
    }
  }
  
  public static void a(PlayerRect paramPlayerRect)
  {
    if ((paramPlayerRect == null) || (F == null)) {
      return;
    }
    F.setViewSize(a, b);
    new StringBuilder("view size: ").append(a).append(" ").append(b);
    F.setVideoAspectRatio(N);
  }
  
  private static void a(VOOSMPType.VO_OSMP_RETURN_CODE paramVO_OSMP_RETURN_CODE)
  {
    TimeCal.a("Open <---");
    if (paramVO_OSMP_RETURN_CODE != VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE) {
      b(paramVO_OSMP_RETURN_CODE.getValue());
    }
    do
    {
      return;
      if (!b())
      {
        z.setText("00:00");
        A.setText("00:00");
      }
      y.setProgress(0);
    } while (B == null);
    B.setVisibility(0);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if ((F != null) && (b()))
    {
      if (paramString1 != null)
      {
        Z.setVisibility(0);
        Z.setText(paramString1);
      }
      if (paramString2 != null)
      {
        Y.setVisibility(0);
        Y.setText(paramString2);
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    ak = true;
    Activity localActivity;
    if (paramBoolean)
    {
      ae = true;
      if (Util.h(ap))
      {
        localActivity = (Activity)ap;
        localActivity.getWindow().getDecorView().setBackgroundColor(localActivity.getResources().getColor(2131558417));
      }
      aA();
      o();
    }
    for (;;)
    {
      k();
      ak = false;
      return;
      ae = false;
      if (Util.h(ap))
      {
        localActivity = (Activity)ap;
        localActivity.getWindow().getDecorView().setBackgroundColor(localActivity.getResources().getColor(2131558569));
      }
      aB();
    }
  }
  
  public static boolean a()
  {
    return F != null;
  }
  
  private static boolean a(VOOSMPAdOpenParam paramVOOSMPAdOpenParam, int paramInt)
  {
    Object localObject;
    if (paramInt == -1) {
      if (Build.VERSION.SDK_INT >= 16)
      {
        aE = VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_MEDIACODEC.getValue();
        VOOSMPType.VO_OSMP_RETURN_CODE localVO_OSMP_RETURN_CODE = paramVOOSMPAdOpenParam.setDecoderType(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_MEDIACODEC.getValue() | VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_MEDIACODEC.getValue());
        localObject = localVO_OSMP_RETURN_CODE;
        if (VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE != localVO_OSMP_RETURN_CODE)
        {
          Log.e(a, "VOOSMPAdOpenParam --- MediaCodec fail 1.");
          aE = VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_IOMX.getValue();
          paramVOOSMPAdOpenParam = paramVOOSMPAdOpenParam.setDecoderType(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_IOMX.getValue() | VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_IOMX.getValue());
          localObject = paramVOOSMPAdOpenParam;
          if (VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE != paramVOOSMPAdOpenParam)
          {
            Log.e(a, "VOOSMPAdOpenParam --- MediaCodec fail 2.");
            localObject = paramVOOSMPAdOpenParam;
          }
        }
      }
    }
    while (((VOOSMPType.VO_OSMP_RETURN_CODE)localObject).getValue() == VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE.getValue())
    {
      return true;
      aE = VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_IOMX.getValue();
      paramVOOSMPAdOpenParam = paramVOOSMPAdOpenParam.setDecoderType(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_IOMX.getValue() | VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_IOMX.getValue());
      localObject = paramVOOSMPAdOpenParam;
      if (VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE != paramVOOSMPAdOpenParam)
      {
        Log.e(a, "VOOSMPAdOpenParam --- MediaCodec fail 3.");
        localObject = paramVOOSMPAdOpenParam;
        continue;
        if (paramInt == VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_MEDIACODEC.getValue()) {
          localObject = paramVOOSMPAdOpenParam.setDecoderType(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_MEDIACODEC.getValue() | VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_MEDIACODEC.getValue());
        } else {
          localObject = paramVOOSMPAdOpenParam.setDecoderType(VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_VIDEO_IOMX.getValue() | VOOSMPType.VO_OSMP_DECODER_TYPE.VO_OSMP_DEC_AUDIO_IOMX.getValue());
        }
      }
    }
    return false;
  }
  
  private static void aA()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((FullScreenButtonListener)localIterator.next()).a();
    }
  }
  
  private static void aB()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((FullScreenButtonListener)localIterator.next()).b();
    }
  }
  
  private static void aC()
  {
    if (E != null) {
      E.cancel();
    }
    if (D != null)
    {
      D.cancel();
      D.purge();
      D = null;
    }
    E = null;
  }
  
  private static void aD()
  {
    ((Activity)ap).getWindow().getDecorView().setSystemUiVisibility(2);
  }
  
  private static void aE()
  {
    if ((F != null) && (W != null)) {
      W.setVisibility(8);
    }
  }
  
  private static void aF()
  {
    A.setText(DateUtils.formatElapsedTime(H / 1000L));
  }
  
  private static void aG()
  {
    int i2 = af.getCount();
    Object localObject1 = af.getPeriodList();
    if ((localObject1 == null) || (i2 <= 0)) {}
    for (;;)
    {
      return;
      int i3 = ((ArrayList)localObject1).size();
      int i1 = 0;
      while ((i1 < i2) && (i1 < i3))
      {
        Object localObject2 = (VOOSMPAdPeriod)((ArrayList)localObject1).get(i1);
        if ((localObject2 != null) && (ag == ((VOOSMPAdPeriod)localObject2).getID()) && (1 == ((VOOSMPAdPeriod)localObject2).getPeriodType()))
        {
          long l1 = ((VOOSMPAdPeriod)localObject2).getEndTime() - ((VOOSMPAdPeriod)localObject2).getStartTime();
          long l2 = ac - ((VOOSMPAdPeriod)localObject2).getStartTime();
          localObject1 = new BigDecimal(Double.toString(l2));
          localObject2 = new BigDecimal(Double.toString(l1));
          BigDecimal localBigDecimal = new BigDecimal(Double.toString(1000.0D));
          double d1 = ((BigDecimal)localObject1).divide(localBigDecimal, 0, 4).doubleValue();
          double d2 = ((BigDecimal)localObject2).divide(localBigDecimal, 0, 4).doubleValue();
          double d3 = ((BigDecimal)localObject1).divide((BigDecimal)localObject2, 2, 4).doubleValue();
          new StringBuilder("ADSCOUNTDOWN  adTotalTime = ").append(l1).append("  adCurrTime = ").append(l2).append("  adCurrTime_temp = ").append(d1).append("  adTotalTime_temp = ").append(d2).append("  progress_temp = ").append(d3);
          localObject1 = DateUtils.formatElapsedTime((int)d1);
          localObject2 = DateUtils.formatElapsedTime((int)d2);
          i1 = (int)Math.round(d3 * F.getMaxPosition());
          new StringBuilder("setProgress  progress: ").append(i1).append(" max: ").append(F.getMaxPosition());
          y.setProgress(i1);
          if (i1 > 0) {
            z.setText((CharSequence)localObject1);
          }
          for (;;)
          {
            A.setText((CharSequence)localObject2);
            return;
            z.setText("00:00");
          }
        }
        i1 += 1;
      }
    }
  }
  
  private static String aH()
  {
    str3 = "CBS Android";
    String str1 = str3;
    if (ap != null) {}
    try
    {
      Object localObject = ap.getPackageManager();
      str1 = str3;
      if (localObject != null)
      {
        localObject = ((PackageManager)localObject).getPackageInfo(ap.getPackageName(), 0);
        str1 = str3;
        if (localObject != null) {
          str1 = "CBS Android" + " " + versionName;
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localNameNotFoundException.printStackTrace();
        String str2 = str3;
      }
    }
    return str1 + " MDialog VO 3.17.15";
  }
  
  public static void b(Context paramContext)
  {
    if ((paramContext != null) && (Util.h(paramContext)) && ((paramContext instanceof NavigationActivity)))
    {
      paramContext = ((NavigationActivity)paramContext).getSupportFragmentManager();
      if (paramContext != null)
      {
        paramContext = paramContext.findFragmentByTag("fragment_show_home");
        if (paramContext != null)
        {
          paramContext = paramContext.getChildFragmentManager();
          if (paramContext != null)
          {
            paramContext = paramContext.findFragmentByTag("fragment_show_videos");
            if ((paramContext != null) && ((paramContext instanceof VideosFragment))) {
              ((VideosFragment)paramContext).h();
            }
          }
        }
      }
    }
  }
  
  public static void b(FullScreenButtonListener paramFullScreenButtonListener)
  {
    if (paramFullScreenButtonListener != null) {
      k.remove(paramFullScreenButtonListener);
    }
  }
  
  public static boolean b()
  {
    return (a()) && (ai);
  }
  
  public static boolean b(int paramInt)
  {
    new StringBuilder("Error message, what is ").append(paramInt).append(" extra is 0 hex:").append(Integer.toHexString(paramInt));
    if (O) {
      return true;
    }
    O = true;
    String str2 = Integer.toHexString(paramInt);
    String str1;
    if (paramInt == VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID.VO_OSMP_AD_CB_VIDEO_GEO_BLOCKED.getValue()) {
      str1 = "You are in a location that is not allowed to watch this content.";
    }
    for (;;)
    {
      str1 = str1 + " " + str2;
      new AlertDialog.Builder(new ContextThemeWrapper(ap, 2131427561)).setTitle("CBS").setMessage(str1).setOnKeyListener(new DialogInterface.OnKeyListener()
      {
        public final boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          CBSPlayer.t();
          return true;
        }
      }).setPositiveButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      }).create().show();
      HashMap localHashMap = new HashMap();
      if (P != null) {
        localHashMap.put("pid", P);
      }
      localHashMap.put("errorCode", str2);
      localHashMap.put("errorMessage", str1);
      localHashMap.put("events", "event19");
      AnalyticsManager.a(ap, Action.c, localHashMap);
      return true;
      if (paramInt == VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID.VO_OSMP_CB_LICENSE_FAIL.getValue()) {
        str1 = "License check failure or incorrect time settings.";
      } else if (paramInt == VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID.VO_OSMP_AD_CB_DATA_LOAD_ERROR.getValue()) {
        str1 = "We were unable to get the video data from our servers. Please check your internet connection.";
      } else if (paramInt == VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID.VO_OSMP_SRC_CB_CONNECTION_FAIL.getValue()) {
        str1 = "We were unable to connect to our video servers. Please check your internet connection.";
      } else if (paramInt == VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID.VO_OSMP_AD_CB_VIDEO_NOT_AVAILABLE.getValue()) {
        str1 = "This video is currently not available.";
      } else if ((paramInt == -2046820351) || (paramInt == -2130706431)) {
        str1 = "We are unable to open this video.";
      } else if ((paramInt == -2147483638) || (paramInt == -2046820343)) {
        str1 = "Video file format not supported.";
      } else if (paramInt == -2147483632) {
        str1 = "Video seek failed.";
      } else if (paramInt == 10000001) {
        str1 = "Hardware decoder failed 1.";
      } else if (paramInt == 10000002) {
        str1 = "Hardware decoder failed 2.";
      } else {
        str1 = "Unknown error.";
      }
    }
  }
  
  public static void c()
  {
    if (F != null)
    {
      F.setSurfaceChangeFinished();
      voLog.i("playerlistener", "Surface Changed Finished.", new Object[0]);
    }
  }
  
  public static void c(int paramInt)
  {
    String[] arrayOfString = ap.getResources().getStringArray(2131623954);
    TextView localTextView = (TextView)ao.findViewById(2131690365);
    ArrayList localArrayList = null;
    Object localObject = localArrayList;
    if (localTextView != null)
    {
      localObject = localArrayList;
      if (localTextView.getText() != null) {
        localObject = localTextView.getText().toString();
      }
    }
    localArrayList = new ArrayList();
    Collections.addAll(localArrayList, arrayOfString);
    int i2 = localArrayList.indexOf(localObject);
    int i1;
    if (paramInt == 1) {
      if ((i2 >= 0) && (i2 < arrayOfString.length - 1)) {
        i1 = i2 + paramInt;
      }
    }
    for (;;)
    {
      if (paramInt == -1) {
        if ((i2 > 0) && (i2 <= arrayOfString.length - 1)) {
          paramInt = i2 + paramInt;
        }
      }
      for (;;)
      {
        if (localTextView != null) {
          localTextView.setText((CharSequence)localArrayList.get(paramInt));
        }
        setFontFace((String)localArrayList.get(paramInt));
        return;
        if (i2 != arrayOfString.length - 1) {
          break label199;
        }
        i1 = 0;
        break;
        if (i2 == 0) {
          paramInt = arrayOfString.length - 1;
        } else {
          paramInt = i1;
        }
      }
      label199:
      i1 = 0;
    }
  }
  
  public static void c(Context paramContext)
  {
    if (a())
    {
      t();
      b(paramContext);
    }
  }
  
  public static void d()
  {
    if (F != null) {
      F.enableVideoStream(true);
    }
  }
  
  public static void d(int paramInt)
  {
    TextView localTextView = (TextView)ao.findViewById(2131689748);
    int i2 = 30;
    int i1 = i2;
    if (localTextView != null)
    {
      i1 = i2;
      if (localTextView.getText() != null) {
        i1 = Integer.parseInt(localTextView.getText().toString());
      }
    }
    if ((paramInt == 1) && (i1 < 250) && (localTextView != null))
    {
      setFontSize(i1 + 50);
      localTextView.setText(i1 + 50);
      setDisplayFontSize(i1 + 50);
    }
    if ((paramInt == -1) && (i1 > 50) && (localTextView != null))
    {
      setFontSize(i1 - 50);
      localTextView.setText(i1 - 50);
      setDisplayFontSize(i1 - 50);
    }
  }
  
  public static void e()
  {
    if ((F != null) && (ap != null))
    {
      if (av) {
        break label41;
      }
      az = 2;
      k();
      F.destroy();
      l();
      m();
    }
    label41:
    do
    {
      return;
      PlayerEventTracker.b();
      F.setView(g);
      F.resume(g);
      if (F.getPlayerStatus() == VOOSMPType.VO_OSMP_STATUS.VO_OSMP_STATUS_PAUSED)
      {
        az = 1;
        v.setImageResource(2130838028);
        ComScoreService.d();
        return;
      }
      new StringBuilder("Player is in Play state").append(F.getPlayerStatus());
      az = 2;
      v.setImageResource(2130838027);
      if (x())
      {
        Integer.valueOf(ag).toString();
        ComScoreService.e();
        return;
      }
      if (Q != null)
      {
        ComScoreService.a(Q);
        return;
      }
    } while (R == null);
    ComScoreService.a(R);
  }
  
  public static void e(int paramInt)
  {
    TextView localTextView = (TextView)ao.findViewById(2131689751);
    int i2 = 0;
    int i1 = i2;
    if (localTextView != null)
    {
      i1 = i2;
      if (localTextView.getText() != null) {
        i1 = Integer.parseInt(localTextView.getText().toString());
      }
    }
    if ((paramInt == 1) && (i1 < 100) && (localTextView != null))
    {
      setFontOpacity(i1 + 25);
      localTextView.setText(i1 + 25);
    }
    if ((paramInt == -1) && (i1 > 0))
    {
      setFontOpacity(i1 - 25);
      localTextView.setText(i1 - 25);
    }
  }
  
  public static void f()
  {
    if (F != null) {
      F.setView(null);
    }
  }
  
  public static void f(int paramInt)
  {
    TextView localTextView = (TextView)ao.findViewById(2131690386);
    int i2 = 0;
    int i1 = i2;
    if (localTextView != null)
    {
      i1 = i2;
      if (localTextView.getText() != null) {
        i1 = Integer.parseInt(localTextView.getText().toString());
      }
    }
    if ((paramInt == 1) && (i1 < 100) && (localTextView != null))
    {
      setCCBackgroundOpacity(i1 + 25);
      localTextView.setText(i1 + 25);
    }
    if ((paramInt == -1) && (i1 > 0))
    {
      setCCBackgroundOpacity(i1 - 25);
      localTextView.setText(i1 - 25);
    }
  }
  
  public static void g()
  {
    if (an != null)
    {
      ((RelativeLayout)aq).removeView(an);
      an = null;
    }
  }
  
  public static String getActivePid()
  {
    if (Q != null) {
      return Q.getPid();
    }
    return P;
  }
  
  public static String getConcurrentPlatform()
  {
    String str = "Android Phone";
    if (Util.a()) {
      if (Util.e(ap)) {
        str = "Amazon Phone";
      }
    }
    while (!Util.h(ap))
    {
      return str;
      return "Amazon Tablet";
    }
    return "Android Tablet";
  }
  
  public static VOOSMPType.VO_OSMP_STATUS getPlayerStatus()
  {
    if (F != null) {
      return F.getPlayerStatus();
    }
    return null;
  }
  
  public static long getPosition()
  {
    long l1 = 0L;
    if (F != null) {
      l1 = F.getPosition();
    }
    return l1;
  }
  
  public static long getSeekBarCurrentPosition()
  {
    return I;
  }
  
  public static long getTotalDuration()
  {
    return H;
  }
  
  public static void h()
  {
    if (ao != null)
    {
      ((RelativeLayout)aq).removeView(ao);
      ao = null;
    }
  }
  
  public static boolean i()
  {
    return ak;
  }
  
  public static void j()
  {
    if (y != null)
    {
      y.setHideAds(false);
      y.invalidate();
    }
  }
  
  public static void k()
  {
    if ((ap != null) && (F != null)) {
      a(apgetResourcesgetConfigurationorientation);
    }
  }
  
  static void l()
  {
    av = false;
    O = false;
    Object localObject1 = new VOCommonPlayerImpl();
    F = (VOCommonPlayer)localObject1;
    ((VOCommonPlayer)localObject1).setInitialBitrate(120000);
    localObject1 = CommonFunc.a(ap) + "/lib/";
    Object localObject2 = VOOSMPType.VO_OSMP_PLAYER_ENGINE.VO_OSMP_VOME2_PLAYER;
    VOOSMPInitParam localVOOSMPInitParam = new VOOSMPInitParam();
    localVOOSMPInitParam.setContext(ap);
    localVOOSMPInitParam.setLibraryPath((String)localObject1);
    TimeCal.a("Init --->");
    localObject1 = F.init((VOOSMPType.VO_OSMP_PLAYER_ENGINE)localObject2, localVOOSMPInitParam);
    TimeCal.a("Init <---");
    if (localObject1 != VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE) {
      b(((VOOSMPType.VO_OSMP_RETURN_CODE)localObject1).getValue());
    }
    do
    {
      return;
      F.setDRMAdapter("libvoDRMCommonAES128.so", true);
    } while (F == null);
    F.setView(g);
    k();
    F.setOnEventListener(aF);
    if (!Util.n(ap))
    {
      localObject1 = CapUtil.b(ap);
      F.setDeviceCapabilityByFile((String)localObject1);
    }
    localObject1 = new byte[32768];
    try
    {
      localObject2 = ap.getAssets().open("voVidDec.dat");
      ((InputStream)localObject2).read((byte[])localObject1);
      ((InputStream)localObject2).close();
      F.setLicenseContent((byte[])localObject1);
      F.setPreAgreedLicense("VISUALON-CBS-B39076FB2D274E35AA1B1078BE877E96");
      F.selectVideo(-1);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  static void m()
  {
    if (ay == null)
    {
      Context localContext = ap;
      new StringBuilder("getAdvertisingId: ").append(ay);
      long l1 = System.currentTimeMillis();
      if ((ay == null) || (l1 - f > 3600L))
      {
        f = System.currentTimeMillis();
        ap = localContext;
        if (!Util.H(localContext))
        {
          ay = Settings.Secure.getString(ap.getContentResolver(), "android_id");
          new StringBuilder("advertisingId1").append(ay);
        }
      }
      else
      {
        n();
        return;
      }
      new Thread(new Runnable()
      {
        public final void run()
        {
          for (;;)
          {
            try
            {
              localObject = a.a(CBSPlayer.H());
              String str2 = CBSPlayer.a;
              if (localObject == null) {
                continue;
              }
              str2 = CBSPlayer.a;
              if (!((a.a)localObject).b()) {
                continue;
              }
              CBSPlayer.a("optout");
            }
            catch (IllegalStateException localIllegalStateException)
            {
              Object localObject;
              Log.e(CBSPlayer.a, "IllegalStateException", localIllegalStateException);
              continue;
              String str1 = CBSPlayer.a;
              continue;
            }
            catch (d locald)
            {
              Log.e(CBSPlayer.a, "GooglePlayServicesRepairableException", locald);
              continue;
            }
            catch (IOException localIOException)
            {
              Log.e(CBSPlayer.a, "IOException");
              continue;
            }
            catch (c localc)
            {
              Log.e(CBSPlayer.a, "GooglePlayServicesNotAvailableException", localc);
              continue;
            }
            localObject = CBSPlayer.a;
            new Handler(CBSPlayer.H().getMainLooper()).post(new Runnable()
            {
              public final void run() {}
            });
            return;
            CBSPlayer.a(((a.a)localObject).a());
            localObject = CBSPlayer.a;
            new StringBuilder("advertisingId2").append(CBSPlayer.az());
          }
        }
      }, "Google ADS ID").start();
      return;
    }
    n();
  }
  
  static void n()
  {
    Object localObject1;
    if (ap != null)
    {
      localObject1 = e.a(ap);
      ((e)localObject1).d("");
      ((e)localObject1).k();
    }
    Object localObject5;
    Object localObject6;
    if (Q != null)
    {
      localObject5 = Q;
      ai = false;
      if ((localObject5 != null) && (((VideoData)localObject5).getPid() != null))
      {
        if ((localObject5 != null) && (((VideoData)localObject5).getFullEpisode())) {
          w.setVisibility(0);
        }
        bool1 = Preferences.a(ap, "use_debug_mdialog", false);
        TimeCal.a("Open --->");
        Q = (VideoData)localObject5;
        P = null;
        R = null;
        S = null;
        localObject6 = new VOOSMPAdTrackingImpl(ap);
        X = (VOOSMPAdTracking)localObject6;
        as = 1;
        if (Util.h(ap))
        {
          localObject3 = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_TABLET;
          bool2 = VideoUtil.a((VideoData)localObject5);
          bool3 = ((VideoData)localObject5).getFullEpisode();
          bool4 = VideoUtil.a();
          localObject4 = new HashMap();
          ((HashMap)localObject4).put("eVar5", "cbsicbsapp");
          ((HashMap)localObject4).put("eProp5", "cbsicbsapp");
          localObject7 = new StringBuilder("video - paywall:");
          if (!bool2) {
            break label387;
          }
          localObject1 = "1";
          label218:
          ((HashMap)localObject4).put("eVar38", (String)localObject1);
          localObject7 = new StringBuilder("video - paywall:");
          if (!bool2) {
            break label395;
          }
          localObject1 = "1";
          label259:
          ((HashMap)localObject4).put("eProp38", (String)localObject1);
          if (!bool2) {
            break label403;
          }
          ((HashMap)localObject4).put("eVar59", "svod");
          ((HashMap)localObject4).put("eProp59", "svod");
        }
        for (;;)
        {
          localObject1 = new HashMap();
          localObject1 = AnalyticsManager.a(ap, (HashMap)localObject1).entrySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject7 = (Map.Entry)((Iterator)localObject1).next();
            ((HashMap)localObject4).put(((Map.Entry)localObject7).getKey(), ((Map.Entry)localObject7).getValue());
          }
          localObject3 = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_PHONE;
          break;
          label387:
          localObject1 = "0";
          break label218;
          label395:
          localObject1 = "0";
          break label259;
          label403:
          ((HashMap)localObject4).put("eVar59", "non-svod");
          ((HashMap)localObject4).put("eProp59", "non-svod");
        }
        ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_OMNITURE, U, V, T, "can", "us", "native app", U, "D=User-Agent", (HashMap)localObject4, ar);
        localObject7 = AuthStatusManager.getUserId();
        localObject1 = AuthStatusManager.getTrackingAuthString();
        localObject8 = new HashMap();
        ((HashMap)localObject8).put("componentid", e);
        new StringBuilder("cbs componentid: ").append(e);
        ((HashMap)localObject8).put("v22", Q.getCid());
        if (localObject1 != null) {
          ((HashMap)localObject8).put("v25", localObject1);
        }
        if (localObject7 != null) {
          ((HashMap)localObject8).put("ursuid", localObject7);
        }
        localObject4 = new StringBuilder("paywall:");
        if (bool2)
        {
          localObject1 = "1";
          ((HashMap)localObject8).put("gestval", (String)localObject1);
          ((HashMap)localObject8).put("medastid", "595");
          localObject1 = "tablet";
          if (Util.e(ap)) {
            localObject1 = "phone";
          }
          localObject4 = "android";
          if (Util.a()) {
            localObject4 = "amazon";
          }
          ((HashMap)localObject8).put("device", "type:" + (String)localObject1 + ";os:" + (String)localObject4);
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE, U, V, T, "can", "", "", "", "", (HashMap)localObject8, ar);
          localObject1 = MVPDController.getInstance().getCurrentMvpdId();
          if (localObject1 != null)
          {
            localObject4 = new VOOSMPAdTrackingServer.TrackingPropertyItem();
            localObject8 = new HashMap();
            mEvTypes = EnumSet.of(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_EVENT_TYPE.INIT, VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_EVENT_TYPE.START);
            ((HashMap)localObject8).put("mso", localObject1);
            mProperties = ((HashMap)localObject8);
            ((VOOSMPAdTrackingServer)localObject6).addTrackingProperty(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE, (VOOSMPAdTrackingServer.TrackingPropertyItem)localObject4);
          }
          localObject1 = Util.u(ap);
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_NIELSEN, ((VideoData)localObject5).getPid(), "", T, "can", "", "", "", "", null, ar);
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DOUBLECLICK, "", "", T, "can", "", "", "", "", null, ar);
          localObject4 = new HashMap();
          ((HashMap)localObject4).put("player", F);
          ((HashMap)localObject4).put("customerKey", "87a6b28bc7823e67a5bb2a0a6728c702afcae78d");
          ((HashMap)localObject4).put("defaultReportingCdnName", "AKAMAI");
          ((HashMap)localObject4).put("playerName", aH());
          if (localObject1 != null) {
            ((HashMap)localObject4).put("viewerId", localObject1);
          }
          ((HashMap)localObject4).put("adServerName", "vidtech.cbsinteractive.com");
          ((HashMap)localObject4).put("Partner_ID", T);
          ((HashMap)localObject4).put("Player_Version", "1.0");
          if (Preferences.a(ap, "use_debug_conviva", false)) {
            ((HashMap)localObject4).put("logging", "yes");
          }
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_CONVIVA, (HashMap)localObject4);
          localObject1 = new HashMap();
          ((HashMap)localObject1).put("appId", "P1576C728-1641-4B4C-AE19-343CF249BCA8");
          ((HashMap)localObject1).put("sfcode", "us");
          ((HashMap)localObject1).put("appName", "CBS");
          ((HashMap)localObject1).put("appVersion", "2.9.0");
          ((HashMap)localObject1).put("isDebugMode", "false");
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_NIELSEN_DPR, P, "", T, "can", "", "", "", "", (HashMap)localObject1, (VOOSMPType.VO_OSMP_LAYOUT_TYPE)localObject3);
          if (localObject7 != null)
          {
            localObject4 = new HashMap();
            ((HashMap)localObject4).put("userid", localObject7);
            if ((!bool3) || (!bool4)) {
              break label1995;
            }
            localObject1 = "true";
            ((HashMap)localObject4).put("premium", localObject1);
            ((HashMap)localObject4).put("event", "beacon");
            ((HashMap)localObject4).put("siteid", "244");
            ((HashMap)localObject4).put("sessionid", UUID.randomUUID().toString());
          }
        }
      }
    }
    label1995:
    Object localObject2;
    label2021:
    label2033:
    label2041:
    label2056:
    label2071:
    while ((R == null) || (S == null))
    {
      try
      {
        for (;;)
        {
          boolean bool1;
          boolean bool3;
          boolean bool4;
          ((HashMap)localObject4).put("medtitle", URLEncoder.encode(((VideoData)localObject5).getTitle(), "UTF-8"));
          ((HashMap)localObject4).put("platform", URLEncoder.encode(getConcurrentPlatform(), "UTF-8"));
          ((HashMap)localObject4).put("affiliate", "false");
          if (!((VideoData)localObject5).getFullEpisode()) {
            break;
          }
          localObject1 = "true";
          ((HashMap)localObject4).put("episode", localObject1);
          ((VOOSMPAdTrackingServer)localObject6).addTrackingServer(VOOSMPAdTrackingServer.VO_OSMP_AD_TRACKING_SERVER.VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT, U, "Production", T, "can", "", "", "", "10000", (HashMap)localObject4, (VOOSMPType.VO_OSMP_LAYOUT_TYPE)localObject3);
          Object localObject8 = ((TelephonyManager)ap.getSystemService("phone")).getNetworkOperatorName();
          int i1 = Util.b(ap);
          int i2 = Util.c(ap);
          String str1 = AuthStatusManager.getTrackingAuthString();
          String str2 = AuthStatusManager.getUserId();
          localObject6 = AnalyticsManager.c(ap);
          Object localObject7 = AuthStatusManager.getUserAuthStatus();
          boolean bool2 = VideoUtil.a(Q);
          localObject1 = "NO_CONNECTION";
          i3 = Util.K(ap);
          if (i3 != 1) {
            break label2021;
          }
          localObject1 = "WIFI";
          HashMap localHashMap = new HashMap();
          localHashMap.put("VISITOR_ID", d);
          localHashMap.put("CARRIER_NAME", localObject8);
          localHashMap.put("RESOLUTION", i1 + "x" + i2);
          localHashMap.put("APP_VERSION", "2.9.0");
          localHashMap.put("ADVERTISER_ID", ay);
          if (!bool2) {
            break label2033;
          }
          localObject4 = "svod";
          localHashMap.put("VIDEO_SUBSCRIPTION_LEVEL", localObject4);
          localHashMap.put("USER_SUBSCRIPTION_STATUS", str1);
          if (str2 != null) {
            localHashMap.put("USER_ID", str2);
          }
          localHashMap.put("VIDEO_STREAM_TYPE", "video");
          localHashMap.put("CONTENT_TITLE", VideoUtil.b(Q));
          localHashMap.put("MEDIA_ID", "cbscom:" + Q.getCid());
          localHashMap.put("CARRIER_NAME", localObject8);
          localObject4 = new HashMap();
          ((HashMap)localObject4).put("USER_SUBSCRIPTION_CODE", Util.a((AuthStatusEndpointResponse)localObject7));
          ((HashMap)localObject4).put("iu", "8264/vaw-can/mobile_app/" + Util.P(ap));
          if (bool1) {
            ((HashMap)localObject4).put("stream_activity_key", "ed1b2da369ad0fc86cf311b760ed98e3");
          }
          if (localObject6 != null)
          {
            ((HashMap)localObject4).put("ge", ((AnalyticsManager.AgeGroupAndGender)localObject6).getGender());
            ((HashMap)localObject4).put("gr", ((AnalyticsManager.AgeGroupAndGender)localObject6).getAgeGroup());
          }
          if (localObject7 != null)
          {
            localObject6 = ((AuthStatusEndpointResponse)localObject7).getPpid();
            if (localObject6 != null) {
              ((HashMap)localObject4).put("ppid", localObject6);
            }
          }
          localObject6 = new HashMap();
          ((HashMap)localObject6).put("learn_more_container", aa);
          if (!bool1) {
            break label2041;
          }
          ((HashMap)localObject6).put("sub_domain_key", "cbs-vod-stg");
          if (!Util.H(ap)) {
            break label2056;
          }
          ((HashMap)localObject6).put("application_key", "43a039766213a5e36ec6e05edb897cc2");
          ((HashMap)localObject6).put("ad_decision_server_data", localObject4);
          ((HashMap)localObject6).put("tracking_data", localHashMap);
          ((HashMap)localObject6).put("current_connection_status", localObject1);
          localObject1 = new VOOSMPAdOpenParam();
          ((VOOSMPAdOpenParam)localObject1).setSettings((HashMap)localObject6);
          ((VOOSMPAdOpenParam)localObject1).setAdEngineType(VOOSMPType.VO_OSMP_AD_ENGINE_TYPE.VO_OSMP_AD_ENGINE_MDIALOG);
          localObject4 = new VOOSMPAdInformation();
          ((VOOSMPAdInformation)localObject4).setStrChannelname("CBS");
          ((VOOSMPAdOpenParam)localObject1).setAdContentInfo((VOOSMPAdInformation)localObject4);
          ((VOOSMPAdOpenParam)localObject1).setDebug(false);
          ((VOOSMPAdOpenParam)localObject1).setStrOnceUXURL(a(Util.a(AuthStatusManager.getUserAuthStatus()), ap));
          ((VOOSMPAdOpenParam)localObject1).setType((VOOSMPType.VO_OSMP_LAYOUT_TYPE)localObject3);
          new StringBuilder("advertisingId: ").append(ay);
          ((VOOSMPAdOpenParam)localObject1).setAdvertisingID(ay);
          if (a((VOOSMPAdOpenParam)localObject1, aE)) {
            break label2071;
          }
          b(10000001);
          return;
          localObject1 = "0";
        }
        localObject1 = "false";
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          int i3;
          localUnsupportedEncodingException.printStackTrace();
          continue;
          localObject2 = "false";
          continue;
          if (i3 == 0)
          {
            localObject2 = "CELLULAR";
            continue;
            localObject4 = "non-svod";
            continue;
            ((HashMap)localObject6).put("sub_domain_key", "cbs-vod");
            continue;
            ((HashMap)localObject6).put("application_key", "04d10e88d56f51dea0b6d54d3e6f92cf");
          }
        }
      }
      if (Preferences.a(ap, "unicornUAT", false))
      {
        ((VOOSMPAdOpenParam)localObject2).setDebug(true);
        ((VOOSMPAdOpenParam)localObject2).setFlag(VOOSMPType.VO_OSMP_AD_OPEN_FLAG.valueOf(as | 0x80000000));
      }
      for (;;)
      {
        ((VOOSMPAdOpenParam)localObject2).setDebug(false);
        if (Build.MODEL.contains("Nexus 9")) {
          F.setRenderType(VOOSMPType.VO_OSMP_RENDER_TYPE.VO_OSMP_RENDER_TYPE_NATIVE_WINDOW);
        }
        localObject2 = F.loadVideo(((VideoData)localObject5).getPid(), (VOOSMPAdOpenParam)localObject2);
        X.notifyPlayNewVideo();
        F.setAdTrackingAPI(X);
        a((VOOSMPType.VO_OSMP_RETURN_CODE)localObject2);
        return;
        ((VOOSMPAdOpenParam)localObject2).setFlag(VOOSMPType.VO_OSMP_AD_OPEN_FLAG.valueOf(as));
      }
      new AlertDialog.Builder(new ContextThemeWrapper(ap, 2131427561)).setIcon(2130837906).setMessage("Bad video.").setPositiveButton(2131230816, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      }).create().show();
      return;
    }
    Object localObject3 = R;
    Object localObject4 = S;
    if ((localObject3 != null) && (localObject4 != null))
    {
      w.setVisibility(0);
      ai = true;
      P = null;
      Q = null;
      af = null;
      v();
      localObject6 = new VOOSMPAdTrackingImpl(ap);
      X = (VOOSMPAdTracking)localObject6;
      as = 2;
      localObject5 = new VOOSMPAdOpenParam();
      ((VOOSMPAdOpenParam)localObject5).setDebug(false);
      if (!a((VOOSMPAdOpenParam)localObject5, aE))
      {
        b(10000001);
        return;
      }
      ((VOOSMPAdOpenParam)localObject5).setStrOnceUXURL(a(Util.a(AuthStatusManager.getUserAuthStatus()), ap));
      if (Util.h(ap))
      {
        localObject2 = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_TABLET;
        a((SyncbakChannel)localObject3, (VOOSMPAdTrackingServer)localObject6, (VOOSMPType.VO_OSMP_LAYOUT_TYPE)localObject2);
        ((VOOSMPAdOpenParam)localObject5).setType((VOOSMPType.VO_OSMP_LAYOUT_TYPE)localObject2);
        ((VOOSMPAdOpenParam)localObject5).setDebug(false);
        ((VOOSMPAdOpenParam)localObject5).setAdvertisingID(ay);
        if (!Preferences.a(ap, "unicornUAT", false)) {
          break label2579;
        }
        ((VOOSMPAdOpenParam)localObject5).setDebug(true);
        ((VOOSMPAdOpenParam)localObject5).setFlag(VOOSMPType.VO_OSMP_AD_OPEN_FLAG.valueOf(as | 0x80000000));
      }
      for (;;)
      {
        localObject2 = new VOOSMPAdInformation();
        ((VOOSMPAdInformation)localObject2).setStrContentTitle(((SyncbakChannel)localObject3).getName() + "-LiveTV");
        ((VOOSMPAdInformation)localObject2).setStrChannelname("CBS");
        ((VOOSMPAdOpenParam)localObject5).setAdContentInfo((VOOSMPAdInformation)localObject2);
        if (Build.MODEL.contains("Nexus 9")) {
          F.setRenderType(VOOSMPType.VO_OSMP_RENDER_TYPE.VO_OSMP_RENDER_TYPE_NATIVE_WINDOW);
        }
        localObject2 = F.loadVideo((String)localObject4, (VOOSMPAdOpenParam)localObject5);
        X.notifyPlayNewVideo();
        F.setAdTrackingAPI(X);
        a((VOOSMPType.VO_OSMP_RETURN_CODE)localObject2);
        return;
        localObject2 = VOOSMPType.VO_OSMP_LAYOUT_TYPE.VO_OSMP_LAYOUT_PHONE;
        break;
        label2579:
        ((VOOSMPAdOpenParam)localObject5).setFlag(VOOSMPType.VO_OSMP_AD_OPEN_FLAG.valueOf(as));
      }
    }
    new AlertDialog.Builder(new ContextThemeWrapper(ap, 2131427561)).setIcon(2130837906).setMessage("Bad video.").setPositiveButton(2131230816, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    }).create().show();
  }
  
  static void o()
  {
    if (F == null) {
      return;
    }
    aG.sendEmptyMessage(l);
  }
  
  static void p()
  {
    int i2 = 1;
    for (;;)
    {
      try
      {
        new StringBuilder("Touch screen View, layout status is ").append(L.getVisibility());
        C = new Date(System.currentTimeMillis());
        L.setVisibility(0);
        aC = new Date(System.currentTimeMillis());
        if ((F != null) && (W != null)) {
          W.setVisibility(0);
        }
        if (an != null) {
          an.setVisibility(0);
        }
        if ((ah) || (ai))
        {
          Y.setVisibility(0);
          L.setVisibility(0);
          if (an != null) {
            an.setVisibility(0);
          }
          Z.setVisibility(0);
        }
        if ((y != null) && (Q != null))
        {
          if (x()) {
            y.setThumb(ap.getResources().getDrawable(2130837727));
          }
        }
        else
        {
          if (R == null)
          {
            if (Q == null) {
              break label281;
            }
            i1 = 1;
            if (x()) {
              break label286;
            }
            if (((i2 & i1) == 0) || (!Q.getFullEpisode())) {
              break label291;
            }
          }
          w.setVisibility(0);
          new StringBuilder("m_rlTop show ").append(L.getVisibility());
          return;
        }
        y.setThumb(ap.getResources().getDrawable(2130838029));
        y.setThumbOffset(-Util.a(ap, 2.0D));
        continue;
        int i1 = 0;
      }
      finally {}
      label281:
      continue;
      label286:
      i2 = 0;
      continue;
      label291:
      w.setVisibility(8);
    }
  }
  
  public static void q()
  {
    aG.sendEmptyMessage(m);
  }
  
  public static void r()
  {
    aC();
    L.setVisibility(4);
    if (an != null) {
      an.setVisibility(4);
    }
    if ((Util.e(ap)) || (ae)) {
      aD();
    }
    aE();
    g();
  }
  
  public static void s()
  {
    if ((F != null) && (Q != null) && (ap != null) && (au > aw) && (av) && (az != 1))
    {
      long l1 = au;
      new StringBuilder("goToPosition").append(aw);
      new StringBuilder("current position").append(l1).append(" for ").append(Q.getCid());
      if ((l1 > 30000L) && (F.getMaxPosition() - l1 > 30000L))
      {
        new StringBuilder("3 set resume time to ").append(l1).append(" for ").append(Q.getCid());
        new MyCBSDBServiceImpl().a(ap, Q.getCid(), l1);
      }
    }
  }
  
  public static void setCCBackgroundColor(String paramString)
  {
    CCSettingPreferences.c(paramString, ap);
    int i1 = Integer.parseInt(paramString);
    i1 = Color.argb(255, Color.red(i1), Color.green(i1), Color.blue(i1));
    new StringBuilder("setCCBackgroundColor alpha: ").append(Color.alpha(i1)).append(" r: ").append(Color.red(i1)).append(" g: ").append(Color.green(i1)).append(" b: ").append(Color.blue(i1));
    paramString = F.setSubtitleFontBackgroundColor(i1);
    new StringBuilder("backgroundColor retVal: ").append(paramString);
    paramString = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
  }
  
  public static void setCCBackgroundOpacity(int paramInt)
  {
    CCSettingPreferences.d(paramInt, ap);
    Object localObject = F.setSubtitleFontBackgroundOpacity(paramInt);
    new StringBuilder("backgroundOpacity retVal: ").append(localObject);
    localObject = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    if (ao != null)
    {
      localObject = (TextView)ao.findViewById(2131690386);
      if (localObject != null) {
        ((TextView)localObject).setText(String.valueOf(paramInt));
      }
    }
  }
  
  public static void setDisplayFontSize(int paramInt)
  {
    TextView localTextView = (TextView)ao.findViewById(2131689749);
    if (localTextView != null) {}
    switch (paramInt)
    {
    default: 
      return;
    case 50: 
      localTextView.setText("XS");
      return;
    case 100: 
      localTextView.setText("S");
      return;
    case 150: 
      localTextView.setText("M");
      return;
    case 200: 
      localTextView.setText("L");
      return;
    }
    localTextView.setText("XL");
  }
  
  public static void setFontColor(String paramString)
  {
    CCSettingPreferences.a(paramString, ap);
    int i1 = Integer.parseInt(paramString);
    i1 = Color.argb(255, Color.red(i1), Color.green(i1), Color.blue(i1));
    new StringBuilder("setFontColor alpha: ").append(Color.alpha(i1)).append(" r: ").append(Color.red(i1)).append(" g: ").append(Color.green(i1)).append(" b: ").append(Color.blue(i1));
    paramString = F.setSubtitleFontColor(i1);
    new StringBuilder("fontColor retVal: ").append(paramString);
    paramString = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
  }
  
  public static void setFontEdgeType(int paramInt)
  {
    CCSettingPreferences.c(paramInt, ap);
    int i1 = a(ap.getResources().getString(2131230885), 16777215);
    i1 = Color.argb(255, i1 / 256 / 256, (0xFF00 & i1) / 256, i1 & 0xFF);
    VOOSMPType.VO_OSMP_RETURN_CODE localVO_OSMP_RETURN_CODE = F.setSubtitleFontEdgeColor(i1);
    new StringBuilder("fontEdgeColor retVal: ").append(localVO_OSMP_RETURN_CODE);
    localVO_OSMP_RETURN_CODE = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    localVO_OSMP_RETURN_CODE = F.setSubtitleFontEdgeOpacity(100);
    new StringBuilder("fontEdgeOpacity retVal: ").append(localVO_OSMP_RETURN_CODE);
    localVO_OSMP_RETURN_CODE = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    localVO_OSMP_RETURN_CODE = F.setSubtitleFontEdgeType(paramInt);
    new StringBuilder("fontEdgeType retVal: ").append(localVO_OSMP_RETURN_CODE);
    localVO_OSMP_RETURN_CODE = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
  }
  
  public static void setFontFace(String paramString)
  {
    CCSettingPreferences.b(paramString, ap);
    if (paramString.equals("Arial")) {}
    for (Object localObject = F.setSubtitleFontName(paramString);; localObject = F.setSubtitleTypeface((Typeface)localObject))
    {
      new StringBuilder("fontFace retVal: ").append(localObject);
      localObject = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
      if (ao != null)
      {
        localObject = (TextView)ao.findViewById(2131690365);
        if (localObject != null) {
          ((TextView)localObject).setText(paramString);
        }
      }
      return;
      localObject = paramString.replace(" ", "");
      localObject = Typeface.createFromAsset(ap.getAssets(), "fonts/" + (String)localObject + ".ttf");
    }
  }
  
  public static void setFontOpacity(int paramInt)
  {
    CCSettingPreferences.b(paramInt, ap);
    Object localObject = F.setSubtitleFontOpacity(paramInt);
    new StringBuilder("fontOpacity retVal: ").append(localObject);
    localObject = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    if (ao != null)
    {
      localObject = (TextView)ao.findViewById(2131689751);
      if (localObject != null) {
        ((TextView)localObject).setText(String.valueOf(paramInt));
      }
    }
  }
  
  public static void setFontSize(int paramInt)
  {
    CCSettingPreferences.a(paramInt, ap);
    Object localObject = F.setSubtitleFontSizeScale(paramInt);
    new StringBuilder("fontSize retVal: ").append(localObject);
    localObject = VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
    if (ao != null)
    {
      localObject = (TextView)ao.findViewById(2131689748);
      if (localObject != null)
      {
        ((TextView)localObject).setText(String.valueOf(paramInt));
        setDisplayFontSize(paramInt);
      }
    }
  }
  
  public static void setResumeMode(int paramInt)
  {
    at = paramInt;
  }
  
  public static void setResumeTime(long paramLong)
  {
    au = paramLong;
  }
  
  public static void setView(SurfaceView paramSurfaceView)
  {
    g = paramSurfaceView;
    F.setView(paramSurfaceView);
  }
  
  public static void t()
  {
    av = false;
    if ((GlobalConstants.c) || (Util.e(ap)))
    {
      GlobalConstants.c = false;
      if (((P != null) || (Q != null)) && ((ap instanceof PlayerActivityV2)))
      {
        PlayerActivityV2 localPlayerActivityV2 = (PlayerActivityV2)ap;
        if (!localPlayerActivityV2.isFinishing()) {
          localPlayerActivityV2.finish();
        }
      }
    }
    for (;;)
    {
      if (F != null) {
        F.suspend(false);
      }
      h();
      if ((F == null) || (g == null)) {
        break;
      }
      w.setVisibility(8);
      F.enableSubtitle(false);
      z.setText("00:00");
      A.setText("00:00");
      ac = 0;
      Y.setVisibility(8);
      Z.setVisibility(8);
      W.setVisibility(8);
      B.setVisibility(8);
      y.setProgress(0);
      v.setImageResource(2130838028);
      v.setClickable(false);
      y.setAdsInfo(null);
      y.setHideAds(true);
      y.invalidate();
      g.setBackgroundColor(-16777216);
      am = 0;
      int i1 = 0;
      while (i1 < 50)
      {
        al[i1] = 0;
        i1 += 1;
      }
      if (ae) {
        z();
      }
    }
    az = 0;
    if ((R != null) && (S != null)) {
      PlayerEventTracker.b(ap, R, S);
    }
    if (F != null)
    {
      F.stopAnalyticsNotification();
      TimeCal.a("Stop --->");
      F.stop();
      TimeCal.a("Stop <---");
      TimeCal.a("Close --->");
      F.close();
      TimeCal.a("Close <---");
    }
    PlayerEventTracker.a(ap);
    if (F != null)
    {
      TimeCal.a("Destroy --->");
      F.destroy();
      TimeCal.a("Destroy <---");
      F = null;
    }
    aj = false;
    S = null;
    Q = null;
    R = null;
    P = null;
    ai = false;
    ae = false;
    if (O) {
      b(ap);
    }
    O = false;
  }
  
  public static void u()
  {
    if (F != null)
    {
      if (F != null) {
        F.suspend(true);
      }
      aC();
      if (F.canBePaused())
      {
        I = F.getPosition();
        az = 1;
        F.pause();
        v.setImageResource(2130838028);
        o();
        aC();
        PlayerEventTracker.a(ap);
      }
    }
    else
    {
      return;
    }
    t();
  }
  
  public static void v()
  {
    if (b()) {
      z.setText("LIVE");
    }
    v.setVisibility(4);
    y.setVisibility(4);
    A.setVisibility(4);
    ab.setVisibility(4);
  }
  
  public static void w()
  {
    az = 3;
    F.start();
    v.setImageResource(2130838027);
  }
  
  public static boolean x()
  {
    if (af == null) {
      return false;
    }
    int i2 = af.getCount();
    ArrayList localArrayList = af.getPeriodList();
    if ((localArrayList == null) || (i2 <= 0)) {
      return false;
    }
    int i3 = localArrayList.size();
    int i1 = 0;
    while ((i1 < i2) && (i1 < i3))
    {
      VOOSMPAdPeriod localVOOSMPAdPeriod = (VOOSMPAdPeriod)localArrayList.get(i1);
      if ((localVOOSMPAdPeriod != null) && (ag == localVOOSMPAdPeriod.getID()) && (1 == localVOOSMPAdPeriod.getPeriodType())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public static boolean y()
  {
    return ae;
  }
  
  public static void z()
  {
    if (ae)
    {
      ae = false;
      a(false);
      if ((a()) && (Q != null)) {
        j();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */