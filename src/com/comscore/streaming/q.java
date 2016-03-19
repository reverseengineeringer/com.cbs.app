package com.comscore.streaming;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class q
  implements MediaPlayer.OnCompletionListener
{
  q(StreamSenseVideoView paramStreamSenseVideoView) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    StreamSenseVideoView.j(a);
    if (StreamSenseVideoView.k(a) != null) {
      StreamSenseVideoView.k(a).onCompletion(paramMediaPlayer);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */