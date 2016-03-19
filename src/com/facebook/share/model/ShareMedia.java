package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;

public abstract class ShareMedia
  implements ShareModel
{
  private final Bundle params;
  
  ShareMedia(Parcel paramParcel)
  {
    params = paramParcel.readBundle();
  }
  
  protected ShareMedia(Builder paramBuilder)
  {
    params = new Bundle(params);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bundle getParameters()
  {
    return new Bundle(params);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(params);
  }
  
  public static abstract class Builder<M extends ShareMedia, B extends Builder>
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
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareMedia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */