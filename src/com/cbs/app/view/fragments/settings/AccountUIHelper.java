package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.MemoryCache;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.db.MyShowDataSource;
import com.cbs.app.livetv.model.SocialNames;
import com.cbs.app.livetv.model.SocialProvider;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.HomeService;
import com.cbs.app.service.HomeServiceImpl;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.TwitterOAuthTokens;
import com.cbs.app.view.GoogleIntermediateActivity;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.TOUDialogFragment;
import com.cbs.app.view.fragments.TOUDialogFragment.TOUDialogListener;
import com.cbs.app.view.menu.CbsMenuAdapter;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthEndpointResponse;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.CreateEndpointResponse;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.model.rest.HomeEndpointResponse;
import com.cbs.app.view.model.rest.MarqueeResponse;
import com.cbs.app.view.model.rest.ReconcileEndpointResponse;
import com.cbs.app.view.model.rest.ScheduleResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.visualon.player.CBSPlayer;
import com.google.android.gms.common.e;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public final class AccountUIHelper
{
  public static final CopyOnWriteArrayList<RefreshAccountListener> a = new CopyOnWriteArrayList();
  public static boolean b = false;
  private static final String c = AccountUIHelper.class.getSimpleName();
  private static Dialog d = null;
  private static Dialog e = null;
  private static AlertDialog f = null;
  private static AlertDialog g = null;
  private static boolean h = false;
  private static boolean i = false;
  private static boolean j = false;
  private static String k = "Settings";
  private static boolean l;
  private static String m = "";
  private static String n = "";
  private static View o = null;
  private static Button p = null;
  private static VideoData q = null;
  private static TextInputLayout r;
  private static TextInputLayout s;
  
  public static String a(CreateEndpointResponse paramCreateEndpointResponse)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramCreateEndpointResponse = paramCreateEndpointResponse.getErrors();
    if (paramCreateEndpointResponse != null)
    {
      Iterator localIterator = paramCreateEndpointResponse.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramCreateEndpointResponse = (Map.Entry)localIterator.next();
        String str1 = (String)paramCreateEndpointResponse.getKey();
        String str2 = (String)paramCreateEndpointResponse.getValue();
        if (str2.equals("TOOYOUNG"))
        {
          localStringBuilder.setLength(0);
          localStringBuilder.append("We are sorry, but we are unable to create an account for you at this time. ");
          return localStringBuilder.toString();
        }
        if (str2.equals("CONNECTIONFAILURE"))
        {
          localStringBuilder.setLength(0);
          localStringBuilder.append("lost server connection, please try again ");
          return localStringBuilder.toString();
        }
        label137:
        label176:
        int i1;
        if (str1.equals("firstName"))
        {
          paramCreateEndpointResponse = "First name";
          switch (str2.hashCode())
          {
          default: 
            i1 = -1;
          }
        }
        for (;;)
        {
          switch (i1)
          {
          default: 
            break;
          case 0: 
            localStringBuilder.append(c(paramCreateEndpointResponse)).append(" is required. ");
            break;
            paramCreateEndpointResponse = str1;
            if (!str1.equals("lastName")) {
              break label137;
            }
            paramCreateEndpointResponse = "Last name";
            break label137;
            if (!str2.equals("REQUIRED")) {
              break label176;
            }
            i1 = 0;
            continue;
            if (!str2.equals("EMAILALREADYEXISTS")) {
              break label176;
            }
            i1 = 1;
            continue;
            if (!str2.equals("INVALID")) {
              break label176;
            }
            i1 = 2;
          }
        }
        localStringBuilder.append("Email already exists. ");
        continue;
        localStringBuilder.append(c(paramCreateEndpointResponse)).append(" isn't valid. ");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Dialog paramDialog, String paramString)
  {
    Object localObject = paramDialog.findViewById(2131689799);
    if ((localObject != null) && ((localObject instanceof TextView)))
    {
      localObject = (TextView)localObject;
      ((TextView)localObject).setText(paramString);
      ((TextView)localObject).setVisibility(0);
      if (p != null)
      {
        p.setEnabled(true);
        p.setClickable(true);
      }
    }
    paramDialog = paramDialog.findViewById(2131689815);
    if ((paramDialog != null) && ((paramDialog instanceof TextView)))
    {
      paramDialog = (TextView)paramDialog;
      paramDialog.setText(paramString);
      paramDialog.setVisibility(0);
      if (p != null)
      {
        p.setEnabled(true);
        p.setClickable(true);
      }
    }
  }
  
  public static void a(final Context paramContext)
  {
    final InputMethodManager localInputMethodManager = (InputMethodManager)paramContext.getSystemService("input_method");
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing())) {
      return;
    }
    Object localObject1 = LayoutInflater.from(paramContext);
    Object localObject2 = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131427561));
    DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AccountUIHelper.d();
        a.hideSoftInputFromWindow(AccountUIHelper.e().findViewById(2131689817).getWindowToken(), 0);
        AccountUIHelper.e().findViewById(2131689817).clearFocus();
        paramAnonymousDialogInterface.dismiss();
        AccountUIHelper.h(paramContext);
      }
    };
    ((AlertDialog.Builder)localObject2).setCancelable(true).setView(((LayoutInflater)localObject1).inflate(2130903113, null)).setTitle("Sign Into CBS").setPositiveButton("Submit", null).setNegativeButton("Cancel", local1);
    f = ((AlertDialog.Builder)localObject2).create();
    localObject1 = new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        a.toggleSoftInput(1, 0);
        if ((AccountUIHelper.e() != null) && (AccountUIHelper.e().findViewById(2131689817) != null)) {
          AccountUIHelper.e().findViewById(2131689817).clearFocus();
        }
        AccountUIHelper.h(paramContext);
        AccountUIHelper.b();
      }
    };
    localObject2 = new DialogInterface.OnDismissListener()
    {
      public final void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        if ((AccountUIHelper.e() != null) && (AccountUIHelper.e().findViewById(2131689817) != null))
        {
          a.hideSoftInputFromWindow(AccountUIHelper.e().findViewById(2131689817).getWindowToken(), 0);
          AccountUIHelper.e().findViewById(2131689817).clearFocus();
        }
        AccountUIHelper.h(paramContext);
      }
    };
    f.setOnCancelListener((DialogInterface.OnCancelListener)localObject1);
    f.setOnDismissListener((DialogInterface.OnDismissListener)localObject2);
    paramContext = new DialogInterface.OnShowListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = null;
        EditText localEditText = (EditText)AccountUIHelper.e().findViewById(2131689817);
        if (localEditText.getText() != null) {
          paramAnonymousView = localEditText.getText().toString();
        }
        if ((AccountUIHelper.a(paramAnonymousView)) || ((paramAnonymousView != null) && (!AccountUIHelper.b(paramAnonymousView)))) {}
        for (int i = 1;; i = 0)
        {
          if (i != 0)
          {
            AccountUIHelper.a(AccountUIHelper.e(), "You must provide a valid email.");
            return;
          }
          AccountUIHelper.a(a, paramAnonymousView);
          localInputMethodManager.hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
          AccountUIHelper.e().findViewById(2131689817).clearFocus();
          return;
        }
      }
    }
    {
      public final void onShow(DialogInterface paramAnonymousDialogInterface)
      {
        paramAnonymousDialogInterface = (EditText)AccountUIHelper.e().findViewById(2131689817);
        a.showSoftInput(paramAnonymousDialogInterface, 1);
        paramAnonymousDialogInterface.requestFocus();
        paramAnonymousDialogInterface = AccountUIHelper.e().getButton(-1);
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.setOnClickListener(b);
        }
      }
    };
    f.setOnShowListener(paramContext);
    f.show();
  }
  
  public static void a(final Context paramContext, ViewGroup paramViewGroup)
  {
    Object localObject1;
    if ((paramViewGroup != null) && (paramContext != null))
    {
      paramViewGroup.removeAllViews();
      localObject1 = LayoutInflater.from(paramContext).inflate(2130903309, paramViewGroup, false);
      if (localObject1 != null)
      {
        Object localObject2 = (TextInputLayout)((View)localObject1).findViewById(2131690433);
        r = (TextInputLayout)localObject2;
        ((TextInputLayout)localObject2).a().addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            AccountUIHelper.n().setErrorEnabled(false);
          }
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        localObject2 = (TextInputLayout)((View)localObject1).findViewById(2131690434);
        s = (TextInputLayout)localObject2;
        ((TextInputLayout)localObject2).a().addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            AccountUIHelper.o().setErrorEnabled(false);
          }
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        localObject2 = (EditText)((View)localObject1).findViewById(2131689820);
        ((EditText)localObject2).setContentDescription("password field");
        ((EditText)localObject2).setTransformationMethod(PasswordTransformationMethod.getInstance());
        if (getPasswordCache().length() > 0) {
          ((EditText)localObject2).setText(getPasswordCache());
        }
        ((EditText)localObject2).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            AccountUIHelper.setPasswordCache(paramAnonymousCharSequence.toString());
          }
        });
        localObject2 = (EditText)((View)localObject1).findViewById(2131689817);
        if (getEmailCache().length() > 0) {
          ((EditText)localObject2).setText(getEmailCache());
        }
        ((EditText)localObject2).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            AccountUIHelper.setEmailCache(paramAnonymousCharSequence.toString());
          }
        });
        paramViewGroup.addView((View)localObject1);
        if (localObject1 != null)
        {
          paramViewGroup = ((View)localObject1).findViewById(2131689680);
          if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView)))
          {
            paramViewGroup = (TextView)paramViewGroup;
            localObject2 = paramViewGroup.getText().toString();
            paramViewGroup.setText("Sign in " + (String)localObject2);
          }
          paramViewGroup = ((View)localObject1).findViewById(2131689667);
          if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView)))
          {
            paramViewGroup = (TextView)paramViewGroup;
            localObject2 = paramViewGroup.getText().toString();
            paramViewGroup.setText("Sign in " + (String)localObject2);
          }
          paramViewGroup = (ImageButton)((View)localObject1).findViewById(2131690281);
          if (paramViewGroup != null) {
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AccountUIHelper.d(a);
              }
            });
          }
          paramViewGroup = ((View)localObject1).findViewById(2131689821);
          if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView)))
          {
            paramViewGroup = (TextView)paramViewGroup;
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AccountUIHelper.d();
                a.setEnabled(false);
                a.setClickable(false);
                AccountUIHelper.setLoginIsShowing(false);
                AccountUIHelper.a(paramContext);
              }
            });
          }
          paramViewGroup = (ImageButton)((View)localObject1).findViewById(2131689704);
          if (paramViewGroup != null) {
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AccountUIHelper.e(a);
              }
            });
          }
          paramViewGroup = (ImageButton)((View)localObject1).findViewById(2131690339);
          if (paramViewGroup != null)
          {
            if (!k(paramContext)) {
              break label569;
            }
            paramViewGroup.setVisibility(0);
            paramViewGroup.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                AccountUIHelper.d();
                AccountUIHelper.f(a);
              }
            });
          }
        }
      }
    }
    for (;;)
    {
      paramViewGroup = ((View)localObject1).findViewById(2131689825);
      if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView))) {
        ((TextView)paramViewGroup).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            AccountUIHelper.d();
            AccountUIHelper.setLoginIsShowing(false);
            SVODPopupHelper.setWeWantToSeeVideo(null);
            SVODPopupHelper.setWeWantToSeeShow(null);
            SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
            AccountUIHelper.a(a, true);
          }
        });
      }
      paramViewGroup = ((View)localObject1).findViewById(2131689822);
      if ((paramViewGroup != null) && ((paramViewGroup instanceof Button)))
      {
        paramViewGroup = (Button)paramViewGroup;
        p = paramViewGroup;
        paramViewGroup.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            AccountUIHelper.d();
            AccountUIHelper.h().setClickable(false);
            AccountUIHelper.h().setEnabled(false);
            paramAnonymousView = a.findViewById(2131689817);
            if ((paramAnonymousView != null) && ((paramAnonymousView instanceof EditText)))
            {
              paramAnonymousView = ((EditText)paramAnonymousView).getText();
              if (paramAnonymousView == null) {}
            }
            for (paramAnonymousView = paramAnonymousView.toString();; paramAnonymousView = null)
            {
              View localView = a.findViewById(2131689820);
              if ((localView != null) && ((localView instanceof EditText)))
              {
                localObject = (EditText)localView;
                ((EditText)localObject).setContentDescription("password field");
                localObject = ((EditText)localObject).getText();
                if (localObject == null) {}
              }
              for (Object localObject = localObject.toString();; localObject = null)
              {
                if ((paramAnonymousView != null) && (!paramAnonymousView.equals("")) && (localObject != null) && (!((String)localObject).equals("")))
                {
                  AccountUIHelper.a(a, "");
                  ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
                  SVODPopupHelper.setWeWantToSeeVideo(null);
                  SVODPopupHelper.setWeWantToSeeShow(null);
                  SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                  AccountUIHelper.c(paramContext, paramAnonymousView, (String)localObject, null);
                  return;
                }
                paramAnonymousView = Action.bm;
                localObject = new HashMap();
                ((HashMap)localObject).put("events", "event28");
                ((HashMap)localObject).put("appState", "cbscom:" + AccountUIHelper.i());
                ((HashMap)localObject).put("pageTitle", AccountUIHelper.i());
                ((HashMap)localObject).put("logintype", "email");
                AnalyticsManager.a(paramContext, paramAnonymousView, (HashMap)localObject);
                AccountUIHelper.j(paramContext);
                AccountUIHelper.h().setClickable(true);
                AccountUIHelper.h().setEnabled(true);
                return;
              }
            }
          }
        });
      }
      paramViewGroup = Action.bj;
      localObject1 = new HashMap();
      ((HashMap)localObject1).put("events", "event22");
      ((HashMap)localObject1).put("appState", "cbscom:" + k);
      ((HashMap)localObject1).put("From", k);
      AnalyticsManager.a(paramContext, paramViewGroup, (HashMap)localObject1);
      return;
      label569:
      paramViewGroup.setVisibility(4);
    }
  }
  
  public static void a(Context paramContext, DoneListener paramDoneListener)
  {
    i = false;
    new AuthServiceImpl().a(paramContext);
    a(paramContext, null, paramDoneListener, null);
    if ((paramContext != null) && ((paramContext instanceof SettingsActivity))) {
      ((SettingsActivity)paramContext).a();
    }
    l(paramContext);
  }
  
  private static void a(Context paramContext, AuthStatusEndpointResponse paramAuthStatusEndpointResponse, DoneListener paramDoneListener, String paramString)
  {
    if (paramContext != null)
    {
      String str2 = "ANONYMOUS";
      String str1 = str2;
      if (paramAuthStatusEndpointResponse != null)
      {
        paramAuthStatusEndpointResponse = paramAuthStatusEndpointResponse.getUserStatus();
        str1 = str2;
        if (paramAuthStatusEndpointResponse != null) {
          str1 = paramAuthStatusEndpointResponse.getDescription();
        }
      }
      new HomeServiceImpl().a(paramContext, str1, new a(paramContext, paramDoneListener, paramString));
    }
  }
  
  public static void a(Context paramContext, AuthStatusEndpointResponse paramAuthStatusEndpointResponse, String paramString1, DoneListener paramDoneListener, String paramString2)
  {
    a(paramContext, paramAuthStatusEndpointResponse, paramString1, paramDoneListener, paramString2, null);
  }
  
  public static void a(Context paramContext, AuthStatusEndpointResponse paramAuthStatusEndpointResponse, String paramString1, DoneListener paramDoneListener, String paramString2, String paramString3)
  {
    new StringBuilder("logUserIn() called with: ctx = [").append(paramContext).append("], res = [").append(paramAuthStatusEndpointResponse).append("], frm = [").append(paramString1).append("], list = [").append(paramDoneListener).append("], launch_title = [").append(paramString2).append("], sku = [").append(paramString3).append("]");
    MemoryCache.a();
    AuthStatusManager.setUserAuthStatus(paramAuthStatusEndpointResponse);
    long l1 = paramAuthStatusEndpointResponse.getUserId();
    paramString2 = paramAuthStatusEndpointResponse.getFirstName();
    Object localObject1 = paramAuthStatusEndpointResponse.getLastName();
    new StringBuilder("userId: ").append(l1).append(" firstName: ").append(paramString2).append(" lastName: ").append((String)localObject1);
    Object localObject2 = Util.a(paramContext, Util.B(paramContext), "CBS_COM");
    String str = Util.a(paramContext, Util.B(paramContext), "livefyre_token");
    Util.d(paramContext, Long.valueOf(l1).toString());
    Util.f(paramContext, (String)localObject2);
    Util.c(paramContext, str);
    Util.g(paramContext, paramString2);
    Util.h(paramContext, (String)localObject1);
    b();
    int i1 = VideoUtil.getUserType();
    switch (i1)
    {
    default: 
      paramString2 = "";
    }
    for (;;)
    {
      localObject1 = Action.bp;
      localObject2 = new HashMap();
      ((HashMap)localObject2).put("events", "event28");
      ((HashMap)localObject2).put("appState", "cbscom:" + paramString1);
      ((HashMap)localObject2).put("From", paramString1);
      ((HashMap)localObject2).put("userStatusStr", paramString2);
      AnalyticsManager.a(paramContext, (Action)localObject1, (HashMap)localObject2);
      if (i1 == 2) {
        AnalyticsManager.d(paramContext, Action.bG, null);
      }
      new MyCBSService().a(paramContext, new ResponseModelListener()
      {
        public final void a()
        {
          AccountUIHelper.d();
        }
        
        public final void a(ResponseModel paramAnonymousResponseModel)
        {
          AccountUIHelper.d();
          if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof FavoriteShowsEndpointResponse)))
          {
            AccountUIHelper.d();
            paramAnonymousResponseModel = (FavoriteShowsEndpointResponse)paramAnonymousResponseModel;
            if (paramAnonymousResponseModel.isSuccess())
            {
              AccountUIHelper.d();
              paramAnonymousResponseModel = paramAnonymousResponseModel.getFavshowlist();
              if (paramAnonymousResponseModel != null)
              {
                paramAnonymousResponseModel = paramAnonymousResponseModel.getShowList();
                if (paramAnonymousResponseModel != null)
                {
                  Preferences.a(a, "mycbs_show_count", paramAnonymousResponseModel.size());
                  Context localContext = a.getApplicationContext();
                  if ((localContext != null) && ((localContext instanceof MainApplication))) {
                    ((MainApplication)localContext).setMycbsShows(paramAnonymousResponseModel);
                  }
                }
              }
              return;
            }
            AccountUIHelper.d();
            return;
          }
          AccountUIHelper.d();
        }
      });
      a(paramContext, paramAuthStatusEndpointResponse, paramDoneListener, paramString3);
      l(paramContext);
      return;
      paramString2 = "registered";
      continue;
      paramString2 = "subscriber";
      continue;
      paramString2 = "suspended";
      continue;
      paramString2 = "exsubscriber";
    }
  }
  
  public static void a(Context paramContext, CreateEndpointResponse paramCreateEndpointResponse, SocialProvider paramSocialProvider)
  {
    if (b == null)
    {
      paramCreateEndpointResponse = a(paramCreateEndpointResponse);
      b(paramContext, k, null, paramCreateEndpointResponse);
      return;
    }
    paramCreateEndpointResponse = b(paramCreateEndpointResponse);
    b(paramContext, k, paramSocialProvider.getNameString(), paramCreateEndpointResponse);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    final View localView = LayoutInflater.from(paramContext).inflate(2130903114, null);
    final DialogInterface.OnClickListener local44 = new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        AccountUIHelper.h(a);
      }
    };
    final DialogInterface.OnCancelListener local45 = new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        AccountUIHelper.h(a);
      }
    };
    new AuthServiceImpl().a(paramContext, paramString, new ResponseModelListener()
    {
      public final void a()
      {
        AccountUIHelper.e().dismiss();
        AccountUIHelper.h(a);
        AccountUIHelper.f(a, "Sign Into CBS", "There was a problem connecting to our servers. Please try again later.");
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        AccountUIHelper.e().dismiss();
        paramAnonymousResponseModel = new AlertDialog.Builder(new ContextThemeWrapper(a, 2131427561));
        paramAnonymousResponseModel.setCancelable(true).setView(localView).setTitle("Sign Into CBS").setPositiveButton("Ok", local44);
        AccountUIHelper.a(paramAnonymousResponseModel.create());
        AccountUIHelper.f().setOnCancelListener(local45);
        AccountUIHelper.f().show();
      }
    });
  }
  
  public static void a(Context paramContext, String paramString1, final AuthStatusEndpointResponse paramAuthStatusEndpointResponse, final DoneListener paramDoneListener, final String paramString2)
  {
    Object localObject = f(paramContext, String.valueOf(paramAuthStatusEndpointResponse.getUserId()));
    final String str = c(paramContext);
    if ((localObject != null) && (str != null) && (((String)localObject).equals(str)))
    {
      localObject = paramAuthStatusEndpointResponse.getPackageInfo();
      if ((localObject != null) && (((ArrayList)localObject).size() > 0))
      {
        localObject = (com.cbs.app.view.model.registration.PackageInfo)((ArrayList)localObject).get(0);
        new StringBuilder("packageCode: ").append(((com.cbs.app.view.model.registration.PackageInfo)localObject).getPackageCode());
        new StringBuilder("packageStatus: ").append(((com.cbs.app.view.model.registration.PackageInfo)localObject).getPackageStatus());
      }
      a(paramContext, paramAuthStatusEndpointResponse, paramString1, paramDoneListener, paramString2);
      return;
    }
    if ((paramContext instanceof Activity)) {}
    for (localObject = (Activity)paramContext;; localObject = null)
    {
      if ((localObject == null) || (((Activity)localObject).isFinishing()) || (p())) {}
      for (;;)
      {
        paramAuthStatusEndpointResponse = Action.bl;
        paramDoneListener = new HashMap();
        paramDoneListener.put("events", "event8");
        paramDoneListener.put("appState", "cbscom:" + paramString1);
        paramDoneListener.put("From", paramString1);
        AnalyticsManager.a(paramContext, paramAuthStatusEndpointResponse, paramDoneListener);
        return;
        long l1 = paramAuthStatusEndpointResponse.getUserId();
        str = c(paramContext);
        final TOUDialogFragment localTOUDialogFragment = new TOUDialogFragment();
        Bundle localBundle = new Bundle();
        localBundle.putString("dialog_title", "Our Terms Have Changed");
        localTOUDialogFragment.setArguments(localBundle);
        localTOUDialogFragment.setListner(new TOUDialogFragment.TOUDialogListener()
        {
          public final void a()
          {
            AccountUIHelper.d();
            AccountUIHelper.setTermsDialogIsShowing(false);
            AccountUIHelper.b = false;
            AccountUIHelper.a(a, paramDoneListener);
          }
          
          public final void a(boolean paramAnonymousBoolean)
          {
            if (paramAnonymousBoolean)
            {
              AccountUIHelper.d(a, b, str);
              AccountUIHelper.a(a, paramAuthStatusEndpointResponse, AccountUIHelper.i(), paramDoneListener, paramString2);
              localTOUDialogFragment.dismiss();
            }
            for (;;)
            {
              Util.a((Activity)a);
              return;
              Action localAction = Action.bm;
              HashMap localHashMap = new HashMap();
              localHashMap.put("appState", "cbscom:" + AccountUIHelper.i());
              localHashMap.put("events", "event20");
              localHashMap.put("pageTitle", "setting");
              localHashMap.put("evar_70", "You need to accept our terms in order to continue.");
              localHashMap.put("prop_70", "You need to accept our terms in order to continue.");
              AnalyticsManager.a(a, localAction, localHashMap);
            }
          }
        });
        localTOUDialogFragment.show(((Activity)localObject).getFragmentManager(), "TOUDialog");
      }
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Action localAction = Action.bs;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event5");
    if (paramString2 != null)
    {
      localHashMap.put("evar_14", paramString2);
      localHashMap.put("prop_14", paramString2);
      localHashMap.put("Provider", paramString2);
    }
    localHashMap.put("appState", "cbscom:" + paramString1);
    localHashMap.put("From", paramString1);
    AnalyticsManager.a(paramContext, localAction, localHashMap);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    a(paramContext, paramString1, paramString2, paramString3, null, false, false);
  }
  
  public static void a(Context paramContext, final String paramString1, final String paramString2, final String paramString3, final String paramString4)
  {
    final Object localObject1 = Calendar.getInstance();
    int i6 = ((Calendar)localObject1).get(1);
    int i7 = ((Calendar)localObject1).get(2);
    int i8 = ((Calendar)localObject1).get(5);
    StringBuilder localStringBuilder1 = new StringBuilder();
    final Object localObject3 = null;
    final Object localObject4 = null;
    Object localObject5 = null;
    Object localObject7 = null;
    localObject1 = null;
    final Object localObject6;
    final Object localObject2;
    if (e != null)
    {
      localObject6 = e.findViewById(2131689629);
      localObject2 = localObject3;
      if (localObject6 != null)
      {
        localObject2 = localObject3;
        if ((localObject6 instanceof EditText)) {
          localObject2 = ((EditText)localObject6).getText().toString();
        }
      }
      localObject6 = e.findViewById(2131689630);
      localObject3 = localObject4;
      if (localObject6 != null)
      {
        localObject3 = localObject4;
        if ((localObject6 instanceof EditText)) {
          localObject3 = ((EditText)localObject6).getText().toString();
        }
      }
      localObject6 = e.findViewById(2131689800);
      localObject4 = localObject5;
      if (localObject6 != null)
      {
        localObject4 = localObject5;
        if ((localObject6 instanceof EditText)) {
          localObject4 = ((EditText)localObject6).getText().toString();
        }
      }
      localObject5 = e.findViewById(2131689801);
      if ((localObject5 == null) || (!(localObject5 instanceof EditText))) {
        break label1385;
      }
    }
    label505:
    label651:
    label1334:
    label1361:
    label1385:
    for (localObject5 = ((EditText)localObject5).getText().toString();; localObject5 = null)
    {
      final Object localObject8 = e.findViewById(2131689802);
      localObject6 = localObject7;
      if (localObject8 != null)
      {
        localObject6 = localObject7;
        if ((localObject8 instanceof EditText)) {
          localObject6 = ((EditText)localObject8).getText().toString();
        }
      }
      localObject8 = e.findViewById(2131689803);
      localObject7 = localObject1;
      if (localObject8 != null)
      {
        localObject7 = localObject1;
        if ((localObject8 instanceof EditText)) {
          localObject7 = ((EditText)localObject8).getText().toString();
        }
      }
      localObject1 = e.findViewById(2131689806);
      final int i2;
      final int i3;
      final int i4;
      if ((localObject1 != null) && ((localObject1 instanceof DatePicker)))
      {
        localObject1 = (DatePicker)localObject1;
        i2 = ((DatePicker)localObject1).getYear();
        i3 = ((DatePicker)localObject1).getMonth() + 1;
        i4 = ((DatePicker)localObject1).getDayOfMonth();
      }
      for (;;)
      {
        localObject8 = e.findViewById(2131689810);
        localObject1 = e.findViewById(2131689809);
        final boolean bool1;
        int i1;
        if ((localObject8 != null) && ((localObject8 instanceof RadioButton)) && (localObject1 != null) && ((localObject1 instanceof RadioButton)))
        {
          localObject8 = (RadioButton)localObject8;
          localObject1 = (RadioButton)localObject1;
          if (((RadioButton)localObject8).isChecked())
          {
            bool1 = false;
            i1 = 1;
          }
        }
        for (;;)
        {
          localObject1 = e.findViewById(2131689811);
          if ((localObject1 != null) && ((localObject1 instanceof Spinner))) {
            switch (((Spinner)localObject1).getSelectedItemPosition())
            {
            default: 
              localObject1 = "O";
            }
          }
          for (;;)
          {
            localObject8 = e.findViewById(2131689813);
            int i5;
            if ((localObject8 != null) && ((localObject8 instanceof Spinner))) {
              i5 = ((Spinner)localObject8).getSelectedItemPosition();
            }
            for (localObject8 = paramContext.getResources().getStringArray(2131623964)[i5];; localObject8 = null)
            {
              final Object localObject9 = e.findViewById(2131689804);
              if ((localObject9 != null) && ((localObject9 instanceof EditText))) {}
              for (localObject9 = ((EditText)localObject9).getText().toString();; localObject9 = null)
              {
                Object localObject10 = e.findViewById(2131689814);
                if ((localObject10 != null) && ((localObject10 instanceof CheckBox)) && (((CheckBox)localObject10).isChecked())) {}
                for (i5 = 1;; i5 = 0)
                {
                  StringBuilder localStringBuilder2 = new StringBuilder("accepted: ");
                  boolean bool2;
                  boolean bool3;
                  if (i5 != 0)
                  {
                    localObject10 = "true";
                    localStringBuilder2.append((String)localObject10);
                    bool2 = a((String)localObject2, "You must provide a first name. ", localStringBuilder1, false);
                    if (((String)localObject8).equals("Select State"))
                    {
                      localStringBuilder1.append("You must provide a state.");
                      bool2 = true;
                    }
                    bool3 = a((String)localObject9, "You must provide a postal code. ", localStringBuilder1, bool2);
                    if (localObject1 != null)
                    {
                      bool2 = bool3;
                      if (((String)localObject1).equals("US")) {}
                    }
                    else
                    {
                      if (bool3) {
                        localStringBuilder1.append(" ");
                      }
                      localStringBuilder1.append("Only United States is allowed at this time.");
                      bool2 = true;
                    }
                    bool2 = a((String)localObject3, "You must provide a last name. ", localStringBuilder1, bool2);
                    if (!b((String)localObject4))
                    {
                      bool2 = true;
                      localStringBuilder1.append("You must provide a valid email.");
                    }
                    bool2 = a((String)localObject5, "You must provide a confirmation email. ", localStringBuilder1, a((String)localObject4, "You must provide an email. ", localStringBuilder1, bool2));
                    if ((localObject4 != null) && (localObject5 != null) && (((String)localObject4).equals(localObject5))) {
                      break label1334;
                    }
                    if (bool2) {
                      localStringBuilder1.append(" ");
                    }
                    localStringBuilder1.append("Your email must match your confirmation email.");
                    bool2 = true;
                  }
                  for (;;)
                  {
                    bool3 = bool2;
                    if (i2 == i6)
                    {
                      bool3 = bool2;
                      if (i3 == i7)
                      {
                        bool3 = bool2;
                        if (i4 == i8)
                        {
                          if (bool2) {
                            localStringBuilder1.append(" ");
                          }
                          localStringBuilder1.append("You must select a date of birth.");
                          bool3 = true;
                        }
                      }
                    }
                    if (i1 == 0)
                    {
                      if (bool3) {
                        localStringBuilder1.append(" ");
                      }
                      localStringBuilder1.append("You must select a gender.");
                    }
                    for (bool2 = true;; bool2 = bool3)
                    {
                      if (i5 == 0)
                      {
                        if (bool2) {
                          localStringBuilder1.append(" ");
                        }
                        localStringBuilder1.append("You must accept the terms and conditions.");
                      }
                      for (bool3 = true;; bool3 = bool2)
                      {
                        bool2 = bool3;
                        if (paramString2 == null)
                        {
                          bool3 = a((String)localObject7, "You must provide a confirmation password. ", localStringBuilder1, a((String)localObject6, "You must provide a password. ", localStringBuilder1, bool3));
                          bool2 = bool3;
                          if (!((String)localObject6).equals(localObject7))
                          {
                            if (bool3) {
                              localStringBuilder1.append(" ");
                            }
                            localStringBuilder1.append("Your password must match your confirmation password.");
                            bool2 = true;
                          }
                        }
                        if (bool2)
                        {
                          paramString2 = Action.br;
                          paramString3 = new HashMap();
                          paramString3.put("events", "event20");
                          if (paramString1 != null)
                          {
                            paramString3.put("evar_14", paramString1);
                            paramString3.put("prop_14", paramString1);
                            paramString3.put("Provider", paramString1);
                          }
                          paramString3.put("appState", "cbscom:" + k);
                          paramString3.put("From", k);
                          paramString3.put("Error", localStringBuilder1.toString());
                          paramString3.put("evar_70", localStringBuilder1.toString());
                          paramString3.put("prop_70", localStringBuilder1.toString());
                          AnalyticsManager.a(paramContext, paramString2, paramString3);
                          a(e, localStringBuilder1.toString());
                          paramContext = (ScrollView)e.findViewById(2131689791);
                          paramContext.post(new Runnable()
                          {
                            public final void run()
                            {
                              a.smoothScrollTo(0, 0);
                            }
                          });
                          return;
                          if (!((RadioButton)localObject1).isChecked()) {
                            break label1361;
                          }
                          bool1 = true;
                          i1 = 1;
                          break;
                          localObject1 = "US";
                          break label505;
                          localObject10 = "false";
                          break label651;
                        }
                        paramString1 = new ResponseModelListener()
                        {
                          public final void a()
                          {
                            AccountUIHelper.f(a, "CBS Sign In", "There was an issue connecting to our servers. Please try again later.");
                          }
                          
                          public final void a(ResponseModel paramAnonymousResponseModel)
                          {
                            if (((AuthStatusEndpointResponse)paramAnonymousResponseModel).isSuccess()) {
                              AccountUIHelper.a(a, paramString1, paramString2, paramString3, localObject2, localObject3, localObject4, localObject6, i2, i3, i4, bool1, localObject1, localObject8, localObject9, paramString4);
                            }
                            while (AccountUIHelper.l() == null) {
                              return;
                            }
                            AccountUIHelper.a(AccountUIHelper.l(), "Enter a valid zip code.");
                          }
                        };
                        new AuthServiceImpl().b(paramContext, (String)localObject1, (String)localObject9, paramString1);
                        return;
                      }
                    }
                  }
                }
              }
            }
            localObject1 = null;
          }
          i1 = 0;
          bool1 = false;
        }
        i4 = i8;
        i3 = i7;
        i2 = i6;
      }
    }
  }
  
  public static void a(Context paramContext, final String paramString1, final String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString8, String paramString9, String paramString10, final String paramString11)
  {
    paramString11 = new ResponseModelListener()
    {
      public final void a()
      {
        AccountUIHelper.d();
        AccountUIHelper.c();
        AccountUIHelper.b(a, AccountUIHelper.i(), paramString1, "There was an issue creating your account. Please try again later.");
        AccountUIHelper.f(a, "CBS Create Account", "There was an issue creating your account. Please try again later.");
        AccountUIHelper.b();
      }
      
      public final void a(final ResponseModel paramAnonymousResponseModel)
      {
        AccountUIHelper.d();
        if (a != null)
        {
          if ((paramAnonymousResponseModel == null) || (!(paramAnonymousResponseModel instanceof CreateEndpointResponse))) {
            break label167;
          }
          paramAnonymousResponseModel = (CreateEndpointResponse)paramAnonymousResponseModel;
          if (paramAnonymousResponseModel.isSuccess())
          {
            paramAnonymousResponseModel = Long.valueOf(paramAnonymousResponseModel.getUserId()).toString();
            String str = AccountUIHelper.c(a);
            AccountUIHelper.d();
            AccountUIHelper.d(a, paramAnonymousResponseModel, str);
            AccountUIHelper.a(a, false, paramString11, null);
            AccountUIHelper.a(a, AccountUIHelper.i(), paramString1);
          }
        }
        else
        {
          return;
        }
        if (paramString2 == null) {}
        for (paramAnonymousResponseModel = AccountUIHelper.a(paramAnonymousResponseModel);; paramAnonymousResponseModel = AccountUIHelper.b(paramAnonymousResponseModel))
        {
          AccountUIHelper.b(a, AccountUIHelper.i(), paramString1, paramAnonymousResponseModel);
          AccountUIHelper.a(AccountUIHelper.l(), paramAnonymousResponseModel);
          paramAnonymousResponseModel = (ScrollView)AccountUIHelper.l().findViewById(2131689791);
          AccountUIHelper.d();
          paramAnonymousResponseModel.post(new Runnable()
          {
            public final void run()
            {
              paramAnonymousResponseModel.smoothScrollTo(0, 0);
            }
          });
          return;
        }
        label167:
        AccountUIHelper.c();
        AccountUIHelper.b(a, AccountUIHelper.i(), paramString1, "There was an issue creating your account. Please try again later.");
        AccountUIHelper.f(a, "CBS Create Account", "There was an issue creating your account. Please try again later.");
        AccountUIHelper.b();
      }
    };
    AuthServiceImpl localAuthServiceImpl = new AuthServiceImpl();
    if (paramString2 == null)
    {
      localAuthServiceImpl.a(paramContext, paramString4, paramString5, paramString6, paramString7, paramInt1, paramInt2, paramInt3, paramBoolean, paramString8, paramString9, paramString10, paramString11);
      return;
    }
    localAuthServiceImpl.a(paramContext, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramInt1, paramInt2, paramInt3, paramBoolean, paramString8, paramString9, paramString10, paramString11);
  }
  
  private static void a(final Context paramContext, final String paramString1, final String paramString2, final String paramString3, final String paramString4, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i3 = 8;
    int i1 = 0;
    new StringBuilder("showCreateDialog provider: ").append(paramString1).append(" token: ").append(paramString2).append(" secret: ").append(paramString3);
    if ((paramContext instanceof NavigationActivity))
    {
      localObject1 = (NavigationActivity)paramContext;
      if (!((NavigationActivity)localObject1).isFinishing())
      {
        if ((!TextUtils.isEmpty(paramString2)) || (!TextUtils.isEmpty(paramString1))) {
          break label90;
        }
        ((NavigationActivity)localObject1).a(true, paramString4, false);
        SVODPopupHelper.c();
      }
    }
    label90:
    label139:
    while (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
    {
      do
      {
        return;
      } while (TextUtils.isEmpty(paramString1));
      switch (paramString1.hashCode())
      {
      default: 
        i1 = -1;
        switch (i1)
        {
        default: 
          paramContext = SocialNames.b;
        }
        break;
      }
      for (;;)
      {
        ((NavigationActivity)localObject1).a(new SocialProvider(paramContext, paramString2, paramString3));
        return;
        if (!paramString1.equals("facebook")) {
          break;
        }
        break label139;
        if (!paramString1.equals("google")) {
          break;
        }
        i1 = 1;
        break label139;
        if (!paramString1.equals("twitter")) {
          break;
        }
        i1 = 2;
        break label139;
        paramContext = SocialNames.a;
        continue;
        paramContext = SocialNames.b;
        continue;
        paramContext = SocialNames.c;
      }
    }
    Object localObject1 = new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        AccountUIHelper.d();
        if (a) {
          AccountUIHelper.h(paramContext);
        }
        AccountUIHelper.b = false;
        AccountUIHelper.k();
      }
    };
    Object localObject3 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.l().dismiss();
        AccountUIHelper.d(a);
      }
    };
    View.OnClickListener local11 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.l().dismiss();
        AccountUIHelper.e(a);
      }
    };
    Object localObject2 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.l().dismiss();
        AccountUIHelper.f(a);
      }
    };
    Dialog localDialog = new Dialog(paramContext, 2131427561);
    e = localDialog;
    localDialog.setContentView(2130903112);
    e.setCancelable(true);
    if (paramBoolean2)
    {
      e.findViewById(2131689793).setVisibility(0);
      e.findViewById(2131689796).setVisibility(0);
      ((TextView)e.findViewById(2131689795)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          AccountUIHelper.d();
          AccountUIHelper.c();
          AccountUIHelper.setFrom("");
          AccountUIHelper.b(a, "CBS ALL ACCESS Sign In");
        }
      });
    }
    int i2;
    if ((paramString1 != null) && (paramString2 != null))
    {
      i1 = 1;
      if (i1 == 0) {
        break label722;
      }
      e.findViewById(2131689680).setVisibility(8);
      e.findViewById(2131689667).setVisibility(8);
      e.findViewById(2131689797).setVisibility(8);
      localObject2 = Action.bl;
      localObject3 = new HashMap();
      ((HashMap)localObject3).put("events", "event8");
      ((HashMap)localObject3).put("appState", "cbscom:" + k);
      ((HashMap)localObject3).put("From", k);
      AnalyticsManager.a(paramContext, (Action)localObject2, (HashMap)localObject3);
      localObject2 = (EditText)e.findViewById(2131689802);
      if (localObject2 != null)
      {
        ((EditText)localObject2).setTypeface(Typeface.DEFAULT);
        ((EditText)localObject2).setTransformationMethod(PasswordTransformationMethod.getInstance());
        if (i1 == 0) {
          break label876;
        }
        i2 = 8;
        label576:
        ((EditText)localObject2).setVisibility(i2);
      }
      localObject2 = (EditText)e.findViewById(2131689803);
      if (localObject2 != null)
      {
        ((EditText)localObject2).setTypeface(Typeface.DEFAULT);
        ((EditText)localObject2).setTransformationMethod(PasswordTransformationMethod.getInstance());
        if (i1 == 0) {
          break label882;
        }
        i1 = i3;
        label627:
        ((EditText)localObject2).setVisibility(i1);
      }
      setupCreateDialog(paramContext);
      if (paramString1 == null) {
        break label888;
      }
      e.setTitle("Welcome To CBS");
    }
    for (;;)
    {
      e.setOnCancelListener((DialogInterface.OnCancelListener)localObject1);
      ((TextView)e.findViewById(2131690353)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          AccountUIHelper.d();
          AccountUIHelper.a(a, paramString1, paramString2, paramString3, paramString4);
        }
      });
      ((TextView)e.findViewById(2131690352)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          AccountUIHelper.l().cancel();
        }
      });
      e.show();
      return;
      i1 = 0;
      break;
      label722:
      ((ImageButton)e.findViewById(2131690281)).setOnClickListener((View.OnClickListener)localObject3);
      ((ImageButton)e.findViewById(2131689704)).setOnClickListener(local11);
      localObject3 = (ImageButton)e.findViewById(2131690339);
      if (k(paramContext))
      {
        ((ImageButton)localObject3).setOnClickListener((View.OnClickListener)localObject2);
        ((ImageButton)localObject3).setVisibility(0);
      }
      for (;;)
      {
        localObject2 = Action.bq;
        localObject3 = new HashMap();
        ((HashMap)localObject3).put("events", "event8");
        ((HashMap)localObject3).put("appState", "cbscom:" + k);
        ((HashMap)localObject3).put("From", k);
        AnalyticsManager.a(paramContext, (Action)localObject2, (HashMap)localObject3);
        break;
        ((ImageButton)localObject3).setVisibility(4);
      }
      label876:
      i2 = 0;
      break label576;
      label882:
      i1 = 0;
      break label627;
      label888:
      e.setTitle("Create a FREE CBS Account");
    }
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    a(paramContext, null, null, null, null, paramBoolean, false);
  }
  
  public static void a(Context paramContext, final boolean paramBoolean, final DoneListener paramDoneListener, final String paramString1, final String paramString2)
  {
    Util.a((Activity)paramContext);
    paramDoneListener = new ResponseModelListener()
    {
      public final void a()
      {
        AccountUIHelper.c();
        AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
        AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
        AccountUIHelper.h(a);
        if (paramDoneListener != null) {
          paramDoneListener.a(paramString1);
        }
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if ((a != null) && (((Activity)a).isFinishing())) {
          return;
        }
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof AuthStatusEndpointResponse)))
        {
          AccountUIHelper.d();
          paramAnonymousResponseModel = (AuthStatusEndpointResponse)paramAnonymousResponseModel;
          if ((paramAnonymousResponseModel.isLoggedIn()) || (paramAnonymousResponseModel.isSuccess()))
          {
            AccountUIHelper.d();
            AccountUIHelper.c();
            if (paramBoolean)
            {
              AccountUIHelper.d();
              AccountUIHelper.a(a, AccountUIHelper.i(), paramAnonymousResponseModel, paramDoneListener, paramString2);
              return;
            }
            AccountUIHelper.d();
            long l = paramAnonymousResponseModel.getUserId();
            String str = AccountUIHelper.c(a);
            AccountUIHelper.d(a, String.valueOf(l), str);
            AccountUIHelper.a(a, paramAnonymousResponseModel, AccountUIHelper.i(), paramDoneListener, paramString2, paramString1);
            return;
          }
          AccountUIHelper.d();
          AccountUIHelper.c();
          AccountUIHelper.b();
          AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
          AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
          AccountUIHelper.a(a, paramDoneListener);
          return;
        }
        AccountUIHelper.d();
        AccountUIHelper.c();
        AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
        AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
        AccountUIHelper.a(a, paramDoneListener);
      }
    };
    new AuthServiceImpl().a(paramContext, paramDoneListener);
  }
  
  public static void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    a(paramContext, paramBoolean, null, paramString1, paramString2);
  }
  
  public static void a(View paramView, String paramString)
  {
    Object localObject = paramView.findViewById(2131689799);
    if ((localObject != null) && ((localObject instanceof TextView)))
    {
      localObject = (TextView)localObject;
      ((TextView)localObject).setText(paramString);
      ((TextView)localObject).setVisibility(0);
      if (p != null)
      {
        p.setEnabled(true);
        p.setClickable(true);
      }
    }
    paramView = paramView.findViewById(2131689815);
    if ((paramView != null) && ((paramView instanceof TextView)))
    {
      paramView = (TextView)paramView;
      paramView.setText(paramString);
      paramView.setVisibility(0);
      if (p != null)
      {
        p.setEnabled(true);
        p.setClickable(true);
      }
    }
  }
  
  public static void a(RefreshAccountListener paramRefreshAccountListener)
  {
    a.add(paramRefreshAccountListener);
  }
  
  public static void a(VideoData paramVideoData)
  {
    q = paramVideoData;
  }
  
  public static boolean a()
  {
    try
    {
      boolean bool = l;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static boolean a(String paramString)
  {
    boolean bool = false;
    if ((paramString == null) || (paramString.equals(""))) {
      bool = true;
    }
    return bool;
  }
  
  private static boolean a(String paramString1, String paramString2, StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    if (a(paramString1))
    {
      paramStringBuilder.append(paramString2);
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public static String b(CreateEndpointResponse paramCreateEndpointResponse)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramCreateEndpointResponse = paramCreateEndpointResponse.getErrors();
    if (paramCreateEndpointResponse != null)
    {
      Iterator localIterator = paramCreateEndpointResponse.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramCreateEndpointResponse = (Map.Entry)localIterator.next();
        String str1 = (String)paramCreateEndpointResponse.getKey();
        String str2 = (String)paramCreateEndpointResponse.getValue();
        label83:
        label140:
        int i1;
        if (str1.equals("firstName"))
        {
          paramCreateEndpointResponse = "First name";
          switch (str2.hashCode())
          {
          default: 
            i1 = -1;
          }
        }
        for (;;)
        {
          switch (i1)
          {
          default: 
            break;
          case 0: 
            localStringBuilder.append(c(paramCreateEndpointResponse)).append(" is required. ");
            break;
            paramCreateEndpointResponse = str1;
            if (!str1.equals("lastName")) {
              break label83;
            }
            paramCreateEndpointResponse = "Last name";
            break label83;
            if (!str2.equals("REQUIRED")) {
              break label140;
            }
            i1 = 0;
            continue;
            if (!str2.equals("EMAILALREADYEXISTS")) {
              break label140;
            }
            i1 = 1;
            continue;
            if (!str2.equals("TOOYOUNG")) {
              break label140;
            }
            i1 = 2;
            continue;
            if (!str2.equals("INVALID")) {
              break label140;
            }
            i1 = 3;
            continue;
            if (!str2.equals("BADPROVIDER")) {
              break label140;
            }
            i1 = 4;
          }
        }
        localStringBuilder.append("Email already exists. ");
        continue;
        paramCreateEndpointResponse = new StringBuilder("");
        paramCreateEndpointResponse.append("We are sorry, but we are unable to create an account for you at this time. ");
        return paramCreateEndpointResponse.toString();
        localStringBuilder.append(c(paramCreateEndpointResponse)).append(" isn't valid. ");
        continue;
        localStringBuilder.append("Social provider isn't valid. ");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static void b()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      RefreshAccountListener localRefreshAccountListener = (RefreshAccountListener)localIterator.next();
      if (localRefreshAccountListener != null) {
        localRefreshAccountListener.a();
      }
    }
    b = false;
  }
  
  public static void b(Context paramContext)
  {
    b(paramContext, "Sign Into CBS");
  }
  
  public static void b(Context paramContext, ViewGroup paramViewGroup)
  {
    if (paramViewGroup != null)
    {
      paramViewGroup.removeAllViews();
      Object localObject1 = LayoutInflater.from(paramContext).inflate(2130903065, paramViewGroup, false);
      if (localObject1 != null) {
        paramViewGroup.addView((View)localObject1);
      }
      String str = UserDescription.ANONYMOUS.name();
      Object localObject2 = AuthStatusManager.getUserAuthStatus();
      localObject1 = str;
      if (localObject2 != null)
      {
        localObject2 = ((AuthStatusEndpointResponse)localObject2).getUserStatus();
        localObject1 = str;
        if (localObject2 != null) {
          localObject1 = ((UserStatus)localObject2).getDescription();
        }
      }
      if ((((String)localObject1).equals(UserDescription.SUBSCRIBER.name())) || (((String)localObject1).equals(UserDescription.SUSPENDED.name())))
      {
        localObject1 = paramViewGroup.findViewById(2131689632);
        if ((localObject1 != null) && ((localObject1 instanceof TextView))) {
          ((View)localObject1).setVisibility(0);
        }
      }
      if (paramViewGroup != null)
      {
        localObject1 = paramViewGroup.findViewById(2131689631);
        if ((localObject1 != null) && ((localObject1 instanceof Button))) {
          ((Button)localObject1).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              AccountUIHelper.d();
              AccountUIHelper.h(a);
            }
          });
        }
        localObject1 = paramViewGroup.findViewById(2131689628);
        if ((localObject1 != null) && ((localObject1 instanceof TextView)))
        {
          localObject1 = (TextView)localObject1;
          str = g(paramContext);
          if (str != null) {
            ((TextView)localObject1).setText("You are signed in as " + str);
          }
        }
        localObject1 = paramViewGroup.findViewById(2131689629);
        if ((localObject1 != null) && ((localObject1 instanceof TextView))) {
          ((TextView)localObject1).setText(Util.z(paramContext));
        }
        localObject1 = paramViewGroup.findViewById(2131689630);
        if ((localObject1 != null) && ((localObject1 instanceof TextView))) {
          ((TextView)localObject1).setText(Util.A(paramContext));
        }
        paramViewGroup = paramViewGroup.findViewById(2131689627);
        if ((paramViewGroup != null) && ((paramViewGroup instanceof TextView))) {
          ((TextView)paramViewGroup).setText(Util.u(paramContext));
        }
      }
    }
  }
  
  public static void b(final Context paramContext, final String paramString)
  {
    int i3 = 1;
    int i2 = 1;
    if ((paramContext instanceof NavigationActivity))
    {
      paramContext = (NavigationActivity)paramContext;
      if (!paramContext.isFinishing())
      {
        paramContext.n();
        SVODPopupHelper.c();
      }
    }
    while (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing())) {
      return;
    }
    Object localObject1 = new Dialog(new ContextThemeWrapper(paramContext, 16973939));
    d = (Dialog)localObject1;
    ((Dialog)localObject1).setContentView(2130903115);
    d.getWindow().setSoftInputMode(16);
    d.setCancelable(true);
    d.setTitle(paramString);
    localObject1 = (EditText)d.findViewById(2131689817);
    final Object localObject2 = (EditText)d.findViewById(2131689820);
    ((EditText)localObject2).setTransformationMethod(PasswordTransformationMethod.getInstance());
    d.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        AccountUIHelper.d();
        AccountUIHelper.g().getWindow().setSoftInputMode(48);
        if (!CBSPlayer.a()) {
          AccountUIHelper.b();
        }
      }
    });
    d.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public final void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        ((Dialog)paramAnonymousDialogInterface).getWindow().setSoftInputMode(48);
      }
    });
    Object localObject4 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.h().setEnabled(false);
        AccountUIHelper.h().setClickable(false);
        if (a != null) {}
        for (paramAnonymousView = a.getText().toString();; paramAnonymousView = null)
        {
          localObject2.setContentDescription("password field");
          String str = localObject2.getText().toString();
          if ((paramAnonymousView != null) && (!paramAnonymousView.equals("")) && (!str.equals("")))
          {
            ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(localObject2.getWindowToken(), 0);
            AccountUIHelper.c(paramContext, paramAnonymousView, str, paramString);
            return;
          }
          AccountUIHelper.b(paramContext, AccountUIHelper.i(), "You must provide an email address and a password.");
          AccountUIHelper.a(AccountUIHelper.g(), "You must provide an email address and a password.");
          return;
        }
      }
    };
    Object localObject3 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.setLoginIsShowing(false);
        AccountUIHelper.g().dismiss();
        AccountUIHelper.d(a);
      }
    };
    View.OnClickListener local5 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.setLoginIsShowing(false);
        AccountUIHelper.g().dismiss();
        AccountUIHelper.e(a);
      }
    };
    localObject1 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        AccountUIHelper.setLoginIsShowing(false);
        AccountUIHelper.g().dismiss();
        AccountUIHelper.f(a);
      }
    };
    localObject2 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.j().setClickable(false);
        AccountUIHelper.j().setEnabled(false);
        AccountUIHelper.d();
        AccountUIHelper.setLoginIsShowing(false);
        AccountUIHelper.g().dismiss();
        AccountUIHelper.a(a, false);
      }
    };
    View.OnClickListener local8 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.g().dismiss();
        AccountUIHelper.setLoginIsShowing(false);
        AccountUIHelper.a(a);
      }
    };
    Object localObject5 = (TextView)d.findViewById(2131689818);
    MyShowDataSource localMyShowDataSource;
    List localList;
    if (k.equals("My CBS"))
    {
      if (Util.r(paramContext)) {
        break label1109;
      }
      localMyShowDataSource = new MyShowDataSource(paramContext);
      localMyShowDataSource.a();
      localList = localMyShowDataSource.getAllShows();
      localMyShowDataSource.b();
      if ((localList == null) || (localList.size() <= 0)) {
        break label1109;
      }
    }
    label506:
    label547:
    label588:
    label621:
    label979:
    label988:
    label1000:
    label1009:
    label1018:
    label1099:
    label1104:
    label1109:
    for (int i1 = 1;; i1 = 0)
    {
      ((TextView)localObject5).setVisibility(0);
      if (i1 != 0) {
        ((TextView)localObject5).setText("Good news! We've improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!");
      }
      for (;;)
      {
        if ((((TextView)localObject5).getText() != null) && (!((TextView)localObject5).getText().equals("")))
        {
          localObject5 = d.findViewById(2131689819);
          if (localObject5 != null) {
            ((View)localObject5).setVisibility(0);
          }
        }
        localObject5 = d.findViewById(2131689822);
        if ((localObject5 != null) && ((localObject5 instanceof Button)))
        {
          localObject5 = (Button)localObject5;
          p = (Button)localObject5;
          ((Button)localObject5).setOnClickListener((View.OnClickListener)localObject4);
        }
        localObject4 = d.findViewById(2131689821);
        if (localObject4 != null) {
          ((View)localObject4).setOnClickListener(local8);
        }
        ((ImageButton)d.findViewById(2131690281)).setOnClickListener((View.OnClickListener)localObject3);
        ((ImageButton)d.findViewById(2131689704)).setOnClickListener(local5);
        localObject3 = (ImageButton)d.findViewById(2131690339);
        if (!k(paramContext)) {
          break label979;
        }
        ((ImageButton)localObject3).setVisibility(0);
        ((ImageButton)localObject3).setOnClickListener((View.OnClickListener)localObject1);
        o = d.findViewById(2131689825);
        i1 = i3;
        if (o != null)
        {
          if (!paramString.equals("CBS ALL ACCESS Sign In")) {
            break label988;
          }
          o.setVisibility(8);
          i1 = 0;
          o.setOnClickListener((View.OnClickListener)localObject2);
        }
        localObject1 = d.findViewById(2131689824);
        if (localObject1 != null)
        {
          if (!paramString.equals("CBS ALL ACCESS Sign In")) {
            break label1000;
          }
          ((View)localObject1).setVisibility(8);
        }
        localObject1 = d.findViewById(2131689823);
        if (localObject1 != null)
        {
          if (!paramString.equals("CBS ALL ACCESS Sign In")) {
            break label1009;
          }
          ((View)localObject1).setVisibility(8);
        }
        d.show();
        if (i1 == 0) {
          break label1018;
        }
        paramString = Action.bj;
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("events", "event22");
        ((HashMap)localObject1).put("appState", "cbscom:" + k);
        ((HashMap)localObject1).put("From", k);
        AnalyticsManager.a(paramContext, paramString, (HashMap)localObject1);
        return;
        ((TextView)localObject5).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!");
        continue;
        if (!k.equals("Settings")) {
          break;
        }
        ((TextView)localObject5).setVisibility(0);
        ((TextView)localObject5).setText("Sign in now to join the conversation with fellow fans. Don't have a CBS Account? Sign up for FREE!");
      }
      if (k.equals("Show Page"))
      {
        if (Util.r(paramContext)) {
          break label1104;
        }
        localMyShowDataSource = new MyShowDataSource(paramContext);
        localMyShowDataSource.a();
        localList = localMyShowDataSource.getAllShows();
        localMyShowDataSource.b();
        if ((localList == null) || (localList.size() <= 0)) {
          break label1104;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        ((TextView)localObject5).setVisibility(0);
        if (i1 != 0)
        {
          ((TextView)localObject5).setText("Good news! We've improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!");
          break;
        }
        ((TextView)localObject5).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!");
        break;
        if (k.equals("Schedule"))
        {
          if (Util.r(paramContext)) {
            break label1099;
          }
          localMyShowDataSource = new MyShowDataSource(paramContext);
          localMyShowDataSource.a();
          localList = localMyShowDataSource.getAllShows();
          localMyShowDataSource.b();
          if ((localList == null) || (localList.size() <= 0)) {
            break label1099;
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          ((TextView)localObject5).setVisibility(0);
          if (i1 != 0)
          {
            ((TextView)localObject5).setText("Good news! We've improved My CBS so you can access your personalized shows list on both mobile devices and on CBS.com.  Sign in or sign up for FREE!");
            break;
          }
          ((TextView)localObject5).setText("My CBS gives you easy access to the latest episodes of your favorite CBS shows, all in one place. Sign in or sign up for FREE!");
          break;
          if (k.equals("Comments Page"))
          {
            ((TextView)localObject5).setVisibility(0);
            ((TextView)localObject5).setText("Sign in now to join the conversation with fellow fans. Don't have a CBS Account? Sign up for FREE!");
            break;
          }
          ((TextView)localObject5).setText("");
          ((TextView)localObject5).setVisibility(8);
          break;
          ((ImageButton)localObject3).setVisibility(4);
          break label506;
          o.setVisibility(0);
          i1 = i2;
          break label547;
          ((View)localObject1).setVisibility(0);
          break label588;
          ((View)localObject1).setVisibility(0);
          break label621;
          paramString = Action.bP;
          localObject1 = new HashMap();
          ((HashMap)localObject1).put("pageView", "true");
          ((HashMap)localObject1).put("events", "event22");
          ((HashMap)localObject1).put("evar_6", "CBS svod");
          ((HashMap)localObject1).put("prop_6", "CBS svod");
          ((HashMap)localObject1).put("From", k);
          AnalyticsManager.a(paramContext, paramString, (HashMap)localObject1);
          return;
        }
      }
    }
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    Action localAction = Action.bk;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event20");
    localHashMap.put("appState", "cbscom:" + paramString1);
    localHashMap.put("From", paramString1);
    localHashMap.put("Error", paramString2);
    localHashMap.put("evar_70", paramString2);
    localHashMap.put("prop_70", paramString2);
    AnalyticsManager.a(paramContext, localAction, localHashMap);
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Action localAction = Action.br;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event20");
    if (paramString2 != null)
    {
      localHashMap.put("evar_14", paramString2);
      localHashMap.put("prop_14", paramString2);
      localHashMap.put("Provider", paramString2);
    }
    localHashMap.put("appState", "cbscom:" + paramString1);
    localHashMap.put("From", paramString1);
    localHashMap.put("Error", paramString3);
    localHashMap.put("evar_70", paramString3);
    localHashMap.put("prop_70", paramString3);
    AnalyticsManager.a(paramContext, localAction, localHashMap);
  }
  
  public static void b(RefreshAccountListener paramRefreshAccountListener)
  {
    a.remove(paramRefreshAccountListener);
  }
  
  public static boolean b(String paramString)
  {
    return (paramString != null) && (!TextUtils.isEmpty(paramString));
  }
  
  public static String c(Context paramContext)
  {
    try
    {
      paramContext = getPackageManagergetPackageInfogetPackageName0versionName;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private static String c(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() > 0) {
        str = String.valueOf(paramString.charAt(0)).toUpperCase() + paramString.substring(1);
      }
    }
    return str;
  }
  
  public static void c()
  {
    try
    {
      if ((d != null) && (d.isShowing()))
      {
        d.dismiss();
        d = null;
      }
      if ((e != null) && (e.isShowing()))
      {
        e.dismiss();
        e = null;
      }
      return;
    }
    finally {}
  }
  
  public static void c(Context paramContext, String paramString)
  {
    a(paramContext, null, null, null, paramString, false, false);
  }
  
  public static void c(Context paramContext, String paramString1, String paramString2)
  {
    Action localAction = Action.bm;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event20");
    localHashMap.put("appState", "cbscom:" + paramString1);
    localHashMap.put("From", paramString1);
    localHashMap.put("evar_70", paramString2);
    AnalyticsManager.a(paramContext, localAction, localHashMap);
  }
  
  public static void c(Context paramContext, String paramString1, String paramString2, final String paramString3)
  {
    setEmailCache("");
    setPasswordCache("");
    paramString3 = new ResponseModelListener()
    {
      public final void a()
      {
        AccountUIHelper.d();
        if ((a != null) && (!((Activity)a).isFinishing()))
        {
          if (AccountUIHelper.g() != null)
          {
            AccountUIHelper.g().dismiss();
            AccountUIHelper.m();
          }
          AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
          AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
          AccountUIHelper.b();
        }
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        AccountUIHelper.d();
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof AuthEndpointResponse)))
        {
          if (((AuthEndpointResponse)paramAnonymousResponseModel).isSuccess())
          {
            AccountUIHelper.d();
            AccountUIHelper.e(a, paramString3);
          }
          do
          {
            return;
            AccountUIHelper.d();
            AccountUIHelper.c(a, AccountUIHelper.i(), "Invalid username/password.");
            paramAnonymousResponseModel = ((Activity)a).findViewById(2131689791);
            if (paramAnonymousResponseModel != null)
            {
              AccountUIHelper.a(paramAnonymousResponseModel, "Invalid username/password.");
              return;
            }
          } while (AccountUIHelper.g() == null);
          AccountUIHelper.a(AccountUIHelper.g(), "Invalid username/password.");
          return;
        }
        AccountUIHelper.d();
        if (AccountUIHelper.g() != null)
        {
          AccountUIHelper.g().cancel();
          AccountUIHelper.m();
        }
        AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
        AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
        AccountUIHelper.b();
      }
    };
    new AuthServiceImpl().a(paramContext, paramString1, paramString2, paramString3);
  }
  
  private static String d(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 2)) {
      return paramString;
    }
    return paramString.substring(0, 1).toUpperCase() + paramString.substring(1).toLowerCase();
  }
  
  public static void d(Context paramContext)
  {
    q();
    new FacebookServiceImplV2(paramContext).b();
  }
  
  public static void d(Context paramContext, String paramString)
  {
    a(paramContext, null, null, null, paramString, false, true);
  }
  
  public static void d(Context paramContext, String paramString1, String paramString2)
  {
    new StringBuilder("storeTOUAcceptance: ").append(paramString1).append(" version: ").append(paramString2);
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("accepted_" + paramString1, paramString2);
    paramContext.commit();
  }
  
  private static void d(Context paramContext, final String paramString1, final String paramString2, final String paramString3)
  {
    new StringBuilder("reconcileProviderToken provider: ").append(paramString1).append(" token: ").append(paramString2).append(" secret: ").append(paramString3);
    if (i)
    {
      ResponseModelListener local22 = new ResponseModelListener()
      {
        public final void a()
        {
          AccountUIHelper.d();
          AccountUIHelper.c();
          AccountUIHelper.f(a, "CBS Sign In", "There was an issue creating your account. Please try again later.");
          AccountUIHelper.b();
        }
        
        public final void a(ResponseModel paramAnonymousResponseModel)
        {
          AccountUIHelper.d();
          if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof ReconcileEndpointResponse)))
          {
            paramAnonymousResponseModel = (ReconcileEndpointResponse)paramAnonymousResponseModel;
            String str = paramAnonymousResponseModel.getRegistrationStatus();
            if (paramAnonymousResponseModel.isSuccess())
            {
              AccountUIHelper.d();
              AccountUIHelper.e(a, null);
              AccountUIHelper.e(a, AccountUIHelper.i(), paramString1);
              return;
            }
            if ((str != null) && (str.equals("NEW")))
            {
              AccountUIHelper.a(a, paramString1, paramString2, paramString3);
              return;
            }
            AccountUIHelper.c();
            AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
            AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
            AccountUIHelper.b();
            return;
          }
          AccountUIHelper.c();
          AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
          AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
          AccountUIHelper.b();
        }
      };
      new AuthServiceImpl().a(paramContext, paramString1, paramString2, paramString3, local22);
    }
  }
  
  public static void e(Context paramContext)
  {
    q();
    new Twitter(paramContext).a();
  }
  
  public static void e(Context paramContext, String paramString)
  {
    a(paramContext, true, null, paramString);
  }
  
  public static void e(Context paramContext, String paramString1, String paramString2)
  {
    int i1 = VideoUtil.getUserType();
    String str;
    switch (i1)
    {
    default: 
      str = "";
    }
    for (;;)
    {
      Action localAction = Action.bp;
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event28");
      localHashMap.put("evar_14", paramString2);
      localHashMap.put("prop_14", paramString2);
      localHashMap.put("appState", "cbscom:" + paramString1);
      localHashMap.put("From", paramString1);
      localHashMap.put("userStatusStr", str);
      AnalyticsManager.a(paramContext, localAction, localHashMap);
      AnalyticsManager.d(paramContext, Action.bH, localHashMap);
      if (i1 == 2) {
        AnalyticsManager.d(paramContext, Action.bG, localHashMap);
      }
      return;
      str = "registered";
      continue;
      str = "subscriber";
      continue;
      str = "suspended";
      continue;
      str = "exsubscriber";
    }
  }
  
  public static String f(Context paramContext, String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("accepted_" + paramString, null);
  }
  
  public static void f(Context paramContext)
  {
    q();
    paramContext.startActivity(new Intent(paramContext, GoogleIntermediateActivity.class));
  }
  
  public static void f(Context paramContext, String paramString1, String paramString2)
  {
    if (((paramContext instanceof Activity)) && (!((Activity)paramContext).isFinishing()))
    {
      paramContext = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131427561));
      paramContext.setMessage(paramString2).setTitle(paramString1).setNegativeButton("Ok", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      });
      paramContext = paramContext.create();
      paramContext.setCancelable(true);
      paramContext.show();
    }
  }
  
  public static String g(Context paramContext)
  {
    if (Util.u(paramContext) == null) {
      return null;
    }
    Object localObject = PreferenceManager.getDefaultSharedPreferences(paramContext);
    paramContext = d(((SharedPreferences)localObject).getString("firstName", null));
    String str = d(((SharedPreferences)localObject).getString("lastName", null));
    localObject = new StringBuilder().append(paramContext);
    if ((str != null) && (str.length() > 0)) {}
    for (paramContext = " " + str.substring(0, 1);; paramContext = "") {
      return paramContext;
    }
  }
  
  public static String getEmailCache()
  {
    return m;
  }
  
  public static String getFrom()
  {
    try
    {
      String str = k;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static String getPasswordCache()
  {
    return n;
  }
  
  public static VideoData getVideoData()
  {
    return q;
  }
  
  protected static void h(Context paramContext)
  {
    a(paramContext, null);
  }
  
  public static void i(Context paramContext)
  {
    Object localObject;
    if ((Util.y(paramContext) == null) && (!b))
    {
      localObject = Util.E(paramContext);
      if (localObject == null) {
        break label55;
      }
      d(paramContext, "facebook", (String)localObject, null);
      b = true;
    }
    for (;;)
    {
      if ((l) && (!b)) {
        b();
      }
      l = false;
      return;
      label55:
      localObject = Util.F(paramContext);
      if (localObject != null)
      {
        d(paramContext, "google", (String)localObject, null);
        b = true;
      }
      else
      {
        localObject = Util.D(paramContext);
        if ((localObject != null) && (b != null))
        {
          d(paramContext, "twitter", a, b);
          b = true;
        }
      }
    }
  }
  
  private static boolean k(Context paramContext)
  {
    boolean bool = true;
    if (e.a(paramContext) != 0) {
      bool = false;
    }
    return bool;
  }
  
  private static void l(Context paramContext)
  {
    ListView localListView = (ListView)((Activity)paramContext).findViewById(2131690173);
    CbsMenuAdapter localCbsMenuAdapter;
    if (localListView != null)
    {
      localCbsMenuAdapter = (CbsMenuAdapter)localListView.getAdapter();
      if (Util.u(paramContext) != null) {
        break label56;
      }
      paramContext = paramContext.getString(2131231259);
      localListView.getChildAt(0).setEnabled(true);
    }
    for (;;)
    {
      localCbsMenuAdapter.a(paramContext);
      return;
      label56:
      paramContext = g(paramContext);
      localListView.getChildAt(0).setEnabled(false);
    }
  }
  
  private static boolean p()
  {
    try
    {
      boolean bool = j;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static void q()
  {
    l = true;
    c();
    i = true;
    b = false;
  }
  
  public static void setEmailCache(String paramString)
  {
    m = paramString;
  }
  
  public static void setFrom(String paramString)
  {
    try
    {
      k = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public static void setIsPlayerActive(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public static void setLoginIsShowing(boolean paramBoolean)
  {
    try
    {
      i = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void setPasswordCache(String paramString)
  {
    n = paramString;
  }
  
  public static void setReconcileDialogShowing(boolean paramBoolean)
  {
    try
    {
      b = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void setSocialWasShowing(boolean paramBoolean)
  {
    try
    {
      l = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void setTermsDialogIsShowing(boolean paramBoolean)
  {
    try
    {
      j = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void setupCreateDialog(Context paramContext)
  {
    Object localObject = Calendar.getInstance();
    int i1 = ((Calendar)localObject).get(1);
    int i2 = ((Calendar)localObject).get(2);
    int i3 = ((Calendar)localObject).get(5);
    localObject = e.findViewById(2131689806);
    if ((localObject != null) && ((localObject instanceof DatePicker))) {
      ((DatePicker)localObject).updateDate(i1, i2, i3);
    }
    localObject = (Spinner)e.findViewById(2131689813);
    if (localObject != null)
    {
      ((Spinner)localObject).setSelection(0, false);
      ((Spinner)localObject).setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(final AdapterView<?> paramAnonymousAdapterView, final View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = AccountUIHelper.l().findViewById(2131689804);
          paramAnonymousView = (ScrollView)AccountUIHelper.l().findViewById(2131689791);
          paramAnonymousView.post(new Runnable()
          {
            public final void run()
            {
              paramAnonymousView.smoothScrollTo(0, paramAnonymousAdapterView.getTop());
              paramAnonymousAdapterView.requestFocus();
            }
          });
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
    }
    localObject = (CheckBox)e.findViewById(2131689814);
    SpannableString localSpannableString = new SpannableString(paramContext.getString(2131231275));
    localSpannableString.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        paramAnonymousView = new Intent("android.intent.action.VIEW");
        paramAnonymousView.setData(Uri.parse("http://legalterms.cbsinteractive.com/terms-of-use"));
        a.startActivity(paramAnonymousView);
      }
    }, 109, 121, 33);
    localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131558440)), 109, 121, 33);
    localSpannableString.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        paramAnonymousView = new Intent("android.intent.action.VIEW");
        paramAnonymousView.setData(Uri.parse("http://legalterms.cbsinteractive.com/privacy"));
        a.startActivity(paramAnonymousView);
      }
    }, 122, 138, 33);
    localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131558440)), 122, 138, 33);
    ((CheckBox)localObject).setMovementMethod(LinkMovementMethod.getInstance());
    ((CheckBox)localObject).setText(localSpannableString);
    localSpannableString.setSpan(new ClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        AccountUIHelper.d();
        paramAnonymousView = new Intent("android.intent.action.VIEW");
        paramAnonymousView.setData(Uri.parse("http://legalterms.cbsinteractive.com/video-services"));
        a.startActivity(paramAnonymousView);
      }
    }, 142, 163, 33);
    localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131558440)), 142, 163, 33);
    ((CheckBox)localObject).setMovementMethod(LinkMovementMethod.getInstance());
    ((CheckBox)localObject).setText(localSpannableString);
  }
  
  public static abstract interface RefreshAccountListener
  {
    public abstract void a();
  }
  
  static final class a
    implements ResponseModelListener
  {
    private Context a;
    private DoneListener b;
    private String c;
    
    public a(Context paramContext, DoneListener paramDoneListener, String paramString)
    {
      a = paramContext;
      b = paramDoneListener;
      c = paramString;
    }
    
    public final void a()
    {
      AccountUIHelper.d();
      AccountUIHelper.b();
      if (b != null)
      {
        b.a(c);
        return;
      }
      SVODPopupHelper.c(a, c);
    }
    
    public final void a(ResponseModel paramResponseModel)
    {
      Intent localIntent = null;
      AccountUIHelper.d();
      Object localObject1;
      if ((paramResponseModel != null) && ((paramResponseModel instanceof HomeEndpointResponse)))
      {
        localObject1 = (HomeEndpointResponse)paramResponseModel;
        paramResponseModel = ((HomeEndpointResponse)localObject1).getMarqueeResponse();
        if (paramResponseModel == null) {
          break label193;
        }
        paramResponseModel = paramResponseModel.getDeviceHomeList();
        if (paramResponseModel == null) {
          break label193;
        }
      }
      label193:
      for (paramResponseModel = (DeviceHome[])paramResponseModel.toArray(new DeviceHome[paramResponseModel.size()]);; paramResponseModel = null)
      {
        Object localObject2 = ((HomeEndpointResponse)localObject1).getScheduleResponse();
        localObject1 = localIntent;
        if (localObject2 != null)
        {
          localObject2 = ((ScheduleResponse)localObject2).getScheduleList();
          localObject1 = localIntent;
          if (localObject2 != null) {
            localObject1 = (Episode[])((List)localObject2).toArray(new Episode[((List)localObject2).size()]);
          }
        }
        if (a != null)
        {
          localIntent = ((Activity)a).getIntent();
          if (localIntent != null)
          {
            localIntent.removeExtra("homeMarquee");
            localIntent.removeExtra("episodeSchedule");
            localIntent.putExtra("homeMarquee", paramResponseModel);
            localIntent.putExtra("episodeSchedule", (Parcelable[])localObject1);
          }
        }
        AccountUIHelper.b();
        if (b != null)
        {
          b.a(c);
          return;
        }
        SVODPopupHelper.c(a, c);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */