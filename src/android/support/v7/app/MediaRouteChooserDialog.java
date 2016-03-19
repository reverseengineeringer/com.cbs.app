package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R.attr;
import android.support.v7.mediarouter.R.id;
import android.support.v7.mediarouter.R.layout;
import android.support.v7.mediarouter.R.string;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MediaRouteChooserDialog
  extends Dialog
{
  private RouteAdapter mAdapter;
  private boolean mAttachedToWindow;
  private final MediaRouterCallback mCallback = new MediaRouterCallback(null);
  private ListView mListView;
  private final MediaRouter mRouter = MediaRouter.getInstance(getContext());
  private ArrayList<MediaRouter.RouteInfo> mRoutes;
  private MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;
  
  public MediaRouteChooserDialog(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public MediaRouteChooserDialog(Context paramContext, int paramInt)
  {
    super(MediaRouterThemeHelper.createThemedContext(paramContext), paramInt);
  }
  
  public MediaRouteSelector getRouteSelector()
  {
    return mSelector;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mAttachedToWindow = true;
    mRouter.addCallback(mSelector, mCallback, 1);
    refreshRoutes();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(3);
    setContentView(R.layout.mr_media_route_chooser_dialog);
    setTitle(R.string.mr_media_route_chooser_title);
    getWindow().setFeatureDrawableResource(3, MediaRouterThemeHelper.getThemeResource(getContext(), R.attr.mediaRouteOffDrawable));
    mRoutes = new ArrayList();
    mAdapter = new RouteAdapter(getContext(), mRoutes);
    mListView = ((ListView)findViewById(R.id.media_route_list));
    mListView.setAdapter(mAdapter);
    mListView.setOnItemClickListener(mAdapter);
    mListView.setEmptyView(findViewById(16908292));
  }
  
  public void onDetachedFromWindow()
  {
    mAttachedToWindow = false;
    mRouter.removeCallback(mCallback);
    super.onDetachedFromWindow();
  }
  
  public boolean onFilterRoute(MediaRouter.RouteInfo paramRouteInfo)
  {
    return (!paramRouteInfo.isDefault()) && (paramRouteInfo.isEnabled()) && (paramRouteInfo.matchesSelector(mSelector));
  }
  
  public void onFilterRoutes(List<MediaRouter.RouteInfo> paramList)
  {
    int i = paramList.size();
    for (;;)
    {
      int j = i - 1;
      if (i > 0)
      {
        if (!onFilterRoute((MediaRouter.RouteInfo)paramList.get(j)))
        {
          paramList.remove(j);
          i = j;
        }
      }
      else {
        return;
      }
      i = j;
    }
  }
  
  public void refreshRoutes()
  {
    if (mAttachedToWindow)
    {
      mRoutes.clear();
      mRoutes.addAll(mRouter.getRoutes());
      onFilterRoutes(mRoutes);
      Collections.sort(mRoutes, RouteComparator.sInstance);
      mAdapter.notifyDataSetChanged();
    }
  }
  
  public void setRouteSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    if (!mSelector.equals(paramMediaRouteSelector))
    {
      mSelector = paramMediaRouteSelector;
      if (mAttachedToWindow)
      {
        mRouter.removeCallback(mCallback);
        mRouter.addCallback(paramMediaRouteSelector, mCallback, 1);
      }
      refreshRoutes();
    }
  }
  
  private final class MediaRouterCallback
    extends MediaRouter.Callback
  {
    private MediaRouterCallback() {}
    
    public final void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoutes();
    }
    
    public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoutes();
    }
    
    public final void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      refreshRoutes();
    }
    
    public final void onRouteSelected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      dismiss();
    }
  }
  
  private final class RouteAdapter
    extends ArrayAdapter<MediaRouter.RouteInfo>
    implements AdapterView.OnItemClickListener
  {
    private final LayoutInflater mInflater;
    
    public RouteAdapter(List<MediaRouter.RouteInfo> paramList)
    {
      super(0, localList);
      mInflater = LayoutInflater.from(paramList);
    }
    
    public final boolean areAllItemsEnabled()
    {
      return false;
    }
    
    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null) {
        localView = mInflater.inflate(R.layout.mr_media_route_list_item, paramViewGroup, false);
      }
      paramView = (MediaRouter.RouteInfo)getItem(paramInt);
      Object localObject = (TextView)localView.findViewById(16908308);
      paramViewGroup = (TextView)localView.findViewById(16908309);
      ((TextView)localObject).setText(paramView.getName());
      localObject = paramView.getDescription();
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        paramViewGroup.setVisibility(8);
        paramViewGroup.setText("");
      }
      for (;;)
      {
        localView.setEnabled(paramView.isEnabled());
        return localView;
        paramViewGroup.setVisibility(0);
        paramViewGroup.setText((CharSequence)localObject);
      }
    }
    
    public final boolean isEnabled(int paramInt)
    {
      return ((MediaRouter.RouteInfo)getItem(paramInt)).isEnabled();
    }
    
    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramAdapterView = (MediaRouter.RouteInfo)getItem(paramInt);
      if (paramAdapterView.isEnabled())
      {
        paramAdapterView.select();
        dismiss();
      }
    }
  }
  
  private static final class RouteComparator
    implements Comparator<MediaRouter.RouteInfo>
  {
    public static final RouteComparator sInstance = new RouteComparator();
    
    public final int compare(MediaRouter.RouteInfo paramRouteInfo1, MediaRouter.RouteInfo paramRouteInfo2)
    {
      return paramRouteInfo1.getName().compareTo(paramRouteInfo2.getName());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteChooserDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */