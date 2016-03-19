package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.support.v7.mediarouter.R.string;
import java.util.ArrayList;

class SystemMediaRouteProvider$LegacyImpl
  extends SystemMediaRouteProvider
{
  private static final ArrayList<IntentFilter> CONTROL_FILTERS;
  private static final int PLAYBACK_STREAM = 3;
  private final AudioManager mAudioManager;
  private int mLastReportedVolume = -1;
  private final VolumeChangeReceiver mVolumeChangeReceiver;
  
  static
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
    localIntentFilter.addCategory("android.media.intent.category.LIVE_VIDEO");
    ArrayList localArrayList = new ArrayList();
    CONTROL_FILTERS = localArrayList;
    localArrayList.add(localIntentFilter);
  }
  
  public SystemMediaRouteProvider$LegacyImpl(Context paramContext)
  {
    super(paramContext);
    mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
    mVolumeChangeReceiver = new VolumeChangeReceiver();
    paramContext.registerReceiver(mVolumeChangeReceiver, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
    publishRoutes();
  }
  
  private void publishRoutes()
  {
    Object localObject = getContext().getResources();
    int i = mAudioManager.getStreamMaxVolume(3);
    mLastReportedVolume = mAudioManager.getStreamVolume(3);
    localObject = new MediaRouteDescriptor.Builder("DEFAULT_ROUTE", ((Resources)localObject).getString(R.string.mr_system_route_name)).addControlFilters(CONTROL_FILTERS).setPlaybackStream(3).setPlaybackType(0).setVolumeHandling(1).setVolumeMax(i).setVolume(mLastReportedVolume).build();
    setDescriptor(new MediaRouteProviderDescriptor.Builder().addRoute((MediaRouteDescriptor)localObject).build());
  }
  
  public MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    if (paramString.equals("DEFAULT_ROUTE")) {
      return new DefaultRouteController();
    }
    return null;
  }
  
  final class DefaultRouteController
    extends MediaRouteProvider.RouteController
  {
    DefaultRouteController() {}
    
    public final void onSetVolume(int paramInt)
    {
      mAudioManager.setStreamVolume(3, paramInt, 0);
      SystemMediaRouteProvider.LegacyImpl.this.publishRoutes();
    }
    
    public final void onUpdateVolume(int paramInt)
    {
      int i = mAudioManager.getStreamVolume(3);
      if (Math.min(mAudioManager.getStreamMaxVolume(3), Math.max(0, i + paramInt)) != i) {
        mAudioManager.setStreamVolume(3, i, 0);
      }
      SystemMediaRouteProvider.LegacyImpl.this.publishRoutes();
    }
  }
  
  final class VolumeChangeReceiver
    extends BroadcastReceiver
  {
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    
    VolumeChangeReceiver() {}
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((paramIntent.getAction().equals("android.media.VOLUME_CHANGED_ACTION")) && (paramIntent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3))
      {
        int i = paramIntent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1);
        if ((i >= 0) && (i != mLastReportedVolume)) {
          SystemMediaRouteProvider.LegacyImpl.this.publishRoutes();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.LegacyImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */