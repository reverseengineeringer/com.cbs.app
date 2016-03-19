package com.facebook.share.model;

import android.os.Parcel;

public final class ShareOpenGraphContent$Builder
  extends ShareContent.Builder<ShareOpenGraphContent, Builder>
{
  private ShareOpenGraphAction action;
  private String previewPropertyName;
  
  public final ShareOpenGraphContent build()
  {
    return new ShareOpenGraphContent(this, null);
  }
  
  public final Builder readFrom(Parcel paramParcel)
  {
    return readFrom((ShareOpenGraphContent)paramParcel.readParcelable(ShareOpenGraphContent.class.getClassLoader()));
  }
  
  public final Builder readFrom(ShareOpenGraphContent paramShareOpenGraphContent)
  {
    if (paramShareOpenGraphContent == null) {
      return this;
    }
    return ((Builder)super.readFrom(paramShareOpenGraphContent)).setAction(paramShareOpenGraphContent.getAction()).setPreviewPropertyName(paramShareOpenGraphContent.getPreviewPropertyName());
  }
  
  public final Builder setAction(ShareOpenGraphAction paramShareOpenGraphAction)
  {
    if (paramShareOpenGraphAction == null) {}
    for (paramShareOpenGraphAction = null;; paramShareOpenGraphAction = new ShareOpenGraphAction.Builder().readFrom(paramShareOpenGraphAction).build())
    {
      action = paramShareOpenGraphAction;
      return this;
    }
  }
  
  public final Builder setPreviewPropertyName(String paramString)
  {
    previewPropertyName = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphContent.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */