package com.cbs.app.view.utils;

import android.content.Context;
import com.cbs.app.view.NielsenDialogHelper.VideoClickListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;

final class VideoUtil$a
  implements NielsenDialogHelper.VideoClickListener
{
  private Context a;
  
  public VideoUtil$a(Context paramContext)
  {
    a = paramContext;
  }
  
  public final void a(VideoData paramVideoData, ShowItem paramShowItem)
  {
    VideoUtil.a(a, paramVideoData, paramShowItem);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.VideoUtil.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */