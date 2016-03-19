package com.cbs.app.view.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.UnableToConnectDialogHelper;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.VideoStreamsEndpoint;

final class VideoUtil$b
  implements ResponseModelListener
{
  VideoUtil.PlayVideoListener a;
  private Context b;
  private VideoData c;
  private ShowItem d;
  
  public VideoUtil$b(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem, VideoUtil.PlayVideoListener paramPlayVideoListener)
  {
    b = paramContext;
    c = paramVideoData;
    d = paramShowItem;
    a = paramPlayVideoListener;
  }
  
  public final void a()
  {
    Activity localActivity = (Activity)b;
    if ((localActivity != null) && (!localActivity.isFinishing())) {
      UnableToConnectDialogHelper.a(b, "Refresh", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          VideoUtil.c(VideoUtil.b.a(VideoUtil.b.this), VideoUtil.b.b(VideoUtil.b.this), VideoUtil.b.c(VideoUtil.b.this), a);
        }
      }, "OK", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      });
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof VideoStreamsEndpoint))
    {
      paramResponseModel = (VideoStreamsEndpoint)paramResponseModel;
      String str = paramResponseModel.getContentId();
      new StringBuilder("comparing most recent ").append(VideoUtil.d()).append(" to endpoint ").append(str);
      if ((str != null) && (str.equals(VideoUtil.d())))
      {
        if (!paramResponseModel.isOverThreshold()) {
          break label79;
        }
        VideoUtil.b(b, c);
      }
    }
    return;
    label79:
    long l = paramResponseModel.getMediaTime() * 1000L;
    if (c.getFullEpisode())
    {
      if (l > 5000L)
      {
        VideoUtil.a(b, c, d, l, a);
        return;
      }
      VideoUtil.b(b, c, d, a);
      return;
    }
    a.a(c, d, -1, -1L);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.VideoUtil.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */