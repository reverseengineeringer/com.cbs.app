package android.support.v7.app;

import android.content.Context;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R.layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

final class MediaRouteChooserDialog$RouteAdapter
  extends ArrayAdapter<MediaRouter.RouteInfo>
  implements AdapterView.OnItemClickListener
{
  private final LayoutInflater mInflater;
  
  public MediaRouteChooserDialog$RouteAdapter(Context paramContext, List<MediaRouter.RouteInfo> paramList)
  {
    super(paramList, 0, localList);
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
      this$0.dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteChooserDialog.RouteAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */