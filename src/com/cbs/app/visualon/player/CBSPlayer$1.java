package com.cbs.app.visualon.player;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.cbs.app.service.MyCBSDBService;
import com.cbs.app.service.MyCBSDBServiceImpl;
import com.cbs.app.view.model.VideoData;
import com.visualon.OSMPPlayer.VOCommonPlayer;
import java.util.concurrent.TimeUnit;

final class CBSPlayer$1
  implements SeekBar.OnSeekBarChangeListener
{
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    CBSPlayer.b(false);
    if (CBSPlayer.E() != null) {
      CBSPlayer.b(CBSPlayer.E().getPosition());
    }
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    CBSPlayer.D();
    CBSPlayer.b(true);
  }
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    CBSPlayer.D();
    CBSPlayer.b(false);
    if (CBSPlayer.E() != null)
    {
      CBSPlayer.F().setEnabled(false);
      CBSPlayer.a(paramSeekBar.getProgress());
      if ((CBSPlayer.E() != null) && (CBSPlayer.G() != null) && (CBSPlayer.H() != null) && (CBSPlayer.I() != 1)) {
        new MyCBSDBServiceImpl().a(CBSPlayer.H(), CBSPlayer.G().getCid(), CBSPlayer.E().getPosition());
      }
      paramSeekBar = CBSPlayer.a;
      new StringBuilder("new position: ").append(CBSPlayer.J());
      paramSeekBar = CBSPlayer.a;
      new StringBuilder("max position: ").append(CBSPlayer.E().getMaxPosition());
      TimeCal.a("SetPos --->");
      CBSPlayer.E().setPosition(Math.min(CBSPlayer.J(), CBSPlayer.E().getMaxPosition() - TimeUnit.SECONDS.toMillis(2L)));
      TimeCal.a("SetPos <---");
      CBSPlayer.c(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CBSPlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */