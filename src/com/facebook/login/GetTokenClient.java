package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.PlatformServiceClient;

final class GetTokenClient
  extends PlatformServiceClient
{
  GetTokenClient(Context paramContext, String paramString)
  {
    super(paramContext, 65536, 65537, 20121101, paramString);
  }
  
  protected final void populateRequestBundle(Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.facebook.login.GetTokenClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */