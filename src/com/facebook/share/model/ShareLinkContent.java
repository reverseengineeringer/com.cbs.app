package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ShareLinkContent
  extends ShareContent<ShareLinkContent, Builder>
{
  public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator()
  {
    public final ShareLinkContent createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ShareLinkContent(paramAnonymousParcel);
    }
    
    public final ShareLinkContent[] newArray(int paramAnonymousInt)
    {
      return new ShareLinkContent[paramAnonymousInt];
    }
  };
  private final String contentDescription;
  private final String contentTitle;
  private final Uri imageUrl;
  
  ShareLinkContent(Parcel paramParcel)
  {
    super(paramParcel);
    contentDescription = paramParcel.readString();
    contentTitle = paramParcel.readString();
    imageUrl = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
  }
  
  private ShareLinkContent(Builder paramBuilder)
  {
    super(paramBuilder);
    contentDescription = contentDescription;
    contentTitle = contentTitle;
    imageUrl = imageUrl;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getContentDescription()
  {
    return contentDescription;
  }
  
  public final String getContentTitle()
  {
    return contentTitle;
  }
  
  public final Uri getImageUrl()
  {
    return imageUrl;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(contentDescription);
    paramParcel.writeString(contentTitle);
    paramParcel.writeParcelable(imageUrl, 0);
  }
  
  public static final class Builder
    extends ShareContent.Builder<ShareLinkContent, Builder>
  {
    private String contentDescription;
    private String contentTitle;
    private Uri imageUrl;
    
    public final ShareLinkContent build()
    {
      return new ShareLinkContent(this, null);
    }
    
    public final Builder readFrom(Parcel paramParcel)
    {
      return readFrom((ShareLinkContent)paramParcel.readParcelable(ShareLinkContent.class.getClassLoader()));
    }
    
    public final Builder readFrom(ShareLinkContent paramShareLinkContent)
    {
      if (paramShareLinkContent == null) {
        return this;
      }
      return ((Builder)super.readFrom(paramShareLinkContent)).setContentDescription(paramShareLinkContent.getContentDescription()).setImageUrl(paramShareLinkContent.getImageUrl()).setContentTitle(paramShareLinkContent.getContentTitle());
    }
    
    public final Builder setContentDescription(String paramString)
    {
      contentDescription = paramString;
      return this;
    }
    
    public final Builder setContentTitle(String paramString)
    {
      contentTitle = paramString;
      return this;
    }
    
    public final Builder setImageUrl(Uri paramUri)
    {
      imageUrl = paramUri;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareLinkContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */