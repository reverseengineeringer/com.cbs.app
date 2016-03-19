package com.facebook.login.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.os.Bundle;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.R.color;
import com.facebook.R.string;
import com.facebook.R.style;
import com.facebook.R.styleable;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.FetchedAppSettings;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

public class LoginButton
  extends FacebookButtonBase
{
  private static final String TAG = LoginButton.class.getName();
  private AccessTokenTracker accessTokenTracker;
  private boolean confirmLogout;
  private String loginLogoutEventName = "fb_login_view_usage";
  private LoginManager loginManager;
  private String loginText;
  private String logoutText;
  private LoginButtonProperties properties = new LoginButtonProperties();
  private boolean toolTipChecked;
  private long toolTipDisplayTime = 6000L;
  private ToolTipMode toolTipMode;
  private ToolTipPopup toolTipPopup;
  private ToolTipPopup.Style toolTipStyle = ToolTipPopup.Style.BLUE;
  
  public LoginButton(Context paramContext)
  {
    super(paramContext, null, 0, 0, "fb_login_button_create");
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, 0, "fb_login_button_create");
  }
  
  public LoginButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, 0, "fb_login_button_create");
  }
  
  private void checkToolTipSettings()
  {
    switch (toolTipMode)
    {
    default: 
      return;
    case ???: 
      final String str = Utility.getMetadataApplicationId(getContext());
      FacebookSdk.getExecutor().execute(new Runnable()
      {
        public void run()
        {
          final Utility.FetchedAppSettings localFetchedAppSettings = Utility.queryAppSettings(str, false);
          getActivity().runOnUiThread(new Runnable()
          {
            public void run()
            {
              LoginButton.this.showToolTipPerSettings(localFetchedAppSettings);
            }
          });
        }
      });
      return;
    }
    displayToolTip(getResources().getString(R.string.com_facebook_tooltip_default));
  }
  
  private void displayToolTip(String paramString)
  {
    toolTipPopup = new ToolTipPopup(paramString, this);
    toolTipPopup.setStyle(toolTipStyle);
    toolTipPopup.setNuxDisplayTime(toolTipDisplayTime);
    toolTipPopup.show();
  }
  
  private int measureButtonWidth(String paramString)
  {
    return measureTextWidth(paramString) + (getCompoundPaddingLeft() + getCompoundDrawablePadding()) + getCompoundPaddingRight();
  }
  
  private void parseLoginButtonAttributes(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    toolTipMode = ToolTipMode.DEFAULT;
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.com_facebook_login_view, paramInt1, paramInt2);
    try
    {
      confirmLogout = paramContext.getBoolean(R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
      loginText = paramContext.getString(R.styleable.com_facebook_login_view_com_facebook_login_text);
      logoutText = paramContext.getString(R.styleable.com_facebook_login_view_com_facebook_logout_text);
      toolTipMode = ToolTipMode.fromInt(paramContext.getInt(R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void setButtonText()
  {
    Resources localResources = getResources();
    if ((!isInEditMode()) && (AccessToken.getCurrentAccessToken() != null))
    {
      if (logoutText != null) {}
      for (localObject = logoutText;; localObject = localResources.getString(R.string.com_facebook_loginview_log_out_button))
      {
        setText((CharSequence)localObject);
        return;
      }
    }
    if (loginText != null)
    {
      setText(loginText);
      return;
    }
    String str = localResources.getString(R.string.com_facebook_loginview_log_in_button_long);
    int i = getWidth();
    Object localObject = str;
    if (i != 0)
    {
      localObject = str;
      if (measureButtonWidth(str) > i) {
        localObject = localResources.getString(R.string.com_facebook_loginview_log_in_button);
      }
    }
    setText((CharSequence)localObject);
  }
  
  private void showToolTipPerSettings(Utility.FetchedAppSettings paramFetchedAppSettings)
  {
    if ((paramFetchedAppSettings != null) && (paramFetchedAppSettings.getNuxEnabled()) && (getVisibility() == 0)) {
      displayToolTip(paramFetchedAppSettings.getNuxContent());
    }
  }
  
  public void clearPermissions()
  {
    properties.clearPermissions();
  }
  
  protected void configureButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super.configureButton(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setInternalOnClickListener(new LoginClickListener(null));
    parseLoginButtonAttributes(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (isInEditMode())
    {
      setBackgroundColor(getResources().getColor(R.color.com_facebook_blue));
      loginText = "Log in with Facebook";
    }
    for (;;)
    {
      setButtonText();
      return;
      accessTokenTracker = new AccessTokenTracker()
      {
        protected void onCurrentAccessTokenChanged(AccessToken paramAnonymousAccessToken1, AccessToken paramAnonymousAccessToken2)
        {
          LoginButton.this.setButtonText();
        }
      };
    }
  }
  
  public void dismissToolTip()
  {
    if (toolTipPopup != null)
    {
      toolTipPopup.dismiss();
      toolTipPopup = null;
    }
  }
  
  public DefaultAudience getDefaultAudience()
  {
    return properties.getDefaultAudience();
  }
  
  protected int getDefaultRequestCode()
  {
    return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
  }
  
  protected int getDefaultStyleResource()
  {
    return R.style.com_facebook_loginview_default_style;
  }
  
  public LoginBehavior getLoginBehavior()
  {
    return properties.getLoginBehavior();
  }
  
  LoginManager getLoginManager()
  {
    if (loginManager == null) {
      loginManager = LoginManager.getInstance();
    }
    return loginManager;
  }
  
  List<String> getPermissions()
  {
    return properties.getPermissions();
  }
  
  public long getToolTipDisplayTime()
  {
    return toolTipDisplayTime;
  }
  
  public ToolTipMode getToolTipMode()
  {
    return toolTipMode;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((accessTokenTracker != null) && (!accessTokenTracker.isTracking()))
    {
      accessTokenTracker.startTracking();
      setButtonText();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (accessTokenTracker != null) {
      accessTokenTracker.stopTracking();
    }
    dismissToolTip();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((!toolTipChecked) && (!isInEditMode()))
    {
      toolTipChecked = true;
      checkToolTipSettings();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    setButtonText();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject = getPaint().getFontMetrics();
    paramInt2 = getCompoundPaddingTop();
    float f = Math.abs(top);
    int i = (int)Math.ceil(Math.abs(bottom) + f);
    int j = getCompoundPaddingBottom();
    Resources localResources = getResources();
    String str = loginText;
    localObject = str;
    if (str == null)
    {
      localObject = localResources.getString(R.string.com_facebook_loginview_log_in_button_long);
      k = measureButtonWidth((String)localObject);
      if (resolveSize(k, paramInt1) < k) {
        localObject = localResources.getString(R.string.com_facebook_loginview_log_in_button);
      }
    }
    int k = measureButtonWidth((String)localObject);
    str = logoutText;
    localObject = str;
    if (str == null) {
      localObject = localResources.getString(R.string.com_facebook_loginview_log_out_button);
    }
    setMeasuredDimension(resolveSize(Math.max(k, measureButtonWidth((String)localObject)), paramInt1), j + (i + paramInt2));
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0) {
      dismissToolTip();
    }
  }
  
  public void registerCallback(CallbackManager paramCallbackManager, FacebookCallback<LoginResult> paramFacebookCallback)
  {
    getLoginManager().registerCallback(paramCallbackManager, paramFacebookCallback);
  }
  
  public void setDefaultAudience(DefaultAudience paramDefaultAudience)
  {
    properties.setDefaultAudience(paramDefaultAudience);
  }
  
  public void setLoginBehavior(LoginBehavior paramLoginBehavior)
  {
    properties.setLoginBehavior(paramLoginBehavior);
  }
  
  void setLoginManager(LoginManager paramLoginManager)
  {
    loginManager = paramLoginManager;
  }
  
  void setProperties(LoginButtonProperties paramLoginButtonProperties)
  {
    properties = paramLoginButtonProperties;
  }
  
  public void setPublishPermissions(List<String> paramList)
  {
    properties.setPublishPermissions(paramList);
  }
  
  public void setPublishPermissions(String... paramVarArgs)
  {
    properties.setPublishPermissions(Arrays.asList(paramVarArgs));
  }
  
  public void setReadPermissions(List<String> paramList)
  {
    properties.setReadPermissions(paramList);
  }
  
  public void setReadPermissions(String... paramVarArgs)
  {
    properties.setReadPermissions(Arrays.asList(paramVarArgs));
  }
  
  public void setToolTipDisplayTime(long paramLong)
  {
    toolTipDisplayTime = paramLong;
  }
  
  public void setToolTipMode(ToolTipMode paramToolTipMode)
  {
    toolTipMode = paramToolTipMode;
  }
  
  public void setToolTipStyle(ToolTipPopup.Style paramStyle)
  {
    toolTipStyle = paramStyle;
  }
  
  static class LoginButtonProperties
  {
    private LoginAuthorizationType authorizationType = null;
    private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
    private LoginBehavior loginBehavior = LoginBehavior.SSO_WITH_FALLBACK;
    private List<String> permissions = Collections.emptyList();
    
    public void clearPermissions()
    {
      permissions = null;
      authorizationType = null;
    }
    
    public DefaultAudience getDefaultAudience()
    {
      return defaultAudience;
    }
    
    public LoginBehavior getLoginBehavior()
    {
      return loginBehavior;
    }
    
    List<String> getPermissions()
    {
      return permissions;
    }
    
    public void setDefaultAudience(DefaultAudience paramDefaultAudience)
    {
      defaultAudience = paramDefaultAudience;
    }
    
    public void setLoginBehavior(LoginBehavior paramLoginBehavior)
    {
      loginBehavior = paramLoginBehavior;
    }
    
    public void setPublishPermissions(List<String> paramList)
    {
      if (LoginAuthorizationType.READ.equals(authorizationType)) {
        throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
      }
      if (Utility.isNullOrEmpty(paramList)) {
        throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
      }
      permissions = paramList;
      authorizationType = LoginAuthorizationType.PUBLISH;
    }
    
    public void setReadPermissions(List<String> paramList)
    {
      if (LoginAuthorizationType.PUBLISH.equals(authorizationType)) {
        throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
      }
      permissions = paramList;
      authorizationType = LoginAuthorizationType.READ;
    }
  }
  
  private class LoginClickListener
    implements View.OnClickListener
  {
    private LoginClickListener() {}
    
    public void onClick(View paramView)
    {
      callExternalOnClickListener(paramView);
      Object localObject2 = getContext();
      AccessToken localAccessToken = AccessToken.getCurrentAccessToken();
      Object localObject1;
      if (localAccessToken != null) {
        if (confirmLogout)
        {
          localObject1 = getResources().getString(R.string.com_facebook_loginview_log_out_action);
          String str = getResources().getString(R.string.com_facebook_loginview_cancel_action);
          paramView = Profile.getCurrentProfile();
          if ((paramView != null) && (paramView.getName() != null))
          {
            paramView = String.format(getResources().getString(R.string.com_facebook_loginview_logged_in_as), new Object[] { paramView.getName() });
            localObject2 = new AlertDialog.Builder((Context)localObject2);
            ((AlertDialog.Builder)localObject2).setMessage(paramView).setCancelable(true).setPositiveButton((CharSequence)localObject1, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
              {
                getLoginManager().logOut();
              }
            }).setNegativeButton(str, null);
            ((AlertDialog.Builder)localObject2).create().show();
            label157:
            paramView = AppEventsLogger.newLogger(getContext());
            localObject1 = new Bundle();
            if (localAccessToken == null) {
              break label403;
            }
          }
        }
      }
      label403:
      for (int i = 0;; i = 1)
      {
        ((Bundle)localObject1).putInt("logging_in", i);
        paramView.logSdkEvent(loginLogoutEventName, null, (Bundle)localObject1);
        return;
        paramView = getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
        break;
        getLoginManager().logOut();
        break label157;
        paramView = getLoginManager();
        paramView.setDefaultAudience(getDefaultAudience());
        paramView.setLoginBehavior(getLoginBehavior());
        if (LoginAuthorizationType.PUBLISH.equals(access$600authorizationType))
        {
          if (getFragment() != null)
          {
            paramView.logInWithPublishPermissions(getFragment(), access$600permissions);
            break label157;
          }
          paramView.logInWithPublishPermissions(getActivity(), access$600permissions);
          break label157;
        }
        if (getFragment() != null)
        {
          paramView.logInWithReadPermissions(getFragment(), access$600permissions);
          break label157;
        }
        paramView.logInWithReadPermissions(getActivity(), access$600permissions);
        break label157;
      }
    }
  }
  
  public static enum ToolTipMode
  {
    AUTOMATIC("automatic", 0),  DISPLAY_ALWAYS("display_always", 1),  NEVER_DISPLAY("never_display", 2);
    
    public static ToolTipMode DEFAULT = AUTOMATIC;
    private int intValue;
    private String stringValue;
    
    private ToolTipMode(String paramString, int paramInt)
    {
      stringValue = paramString;
      intValue = paramInt;
    }
    
    public static ToolTipMode fromInt(int paramInt)
    {
      ToolTipMode[] arrayOfToolTipMode = values();
      int j = arrayOfToolTipMode.length;
      int i = 0;
      while (i < j)
      {
        ToolTipMode localToolTipMode = arrayOfToolTipMode[i];
        if (localToolTipMode.getValue() == paramInt) {
          return localToolTipMode;
        }
        i += 1;
      }
      return null;
    }
    
    public final int getValue()
    {
      return intValue;
    }
    
    public final String toString()
    {
      return stringValue;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */