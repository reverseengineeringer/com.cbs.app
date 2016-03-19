package com.facebook.applinks;

import android.net.Uri;
import b.b;
import b.f;
import b.g;
import java.util.Map;

class FacebookAppLinkResolver$1
  implements f<Map<Uri, b>, b>
{
  FacebookAppLinkResolver$1(FacebookAppLinkResolver paramFacebookAppLinkResolver, Uri paramUri) {}
  
  public b then(g<Map<Uri, b>> paramg)
  {
    return (b)((Map)paramg.d()).get(val$uri);
  }
}

/* Location:
 * Qualified Name:     com.facebook.applinks.FacebookAppLinkResolver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */