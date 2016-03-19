package android.support.v7.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteProviderDescriptor
{
  private static final String KEY_ROUTES = "routes";
  private final Bundle mBundle;
  private List<MediaRouteDescriptor> mRoutes;
  
  private MediaRouteProviderDescriptor(Bundle paramBundle, List<MediaRouteDescriptor> paramList)
  {
    mBundle = paramBundle;
    mRoutes = paramList;
  }
  
  private void ensureRoutes()
  {
    ArrayList localArrayList;
    if (mRoutes == null)
    {
      localArrayList = mBundle.getParcelableArrayList("routes");
      if ((localArrayList != null) && (!localArrayList.isEmpty())) {
        break label36;
      }
      mRoutes = Collections.emptyList();
    }
    for (;;)
    {
      return;
      label36:
      int j = localArrayList.size();
      mRoutes = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        mRoutes.add(MediaRouteDescriptor.fromBundle((Bundle)localArrayList.get(i)));
        i += 1;
      }
    }
  }
  
  public static MediaRouteProviderDescriptor fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteProviderDescriptor(paramBundle, null);
    }
    return null;
  }
  
  public final Bundle asBundle()
  {
    return mBundle;
  }
  
  public final List<MediaRouteDescriptor> getRoutes()
  {
    ensureRoutes();
    return mRoutes;
  }
  
  public final boolean isValid()
  {
    ensureRoutes();
    int j = mRoutes.size();
    int i = 0;
    while (i < j)
    {
      MediaRouteDescriptor localMediaRouteDescriptor = (MediaRouteDescriptor)mRoutes.get(i);
      if ((localMediaRouteDescriptor == null) || (!localMediaRouteDescriptor.isValid())) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaRouteProviderDescriptor{ ");
    localStringBuilder.append("routes=").append(Arrays.toString(getRoutes().toArray()));
    localStringBuilder.append(", isValid=").append(isValid());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
  
  public static final class Builder
  {
    private final Bundle mBundle;
    private ArrayList<MediaRouteDescriptor> mRoutes;
    
    public Builder()
    {
      mBundle = new Bundle();
    }
    
    public Builder(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
    {
      if (paramMediaRouteProviderDescriptor == null) {
        throw new IllegalArgumentException("descriptor must not be null");
      }
      mBundle = new Bundle(mBundle);
      paramMediaRouteProviderDescriptor.ensureRoutes();
      if (!mRoutes.isEmpty()) {
        mRoutes = new ArrayList(mRoutes);
      }
    }
    
    public final Builder addRoute(MediaRouteDescriptor paramMediaRouteDescriptor)
    {
      if (paramMediaRouteDescriptor == null) {
        throw new IllegalArgumentException("route must not be null");
      }
      if (mRoutes == null) {
        mRoutes = new ArrayList();
      }
      while (!mRoutes.contains(paramMediaRouteDescriptor))
      {
        mRoutes.add(paramMediaRouteDescriptor);
        return this;
      }
      throw new IllegalArgumentException("route descriptor already added");
    }
    
    public final Builder addRoutes(Collection<MediaRouteDescriptor> paramCollection)
    {
      if (paramCollection == null) {
        throw new IllegalArgumentException("routes must not be null");
      }
      if (!paramCollection.isEmpty())
      {
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext()) {
          addRoute((MediaRouteDescriptor)paramCollection.next());
        }
      }
      return this;
    }
    
    public final MediaRouteProviderDescriptor build()
    {
      if (mRoutes != null)
      {
        int j = mRoutes.size();
        ArrayList localArrayList = new ArrayList(j);
        int i = 0;
        while (i < j)
        {
          localArrayList.add(((MediaRouteDescriptor)mRoutes.get(i)).asBundle());
          i += 1;
        }
        mBundle.putParcelableArrayList("routes", localArrayList);
      }
      return new MediaRouteProviderDescriptor(mBundle, mRoutes, null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */