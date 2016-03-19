package com.cbs.app.service.social;

import android.os.Handler;

final class TwitterOAuthImpl$2
  implements Runnable
{
  TwitterOAuthImpl$2(TwitterOAuthImpl paramTwitterOAuthImpl, OAuthRequestBundle paramOAuthRequestBundle) {}
  
  public final void run()
  {
    String str = TwitterOAuthImpl.a(b, a);
    TwitterOAuthImpl.b().post(TwitterOAuthImpl.a(b, str, a.f));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.TwitterOAuthImpl.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */