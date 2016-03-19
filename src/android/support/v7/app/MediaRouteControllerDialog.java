package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.IntentSender;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaControllerCompat.Callback;
import android.support.v4.media.session.MediaControllerCompat.TransportControls;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.mediarouter.R.attr;
import android.support.v7.mediarouter.R.id;
import android.support.v7.mediarouter.R.layout;
import android.support.v7.mediarouter.R.string;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class MediaRouteControllerDialog
  extends Dialog
{
  private static final String TAG = "MediaRouteControllerDialog";
  private static final int VOLUME_UPDATE_DELAY_MILLIS = 250;
  private ImageView mArtView;
  private boolean mAttachedToWindow;
  private final MediaRouterCallback mCallback;
  private View mControlView;
  private MediaControllerCallback mControllerCallback;
  private boolean mCreated;
  private MediaDescriptionCompat mDescription;
  private Button mDisconnectButton;
  private MediaControllerCompat mMediaController;
  private Drawable mMediaRouteConnectingDrawable;
  private Drawable mMediaRouteOnDrawable;
  private ImageButton mPlayPauseButton;
  private final MediaRouter.RouteInfo mRoute;
  private TextView mRouteNameView;
  private final MediaRouter mRouter;
  private ImageButton mSettingsButton;
  private PlaybackStateCompat mState;
  private Button mStopCastingButton;
  private TextView mSubtitleView;
  private TextView mTitleView;
  private View mTitlesWrapper;
  private boolean mVolumeControlEnabled = true;
  private LinearLayout mVolumeLayout;
  private SeekBar mVolumeSlider;
  private boolean mVolumeSliderTouched;
  
  public MediaRouteControllerDialog(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public MediaRouteControllerDialog(Context paramContext, int paramInt)
  {
    super(MediaRouterThemeHelper.createThemedContext(paramContext), paramInt);
    paramContext = getContext();
    mControllerCallback = new MediaControllerCallback(null);
    mRouter = MediaRouter.getInstance(paramContext);
    mCallback = new MediaRouterCallback(null);
    mRoute = mRouter.getSelectedRoute();
    setMediaSession(mRouter.getMediaSessionToken());
  }
  
  private Drawable getIconDrawable()
  {
    if (mRoute.isConnecting())
    {
      if (mMediaRouteConnectingDrawable == null) {
        mMediaRouteConnectingDrawable = MediaRouterThemeHelper.getThemeDrawable(getContext(), R.attr.mediaRouteConnectingDrawable);
      }
      return mMediaRouteConnectingDrawable;
    }
    if (mMediaRouteOnDrawable == null) {
      mMediaRouteOnDrawable = MediaRouterThemeHelper.getThemeDrawable(getContext(), R.attr.mediaRouteOnDrawable);
    }
    return mMediaRouteOnDrawable;
  }
  
  private boolean isVolumeControlAvailable()
  {
    return (mVolumeControlEnabled) && (mRoute.getVolumeHandling() == 1);
  }
  
  private void setMediaSession(MediaSessionCompat.Token paramToken)
  {
    Object localObject = null;
    if (mMediaController != null)
    {
      mMediaController.unregisterCallback(mControllerCallback);
      mMediaController = null;
    }
    if (paramToken == null) {}
    while (!mAttachedToWindow) {
      return;
    }
    try
    {
      mMediaController = new MediaControllerCompat(getContext(), paramToken);
      if (mMediaController != null) {
        mMediaController.registerCallback(mControllerCallback);
      }
      if (mMediaController == null)
      {
        paramToken = null;
        if (paramToken != null) {
          break label135;
        }
        paramToken = null;
        mDescription = paramToken;
        if (mMediaController != null) {
          break label143;
        }
        paramToken = (MediaSessionCompat.Token)localObject;
        mState = paramToken;
        update();
      }
    }
    catch (RemoteException paramToken)
    {
      for (;;)
      {
        Log.e("MediaRouteControllerDialog", "Error creating media controller in setMediaSession.", paramToken);
        continue;
        paramToken = mMediaController.getMetadata();
        continue;
        label135:
        paramToken = paramToken.getDescription();
        continue;
        label143:
        paramToken = mMediaController.getPlaybackState();
      }
    }
  }
  
  private boolean update()
  {
    if ((!mRoute.isSelected()) || (mRoute.isDefault())) {
      dismiss();
    }
    while (!mCreated) {
      return false;
    }
    updateVolume();
    mRouteNameView.setText(mRoute.getName());
    label87:
    label133:
    int i;
    label161:
    label190:
    label203:
    label235:
    int j;
    label253:
    int k;
    if (mRoute.canDisconnect())
    {
      mDisconnectButton.setVisibility(0);
      if (mRoute.getSettingsIntent() == null) {
        break label338;
      }
      mSettingsButton.setVisibility(0);
      if (mControlView == null)
      {
        if (mDescription == null) {
          break label458;
        }
        if (mDescription.getIconBitmap() == null) {
          break label350;
        }
        mArtView.setImageBitmap(mDescription.getIconBitmap());
        mArtView.setVisibility(0);
        CharSequence localCharSequence = mDescription.getTitle();
        if (TextUtils.isEmpty(localCharSequence)) {
          break label405;
        }
        mTitleView.setText(localCharSequence);
        i = 1;
        if (TextUtils.isEmpty(mDescription.getSubtitle())) {
          break label427;
        }
        mSubtitleView.setText(mDescription.getSubtitle());
        i = 1;
        if (i != 0) {
          break label447;
        }
        mTitlesWrapper.setVisibility(8);
        if (mState == null) {
          break label562;
        }
        if ((mState.getState() != 6) && (mState.getState() != 3)) {
          break label479;
        }
        i = 1;
        if ((mState.getActions() & 0x204) == 0L) {
          break label484;
        }
        j = 1;
        if ((mState.getActions() & 0x202) == 0L) {
          break label489;
        }
        k = 1;
        label271:
        if ((i == 0) || (k == 0)) {
          break label494;
        }
        mPlayPauseButton.setVisibility(0);
        mPlayPauseButton.setImageResource(MediaRouterThemeHelper.getThemeResource(getContext(), R.attr.mediaRoutePauseDrawable));
        mPlayPauseButton.setContentDescription(getContext().getResources().getText(R.string.mr_media_route_controller_pause));
      }
    }
    for (;;)
    {
      return true;
      mDisconnectButton.setVisibility(8);
      break;
      label338:
      mSettingsButton.setVisibility(8);
      break label87;
      label350:
      if (mDescription.getIconUri() != null)
      {
        mArtView.setImageURI(mDescription.getIconUri());
        mArtView.setVisibility(0);
        break label133;
      }
      mArtView.setImageDrawable(null);
      mArtView.setVisibility(8);
      break label133;
      label405:
      mTitleView.setText(null);
      mTitleView.setVisibility(8);
      i = 0;
      break label161;
      label427:
      mSubtitleView.setText(null);
      mSubtitleView.setVisibility(8);
      break label190;
      label447:
      mTitlesWrapper.setVisibility(0);
      break label203;
      label458:
      mArtView.setVisibility(8);
      mTitlesWrapper.setVisibility(8);
      break label203;
      label479:
      i = 0;
      break label235;
      label484:
      j = 0;
      break label253;
      label489:
      k = 0;
      break label271;
      label494:
      if ((i == 0) && (j != 0))
      {
        mPlayPauseButton.setVisibility(0);
        mPlayPauseButton.setImageResource(MediaRouterThemeHelper.getThemeResource(getContext(), R.attr.mediaRoutePlayDrawable));
        mPlayPauseButton.setContentDescription(getContext().getResources().getText(R.string.mr_media_route_controller_play));
      }
      else
      {
        mPlayPauseButton.setVisibility(8);
        continue;
        label562:
        mPlayPauseButton.setVisibility(8);
      }
    }
  }
  
  private void updateVolume()
  {
    if (!mVolumeSliderTouched)
    {
      if (isVolumeControlAvailable())
      {
        mVolumeLayout.setVisibility(0);
        mVolumeSlider.setMax(mRoute.getVolumeMax());
        mVolumeSlider.setProgress(mRoute.getVolume());
      }
    }
    else {
      return;
    }
    mVolumeLayout.setVisibility(8);
  }
  
  public View getMediaControlView()
  {
    return mControlView;
  }
  
  public MediaSessionCompat.Token getMediaSession()
  {
    if (mMediaController == null) {
      return null;
    }
    return mMediaController.getSessionToken();
  }
  
  public MediaRouter.RouteInfo getRoute()
  {
    return mRoute;
  }
  
  public boolean isVolumeControlEnabled()
  {
    return mVolumeControlEnabled;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mAttachedToWindow = true;
    mRouter.addCallback(MediaRouteSelector.EMPTY, mCallback, 2);
    setMediaSession(mRouter.getMediaSessionToken());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    setContentView(R.layout.mr_media_route_controller_material_dialog_b);
    ClickListener localClickListener = new ClickListener(null);
    mDisconnectButton = ((Button)findViewById(R.id.disconnect));
    mDisconnectButton.setOnClickListener(localClickListener);
    mStopCastingButton = ((Button)findViewById(R.id.stop));
    mStopCastingButton.setOnClickListener(localClickListener);
    mSettingsButton = ((ImageButton)findViewById(R.id.settings));
    mSettingsButton.setOnClickListener(localClickListener);
    mArtView = ((ImageView)findViewById(R.id.art));
    mTitleView = ((TextView)findViewById(R.id.title));
    mSubtitleView = ((TextView)findViewById(R.id.subtitle));
    mTitlesWrapper = findViewById(R.id.text_wrapper);
    mPlayPauseButton = ((ImageButton)findViewById(R.id.play_pause));
    mPlayPauseButton.setOnClickListener(localClickListener);
    mRouteNameView = ((TextView)findViewById(R.id.route_name));
    mVolumeLayout = ((LinearLayout)findViewById(R.id.media_route_volume_layout));
    mVolumeSlider = ((SeekBar)findViewById(R.id.media_route_volume_slider));
    mVolumeSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
    {
      private final Runnable mStopTrackingTouch = new Runnable()
      {
        public void run()
        {
          if (mVolumeSliderTouched)
          {
            MediaRouteControllerDialog.access$302(MediaRouteControllerDialog.this, false);
            MediaRouteControllerDialog.this.updateVolume();
          }
        }
      };
      
      public void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          mRoute.requestSetVolume(paramAnonymousInt);
        }
      }
      
      public void onStartTrackingTouch(SeekBar paramAnonymousSeekBar)
      {
        if (mVolumeSliderTouched)
        {
          mVolumeSlider.removeCallbacks(mStopTrackingTouch);
          return;
        }
        MediaRouteControllerDialog.access$302(MediaRouteControllerDialog.this, true);
      }
      
      public void onStopTrackingTouch(SeekBar paramAnonymousSeekBar)
      {
        mVolumeSlider.postDelayed(mStopTrackingTouch, 250L);
      }
    });
    mCreated = true;
    if (update())
    {
      mControlView = onCreateMediaControlView(paramBundle);
      paramBundle = (FrameLayout)findViewById(R.id.media_route_control_frame);
      if (mControlView != null)
      {
        paramBundle.findViewById(R.id.default_control_frame).setVisibility(8);
        paramBundle.addView(mControlView);
      }
    }
  }
  
  public View onCreateMediaControlView(Bundle paramBundle)
  {
    return null;
  }
  
  public void onDetachedFromWindow()
  {
    mRouter.removeCallback(mCallback);
    setMediaSession(null);
    mAttachedToWindow = false;
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 25) || (paramInt == 24))
    {
      paramKeyEvent = mRoute;
      if (paramInt == 25) {}
      for (paramInt = -1;; paramInt = 1)
      {
        paramKeyEvent.requestUpdateVolume(paramInt);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 25) || (paramInt == 24)) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void setVolumeControlEnabled(boolean paramBoolean)
  {
    if (mVolumeControlEnabled != paramBoolean)
    {
      mVolumeControlEnabled = paramBoolean;
      if (mCreated) {
        updateVolume();
      }
    }
  }
  
  private final class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public final void onClick(View paramView)
    {
      int i = paramView.getId();
      if ((i == R.id.stop) || (i == R.id.disconnect)) {
        if (mRoute.isSelected())
        {
          paramView = mRouter;
          if (i == R.id.stop)
          {
            i = 2;
            paramView.unselect(i);
          }
        }
        else
        {
          dismiss();
        }
      }
      label136:
      do
      {
        do
        {
          do
          {
            return;
            i = 1;
            break;
            if (i != R.id.play_pause) {
              break label136;
            }
          } while ((mMediaController == null) || (mState == null));
          if (mState.getState() == 3)
          {
            mMediaController.getTransportControls().pause();
            return;
          }
          mMediaController.getTransportControls().play();
          return;
        } while (i != R.id.settings);
        paramView = mRoute.getSettingsIntent();
      } while (paramView == null);
      try
      {
        paramView.sendIntent(null, 0, null, null, null);
        dismiss();
        return;
      }
      catch (Exception paramView)
      {
        Log.e("MediaRouteControllerDialog", "Error opening route settings.", paramView);
      }
    }
  }
  
  private final class MediaControllerCallback
    extends MediaControllerCompat.Callback
  {
    private MediaControllerCallback() {}
    
    public final void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
    {
      MediaRouteControllerDialog localMediaRouteControllerDialog = MediaRouteControllerDialog.this;
      if (paramMediaMetadataCompat == null) {}
      for (paramMediaMetadataCompat = null;; paramMediaMetadataCompat = paramMediaMetadataCompat.getDescription())
      {
        MediaRouteControllerDialog.access$1102(localMediaRouteControllerDialog, paramMediaMetadataCompat);
        MediaRouteControllerDialog.this.update();
        return;
      }
    }
    
    public final void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
    {
      MediaRouteControllerDialog.access$1002(MediaRouteControllerDialog.this, paramPlaybackStateCompat);
      MediaRouteControllerDialog.this.update();
    }
    
    public final void onSessionDestroyed()
    {
      if (mMediaController != null)
      {
        mMediaController.unregisterCallback(mControllerCallback);
        MediaRouteControllerDialog.access$802(MediaRouteControllerDialog.this, null);
      }
    }
  }
  
  private final class MediaRouterCallback
    extends MediaRouter.Callback
  {
    private MediaRouterCallback() {}
    
    public final void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteControllerDialog.this.update();
    }
    
    public final void onRouteUnselected(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      MediaRouteControllerDialog.this.update();
    }
    
    public final void onRouteVolumeChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
    {
      if (paramRouteInfo == mRoute) {
        MediaRouteControllerDialog.this.updateVolume();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.MediaRouteControllerDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */