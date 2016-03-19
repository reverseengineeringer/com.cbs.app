package com.facebook.share.model;

import android.os.Bundle;

public abstract class ShareMedia$Builder<M extends ShareMedia, B extends Builder>
  implements ShareModelBuilder<M, B>
{
  private Bundle params = new Bundle();
  
  public B readFrom(M paramM)
  {
    if (paramM == null) {
      return this;
    }
    return setParameters(paramM.getParameters());
  }
  
  public B setParameter(String paramString1, String paramString2)
  {
    params.putString(paramString1, paramString2);
    return this;
  }
  
  public B setParameters(Bundle paramBundle)
  {
    params.putAll(paramBundle);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareMedia.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */