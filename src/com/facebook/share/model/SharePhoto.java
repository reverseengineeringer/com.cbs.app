package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class SharePhoto
  extends ShareMedia
{
  public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator()
  {
    public final SharePhoto createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SharePhoto(paramAnonymousParcel);
    }
    
    public final SharePhoto[] newArray(int paramAnonymousInt)
    {
      return new SharePhoto[paramAnonymousInt];
    }
  };
  private final Bitmap bitmap;
  private final String caption;
  private final Uri imageUrl;
  private final boolean userGenerated;
  
  SharePhoto(Parcel paramParcel)
  {
    super(paramParcel);
    bitmap = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
    imageUrl = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      userGenerated = bool;
      caption = paramParcel.readString();
      return;
    }
  }
  
  private SharePhoto(Builder paramBuilder)
  {
    super(paramBuilder);
    bitmap = bitmap;
    imageUrl = imageUrl;
    userGenerated = userGenerated;
    caption = caption;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Bitmap getBitmap()
  {
    return bitmap;
  }
  
  public final String getCaption()
  {
    return caption;
  }
  
  public final Uri getImageUrl()
  {
    return imageUrl;
  }
  
  public final boolean getUserGenerated()
  {
    return userGenerated;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 0;
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(bitmap, 0);
    paramParcel.writeParcelable(imageUrl, 0);
    paramInt = i;
    if (userGenerated) {
      paramInt = 1;
    }
    paramParcel.writeByte((byte)paramInt);
    paramParcel.writeString(caption);
  }
  
  public static final class Builder
    extends ShareMedia.Builder<SharePhoto, Builder>
  {
    private Bitmap bitmap;
    private String caption;
    private Uri imageUrl;
    private boolean userGenerated;
    
    public static List<SharePhoto> readListFrom(Parcel paramParcel)
    {
      ArrayList localArrayList = new ArrayList();
      paramParcel.readTypedList(localArrayList, SharePhoto.CREATOR);
      return localArrayList;
    }
    
    public static void writeListTo(Parcel paramParcel, List<SharePhoto> paramList)
    {
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add((SharePhoto)paramList.next());
      }
      paramParcel.writeTypedList(localArrayList);
    }
    
    public final SharePhoto build()
    {
      return new SharePhoto(this, null);
    }
    
    final Bitmap getBitmap()
    {
      return bitmap;
    }
    
    final Uri getImageUrl()
    {
      return imageUrl;
    }
    
    public final Builder readFrom(Parcel paramParcel)
    {
      return readFrom((SharePhoto)paramParcel.readParcelable(SharePhoto.class.getClassLoader()));
    }
    
    public final Builder readFrom(SharePhoto paramSharePhoto)
    {
      if (paramSharePhoto == null) {
        return this;
      }
      return ((Builder)super.readFrom(paramSharePhoto)).setBitmap(paramSharePhoto.getBitmap()).setImageUrl(paramSharePhoto.getImageUrl()).setUserGenerated(paramSharePhoto.getUserGenerated()).setCaption(paramSharePhoto.getCaption());
    }
    
    public final Builder setBitmap(Bitmap paramBitmap)
    {
      bitmap = paramBitmap;
      return this;
    }
    
    public final Builder setCaption(String paramString)
    {
      caption = paramString;
      return this;
    }
    
    public final Builder setImageUrl(Uri paramUri)
    {
      imageUrl = paramUri;
      return this;
    }
    
    public final Builder setUserGenerated(boolean paramBoolean)
    {
      userGenerated = paramBoolean;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.SharePhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */