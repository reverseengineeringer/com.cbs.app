package android.support.v4.media;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class RatingCompat
  implements Parcelable
{
  public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator()
  {
    public final RatingCompat createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RatingCompat(paramAnonymousParcel.readInt(), paramAnonymousParcel.readFloat(), null);
    }
    
    public final RatingCompat[] newArray(int paramAnonymousInt)
    {
      return new RatingCompat[paramAnonymousInt];
    }
  };
  public static final int RATING_3_STARS = 3;
  public static final int RATING_4_STARS = 4;
  public static final int RATING_5_STARS = 5;
  public static final int RATING_HEART = 1;
  public static final int RATING_NONE = 0;
  private static final float RATING_NOT_RATED = -1.0F;
  public static final int RATING_PERCENTAGE = 6;
  public static final int RATING_THUMB_UP_DOWN = 2;
  private static final String TAG = "Rating";
  private Object mRatingObj;
  private final int mRatingStyle;
  private final float mRatingValue;
  
  private RatingCompat(int paramInt, float paramFloat)
  {
    mRatingStyle = paramInt;
    mRatingValue = paramFloat;
  }
  
  public static RatingCompat fromRating(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    int i = RatingCompatApi21.getRatingStyle(paramObject);
    RatingCompat localRatingCompat;
    if (RatingCompatApi21.isRated(paramObject)) {
      switch (i)
      {
      default: 
        return null;
      case 1: 
        localRatingCompat = newHeartRating(RatingCompatApi21.hasHeart(paramObject));
      }
    }
    for (;;)
    {
      mRatingObj = paramObject;
      return localRatingCompat;
      localRatingCompat = newThumbRating(RatingCompatApi21.isThumbUp(paramObject));
      continue;
      localRatingCompat = newStarRating(i, RatingCompatApi21.getStarRating(paramObject));
      continue;
      localRatingCompat = newPercentageRating(RatingCompatApi21.getPercentRating(paramObject));
      continue;
      localRatingCompat = newUnratedRating(i);
    }
  }
  
  public static RatingCompat newHeartRating(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F) {
      return new RatingCompat(1, f);
    }
  }
  
  public static RatingCompat newPercentageRating(float paramFloat)
  {
    if ((paramFloat < 0.0F) || (paramFloat > 100.0F))
    {
      Log.e("Rating", "Invalid percentage-based rating value");
      return null;
    }
    return new RatingCompat(6, paramFloat);
  }
  
  public static RatingCompat newStarRating(int paramInt, float paramFloat)
  {
    float f;
    switch (paramInt)
    {
    default: 
      Log.e("Rating", "Invalid rating style (" + paramInt + ") for a star rating");
      return null;
    case 3: 
      f = 3.0F;
    }
    while ((paramFloat < 0.0F) || (paramFloat > f))
    {
      Log.e("Rating", "Trying to set out of range star-based rating");
      return null;
      f = 4.0F;
      continue;
      f = 5.0F;
    }
    return new RatingCompat(paramInt, paramFloat);
  }
  
  public static RatingCompat newThumbRating(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (float f = 1.0F;; f = 0.0F) {
      return new RatingCompat(2, f);
    }
  }
  
  public static RatingCompat newUnratedRating(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new RatingCompat(paramInt, -1.0F);
  }
  
  public final int describeContents()
  {
    return mRatingStyle;
  }
  
  public final float getPercentRating()
  {
    if ((mRatingStyle != 6) || (!isRated())) {
      return -1.0F;
    }
    return mRatingValue;
  }
  
  public final Object getRating()
  {
    if ((mRatingObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mRatingObj;
    }
    if (isRated()) {
      switch (mRatingStyle)
      {
      default: 
        return null;
      case 1: 
        mRatingObj = RatingCompatApi21.newHeartRating(hasHeart());
      }
    }
    for (;;)
    {
      return mRatingObj;
      mRatingObj = RatingCompatApi21.newThumbRating(isThumbUp());
      continue;
      mRatingObj = RatingCompatApi21.newStarRating(mRatingStyle, getStarRating());
      continue;
      mRatingObj = RatingCompatApi21.newPercentageRating(getPercentRating());
      break;
      mRatingObj = RatingCompatApi21.newUnratedRating(mRatingStyle);
    }
  }
  
  public final int getRatingStyle()
  {
    return mRatingStyle;
  }
  
  public final float getStarRating()
  {
    switch (mRatingStyle)
    {
    }
    do
    {
      return -1.0F;
    } while (!isRated());
    return mRatingValue;
  }
  
  public final boolean hasHeart()
  {
    if (mRatingStyle != 1) {}
    while (mRatingValue != 1.0F) {
      return false;
    }
    return true;
  }
  
  public final boolean isRated()
  {
    return mRatingValue >= 0.0F;
  }
  
  public final boolean isThumbUp()
  {
    if (mRatingStyle != 2) {}
    while (mRatingValue != 1.0F) {
      return false;
    }
    return true;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Rating:style=").append(mRatingStyle).append(" rating=");
    if (mRatingValue < 0.0F) {}
    for (String str = "unrated";; str = String.valueOf(mRatingValue)) {
      return str;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mRatingStyle);
    paramParcel.writeFloat(mRatingValue);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface StarStyle {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Style {}
}

/* Location:
 * Qualified Name:     android.support.v4.media.RatingCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */