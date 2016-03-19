package com.cbs.app.service.social;

final class TwitterOAuthImpl$3
  implements Runnable
{
  TwitterOAuthImpl$3(TwitterOAuthImpl paramTwitterOAuthImpl, String paramString, int paramInt) {}
  
  public final void run()
  {
    if ((!TwitterOAuthImpl.a(c)) && (TwitterOAuthImpl.b(c) != null))
    {
      if (a == null) {
        break label81;
      }
      if (a.contains("failed with response: ")) {
        TwitterOAuthImpl.b(c).b(a, b);
      }
    }
    else
    {
      return;
    }
    TwitterOAuthImpl.b(c).a(a, b);
    return;
    label81:
    TwitterOAuthImpl.b(c).b("failed with null", b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.TwitterOAuthImpl.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */