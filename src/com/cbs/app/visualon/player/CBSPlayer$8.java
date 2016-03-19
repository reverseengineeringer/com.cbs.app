package com.cbs.app.visualon.player;

import android.os.Handler;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.MyCBSDBService;
import com.cbs.app.service.MyCBSDBServiceImpl;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.VideoUtil;
import com.visualon.OSMPPlayer.VOCommonPlayer;
import com.visualon.OSMPPlayer.VOCommonPlayerListener;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_AD_STATUS;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_AVAILABLE_TRACK_TYPE;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID;
import com.visualon.OSMPPlayer.VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;
import com.visualon.OSMPPlayer.VOOSMPAdInfo;
import com.visualon.OSMPPlayer.VOOSMPAdPeriod;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_AD_RESUME_MODE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_ASPECT_RATIO;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_DECODER_TYPE;
import com.visualon.OSMPPlayer.VOOSMPType.VO_OSMP_RETURN_CODE;
import java.util.ArrayList;
import java.util.Iterator;

final class CBSPlayer$8
  implements VOCommonPlayerListener
{
  public final VOOSMPType.VO_OSMP_RETURN_CODE onVOEvent(VOCommonPlayerListener.VO_OSMP_CB_EVENT_ID paramVO_OSMP_CB_EVENT_ID, int paramInt1, int paramInt2, Object paramObject)
  {
    Object localObject = AuthStatusManager.getTrackingAuthString();
    switch (CBSPlayer.7.d[paramVO_OSMP_CB_EVENT_ID.ordinal()])
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
        CBSPlayer.a(VOOSMPType.VO_OSMP_ASPECT_RATIO.valueOf(paramInt1));
        continue;
        paramVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT.valueOf(paramInt1);
        switch (CBSPlayer.7.b[paramVO_OSMP_CB_EVENT_ID.ordinal()])
        {
        case 1: 
        default: 
          break;
        case 2: 
          CBSPlayer.c(false);
          CBSPlayer.b(false);
          break;
        case 3: 
          paramVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_AVAILABLE_TRACK_TYPE.valueOf(paramInt2);
          paramObject = CBSPlayer.7.a;
          paramVO_OSMP_CB_EVENT_ID.ordinal();
          continue;
          CBSPlayer.E();
          CBSPlayer.b(paramVO_OSMP_CB_EVENT_ID.getValue());
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
              CBSPlayer.i = paramInt1;
              CBSPlayer.j = paramInt2;
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
                  if (paramInt1 == VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE.getValue())
                  {
                    if (CBSPlayer.E() == null) {
                      break label808;
                    }
                    paramVO_OSMP_CB_EVENT_ID = CBSPlayer.E().start();
                    CBSPlayer.d(true);
                    if (paramVO_OSMP_CB_EVENT_ID == VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE)
                    {
                      paramVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_SHORT_TIME;
                      if (CBSPlayer.R() > 0)
                      {
                        if (CBSPlayer.R() != 1) {
                          break label746;
                        }
                        paramVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_SHORT_TIME;
                        new StringBuilder("RESUME resumeMode: ").append(CBSPlayer.R()).append(" resumeTime: ").append(CBSPlayer.S());
                        if ((CBSPlayer.S() <= 0L) || (CBSPlayer.S() >= CBSPlayer.E().getMaxPosition())) {
                          break label753;
                        }
                        new StringBuilder("RESUME resumeMode: ").append(CBSPlayer.R()).append(" resumeTime: ").append(CBSPlayer.S());
                        CBSPlayer.E().resume(paramVO_OSMP_CB_EVENT_ID, CBSPlayer.S());
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
                    paramVO_OSMP_CB_EVENT_ID = VOOSMPType.VO_OSMP_AD_RESUME_MODE.VO_OSMP_AD_RESUME_MODE_LONG_TIME;
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
                    CBSPlayer.b(paramInt1);
                  }
                  new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                  CBSPlayer.a(-1L);
                  CBSPlayer.h(paramInt1);
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
                    paramVO_OSMP_CB_EVENT_ID = CBSPlayer.V();
                    CBSPlayer.W();
                    PlayerEventTracker.a(paramVO_OSMP_CB_EVENT_ID);
                    continue;
                    new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                    CBSPlayer.h(paramInt1);
                    CBSPlayer.M().sendEmptyMessage(CBSPlayer.ae());
                    CBSPlayer.d(true);
                    CBSPlayer.F().invalidate();
                    continue;
                    new StringBuilder("position: ").append(CBSPlayer.E().getPosition());
                    CBSPlayer.c(false);
                    CBSPlayer.F().setEnabled(false);
                    CBSPlayer.h(paramInt1);
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
                    PlayerEventTracker.a(CBSPlayer.H(), Integer.toString(paramInt1));
                    new StringBuilder("isAtStartOfAdPod ").append(CBSPlayer.af());
                    if (CBSPlayer.af()) {
                      PlayerEventTracker.b(CBSPlayer.H(), Integer.toString(paramInt1));
                    }
                    CBSPlayer.d(false);
                    CBSPlayer.M().sendEmptyMessage(CBSPlayer.ag());
                    continue;
                    CBSPlayer.h(paramInt1);
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
                    CBSPlayer.i(paramInt1);
                    CBSPlayer.M().sendEmptyMessage(CBSPlayer.am());
                    continue;
                    paramVO_OSMP_CB_EVENT_ID = VOCommonPlayerListener.VO_OSMP_AD_STATUS.valueOf(paramInt1);
                    paramObject = CBSPlayer.7.c;
                    paramVO_OSMP_CB_EVENT_ID.ordinal();
                    continue;
                    CBSPlayer.E();
                    CBSPlayer.b(paramVO_OSMP_CB_EVENT_ID.getValue());
                    continue;
                    CBSPlayer.E();
                    CBSPlayer.b(paramVO_OSMP_CB_EVENT_ID.getValue());
                    continue;
                    CBSPlayer.E();
                    CBSPlayer.b(paramVO_OSMP_CB_EVENT_ID.getValue());
                    continue;
                    CBSPlayer.E();
                    CBSPlayer.b(paramVO_OSMP_CB_EVENT_ID.getValue());
                  }
                }
              }
            }
          }
          break;
        }
      }
      CBSPlayer.a((VOOSMPAdInfo)paramObject);
      new StringBuilder("duratoinzz: ").append(CBSPlayer.E().getDuration());
      new StringBuilder("max timezz: ").append(CBSPlayer.E().getMaxPosition());
      paramVO_OSMP_CB_EVENT_ID = CBSPlayer.aa().getPeriodList();
    } while ((paramVO_OSMP_CB_EVENT_ID == null) || (paramVO_OSMP_CB_EVENT_ID.size() <= 0));
    paramObject = paramVO_OSMP_CB_EVENT_ID.iterator();
    label1494:
    StringBuilder localStringBuilder;
    if (((Iterator)paramObject).hasNext())
    {
      localObject = (VOOSMPAdPeriod)((Iterator)paramObject).next();
      localStringBuilder = new StringBuilder("adPeriodzz: ").append(((VOOSMPAdPeriod)localObject).getStartTime()).append(" type: ");
      if (((VOOSMPAdPeriod)localObject).getPeriodType() != 1) {
        break label1609;
      }
    }
    label1609:
    for (paramVO_OSMP_CB_EVENT_ID = "ads";; paramVO_OSMP_CB_EVENT_ID = "content")
    {
      localStringBuilder.append(paramVO_OSMP_CB_EVENT_ID).append(" end time: ").append(((VOOSMPAdPeriod)localObject).getEndTime()).append(" duration: ").append(((VOOSMPAdPeriod)localObject).getEndTime() - ((VOOSMPAdPeriod)localObject).getStartTime());
      break label1494;
      break;
    }
  }
  
  public final VOOSMPType.VO_OSMP_RETURN_CODE onVOSyncEvent(VOCommonPlayerListener.VO_OSMP_CB_SYNC_EVENT_ID paramVO_OSMP_CB_SYNC_EVENT_ID, int paramInt1, int paramInt2, Object paramObject)
  {
    return VOOSMPType.VO_OSMP_RETURN_CODE.VO_OSMP_ERR_NONE;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */