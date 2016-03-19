package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator()
  {
    public final MediaDescriptionCompat createFromParcel(Parcel paramAnonymousParcel)
    {
      if (Build.VERSION.SDK_INT < 21) {
        return new MediaDescriptionCompat(paramAnonymousParcel, null);
      }
      return MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(paramAnonymousParcel));
    }
    
    public final MediaDescriptionCompat[] newArray(int paramAnonymousInt)
    {
      return new MediaDescriptionCompat[paramAnonymousInt];
    }
  };
  private final CharSequence mDescription;
  private Object mDescriptionObj;
  private final Bundle mExtras;
  private final Bitmap mIcon;
  private final Uri mIconUri;
  private final String mMediaId;
  private final Uri mMediaUri;
  private final CharSequence mSubtitle;
  private final CharSequence mTitle;
  
  private MediaDescriptionCompat(Parcel paramParcel)
  {
    mMediaId = paramParcel.readString();
    mTitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mSubtitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mDescription = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mIcon = ((Bitmap)paramParcel.readParcelable(null));
    mIconUri = ((Uri)paramParcel.readParcelable(null));
    mExtras = paramParcel.readBundle();
    mMediaUri = ((Uri)paramParcel.readParcelable(null));
  }
  
  private MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    mMediaId = paramString;
    mTitle = paramCharSequence1;
    mSubtitle = paramCharSequence2;
    mDescription = paramCharSequence3;
    mIcon = paramBitmap;
    mIconUri = paramUri1;
    mExtras = paramBundle;
    mMediaUri = paramUri2;
  }
  
  public static MediaDescriptionCompat fromMediaDescription(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    Object localObject = new Builder();
    ((Builder)localObject).setMediaId(MediaDescriptionCompatApi21.getMediaId(paramObject));
    ((Builder)localObject).setTitle(MediaDescriptionCompatApi21.getTitle(paramObject));
    ((Builder)localObject).setSubtitle(MediaDescriptionCompatApi21.getSubtitle(paramObject));
    ((Builder)localObject).setDescription(MediaDescriptionCompatApi21.getDescription(paramObject));
    ((Builder)localObject).setIconBitmap(MediaDescriptionCompatApi21.getIconBitmap(paramObject));
    ((Builder)localObject).setIconUri(MediaDescriptionCompatApi21.getIconUri(paramObject));
    ((Builder)localObject).setExtras(MediaDescriptionCompatApi21.getExtras(paramObject));
    if (Build.VERSION.SDK_INT >= 23) {
      ((Builder)localObject).setMediaUri(MediaDescriptionCompatApi23.getMediaUri(paramObject));
    }
    localObject = ((Builder)localObject).build();
    mDescriptionObj = paramObject;
    return (MediaDescriptionCompat)localObject;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final CharSequence getDescription()
  {
    return mDescription;
  }
  
  public final Bundle getExtras()
  {
    return mExtras;
  }
  
  public final Bitmap getIconBitmap()
  {
    return mIcon;
  }
  
  public final Uri getIconUri()
  {
    return mIconUri;
  }
  
  public final Object getMediaDescription()
  {
    if ((mDescriptionObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mDescriptionObj;
    }
    Object localObject = MediaDescriptionCompatApi21.Builder.newInstance();
    MediaDescriptionCompatApi21.Builder.setMediaId(localObject, mMediaId);
    MediaDescriptionCompatApi21.Builder.setTitle(localObject, mTitle);
    MediaDescriptionCompatApi21.Builder.setSubtitle(localObject, mSubtitle);
    MediaDescriptionCompatApi21.Builder.setDescription(localObject, mDescription);
    MediaDescriptionCompatApi21.Builder.setIconBitmap(localObject, mIcon);
    MediaDescriptionCompatApi21.Builder.setIconUri(localObject, mIconUri);
    MediaDescriptionCompatApi21.Builder.setExtras(localObject, mExtras);
    if (Build.VERSION.SDK_INT >= 23) {
      MediaDescriptionCompatApi23.Builder.setMediaUri(localObject, mMediaUri);
    }
    mDescriptionObj = MediaDescriptionCompatApi21.Builder.build(localObject);
    return mDescriptionObj;
  }
  
  public final String getMediaId()
  {
    return mMediaId;
  }
  
  public final Uri getMediaUri()
  {
    return mMediaUri;
  }
  
  public final CharSequence getSubtitle()
  {
    return mSubtitle;
  }
  
  public final CharSequence getTitle()
  {
    return mTitle;
  }
  
  public final String toString()
  {
    return mTitle + ", " + mSubtitle + ", " + mDescription;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(mMediaId);
      TextUtils.writeToParcel(mTitle, paramParcel, paramInt);
      TextUtils.writeToParcel(mSubtitle, paramParcel, paramInt);
      TextUtils.writeToParcel(mDescription, paramParcel, paramInt);
      paramParcel.writeParcelable(mIcon, paramInt);
      paramParcel.writeParcelable(mIconUri, paramInt);
      paramParcel.writeBundle(mExtras);
      return;
    }
    MediaDescriptionCompatApi21.writeToParcel(getMediaDescription(), paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private CharSequence mDescription;
    private Bundle mExtras;
    private Bitmap mIcon;
    private Uri mIconUri;
    private String mMediaId;
    private Uri mMediaUri;
    private CharSequence mSubtitle;
    private CharSequence mTitle;
    
    public final MediaDescriptionCompat build()
    {
      return new MediaDescriptionCompat(mMediaId, mTitle, mSubtitle, mDescription, mIcon, mIconUri, mExtras, mMediaUri, null);
    }
    
    public final Builder setDescription(CharSequence paramCharSequence)
    {
      mDescription = paramCharSequence;
      return this;
    }
    
    public final Builder setExtras(Bundle paramBundle)
    {
      mExtras = paramBundle;
      return this;
    }
    
    public final Builder setIconBitmap(Bitmap paramBitmap)
    {
      mIcon = paramBitmap;
      return this;
    }
    
    public final Builder setIconUri(Uri paramUri)
    {
      mIconUri = paramUri;
      return this;
    }
    
    public final Builder setMediaId(String paramString)
    {
      mMediaId = paramString;
      return this;
    }
    
    public final Builder setMediaUri(Uri paramUri)
    {
      mMediaUri = paramUri;
      return this;
    }
    
    public final Builder setSubtitle(CharSequence paramCharSequence)
    {
      mSubtitle = paramCharSequence;
      return this;
    }
    
    public final Builder setTitle(CharSequence paramCharSequence)
    {
      mTitle = paramCharSequence;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */