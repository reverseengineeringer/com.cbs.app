package com.comscore.streaming;

import java.util.TimerTask;

final class p
  extends TimerTask
{
  p(StreamSenseVideoView paramStreamSenseVideoView, long paramLong) {}
  
  public final void run()
  {
    if (StreamSenseVideoView.e(b) != null)
    {
      long l = StreamSenseVideoView.a(b);
      if (a != l) {
        break label69;
      }
    }
    label69:
    for (int i = 1; (StreamSenseVideoView.f(b)) && (i != 0) && (!StreamSenseVideoView.g(b)); i = 0)
    {
      StreamSenseVideoView.h(b);
      StreamSenseVideoView.i(b);
      return;
    }
    StreamSenseVideoView.h(b);
    StreamSenseVideoView.d(b);
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */