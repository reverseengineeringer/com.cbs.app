package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class SharePhoto$Builder
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

/* Location:
 * Qualified Name:     com.facebook.share.model.SharePhoto.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */