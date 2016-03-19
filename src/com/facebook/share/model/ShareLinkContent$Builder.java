package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;

public final class ShareLinkContent$Builder
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

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareLinkContent.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */