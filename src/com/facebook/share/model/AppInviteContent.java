package com.facebook.share.model;

import android.os.Parcel;

public final class AppInviteContent
  implements ShareModel
{
  private final String applinkUrl;
  private final String previewImageUrl;
  
  AppInviteContent(Parcel paramParcel)
  {
    applinkUrl = paramParcel.readString();
    previewImageUrl = paramParcel.readString();
  }
  
  private AppInviteContent(Builder paramBuilder)
  {
    applinkUrl = applinkUrl;
    previewImageUrl = previewImageUrl;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getApplinkUrl()
  {
    return applinkUrl;
  }
  
  public final String getPreviewImageUrl()
  {
    return previewImageUrl;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(applinkUrl);
    paramParcel.writeString(previewImageUrl);
  }
  
  public static class Builder
    implements ShareModelBuilder<AppInviteContent, Builder>
  {
    private String applinkUrl;
    private String previewImageUrl;
    
    public AppInviteContent build()
    {
      return new AppInviteContent(this, null);
    }
    
    public Builder readFrom(Parcel paramParcel)
    {
      return readFrom((AppInviteContent)paramParcel.readParcelable(AppInviteContent.class.getClassLoader()));
    }
    
    public Builder readFrom(AppInviteContent paramAppInviteContent)
    {
      if (paramAppInviteContent == null) {
        return this;
      }
      return setApplinkUrl(paramAppInviteContent.getApplinkUrl()).setPreviewImageUrl(paramAppInviteContent.getPreviewImageUrl());
    }
    
    public Builder setApplinkUrl(String paramString)
    {
      applinkUrl = paramString;
      return this;
    }
    
    public Builder setPreviewImageUrl(String paramString)
    {
      previewImageUrl = paramString;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.AppInviteContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */