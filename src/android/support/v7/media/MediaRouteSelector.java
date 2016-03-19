package android.support.v7.media;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteSelector
{
  public static final MediaRouteSelector EMPTY = new MediaRouteSelector(new Bundle(), null);
  private static final String KEY_CONTROL_CATEGORIES = "controlCategories";
  private final Bundle mBundle;
  private List<String> mControlCategories;
  
  private MediaRouteSelector(Bundle paramBundle, List<String> paramList)
  {
    mBundle = paramBundle;
    mControlCategories = paramList;
  }
  
  private void ensureControlCategories()
  {
    if (mControlCategories == null)
    {
      mControlCategories = mBundle.getStringArrayList("controlCategories");
      if ((mControlCategories == null) || (mControlCategories.isEmpty())) {
        mControlCategories = Collections.emptyList();
      }
    }
  }
  
  public static MediaRouteSelector fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteSelector(paramBundle, null);
    }
    return null;
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final boolean contains(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector != null)
    {
      ensureControlCategories();
      paramMediaRouteSelector.ensureControlCategories();
      return mControlCategories.containsAll(mControlCategories);
    }
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof MediaRouteSelector))
    {
      paramObject = (MediaRouteSelector)paramObject;
      ensureControlCategories();
      ((MediaRouteSelector)paramObject).ensureControlCategories();
      return mControlCategories.equals(mControlCategories);
    }
    return false;
  }
  
  public final List<String> getControlCategories()
  {
    ensureControlCategories();
    return mControlCategories;
  }
  
  public final boolean hasControlCategory(String paramString)
  {
    if (paramString != null)
    {
      ensureControlCategories();
      int j = mControlCategories.size();
      int i = 0;
      while (i < j)
      {
        if (((String)mControlCategories.get(i)).equals(paramString)) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  public final int hashCode()
  {
    ensureControlCategories();
    return mControlCategories.hashCode();
  }
  
  public final boolean isEmpty()
  {
    ensureControlCategories();
    return mControlCategories.isEmpty();
  }
  
  public final boolean isValid()
  {
    ensureControlCategories();
    return !mControlCategories.contains(null);
  }
  
  public final boolean matchesControlFilters(List<IntentFilter> paramList)
  {
    if (paramList != null)
    {
      ensureControlCategories();
      int k = mControlCategories.size();
      if (k != 0)
      {
        int m = paramList.size();
        int i = 0;
        while (i < m)
        {
          IntentFilter localIntentFilter = (IntentFilter)paramList.get(i);
          if (localIntentFilter != null)
          {
            int j = 0;
            while (j < k)
            {
              if (localIntentFilter.hasCategory((String)mControlCategories.get(j))) {
                return true;
              }
              j += 1;
            }
          }
          i += 1;
        }
      }
    }
    return false;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaRouteSelector{ ");
    localStringBuilder.append("controlCategories=").append(Arrays.toString(getControlCategories().toArray()));
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
  
  public static final class Builder
  {
    private ArrayList<String> mControlCategories;
    
    public Builder() {}
    
    public Builder(MediaRouteSelector paramMediaRouteSelector)
    {
      if (paramMediaRouteSelector == null) {
        throw new IllegalArgumentException("selector must not be null");
      }
      paramMediaRouteSelector.ensureControlCategories();
      if (!mControlCategories.isEmpty()) {
        mControlCategories = new ArrayList(mControlCategories);
      }
    }
    
    public final Builder addControlCategories(Collection<String> paramCollection)
    {
      if (paramCollection == null) {
        throw new IllegalArgumentException("categories must not be null");
      }
      if (!paramCollection.isEmpty())
      {
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext()) {
          addControlCategory((String)paramCollection.next());
        }
      }
      return this;
    }
    
    public final Builder addControlCategory(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("category must not be null");
      }
      if (mControlCategories == null) {
        mControlCategories = new ArrayList();
      }
      if (!mControlCategories.contains(paramString)) {
        mControlCategories.add(paramString);
      }
      return this;
    }
    
    public final Builder addSelector(MediaRouteSelector paramMediaRouteSelector)
    {
      if (paramMediaRouteSelector == null) {
        throw new IllegalArgumentException("selector must not be null");
      }
      addControlCategories(paramMediaRouteSelector.getControlCategories());
      return this;
    }
    
    public final MediaRouteSelector build()
    {
      if (mControlCategories == null) {
        return MediaRouteSelector.EMPTY;
      }
      Bundle localBundle = new Bundle();
      localBundle.putStringArrayList("controlCategories", mControlCategories);
      return new MediaRouteSelector(localBundle, mControlCategories, null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */