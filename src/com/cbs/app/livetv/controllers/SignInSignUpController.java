package com.cbs.app.livetv.controllers;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.livetv.model.SocialNames;
import com.cbs.app.livetv.model.SocialProvider;
import com.cbs.app.livetv.util.ResponseErrorHelper;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.social.TwitterOAuthTokens;
import com.cbs.app.view.FacebookIntermediateActivityV2;
import com.cbs.app.view.GoogleIntermediateActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.TwitterWebOAuthActivity;
import com.cbs.app.view.fragments.TOUDialogFragment;
import com.cbs.app.view.fragments.TOUDialogFragment.TOUDialogListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.model.rest.AuthEndpointResponse;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.CreateEndpointResponse;
import com.cbs.app.view.model.rest.ReconcileEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

public class SignInSignUpController
{
  private static final String a = SignInSignUpController.class.getSimpleName();
  private Context b;
  private boolean c;
  private String d;
  private SignInSignUpCallBack e;
  
  public SignInSignUpController(Context paramContext, String paramString)
  {
    b = paramContext;
    d = paramString;
  }
  
  public final void a()
  {
    c = true;
    e = null;
  }
  
  public final void a(int paramInt)
  {
    final Object localObject;
    switch (paramInt)
    {
    default: 
      localObject = null;
    }
    for (;;)
    {
      if (localObject != null)
      {
        new StringBuilder("reconcileProviderToken provider: ").append(((SocialProvider)localObject).getNameString()).append(" token: ").append(b).append(" secret: ").append(c);
        ResponseModelListener local5 = new ResponseModelListener()
        {
          public final void a()
          {
            if (!SignInSignUpController.a(SignInSignUpController.this))
            {
              SignInSignUpController.b();
              SignInSignUpController.a(SignInSignUpController.this, 2004);
            }
          }
          
          public final void a(ResponseModel paramAnonymousResponseModel)
          {
            String str;
            if (!SignInSignUpController.a(SignInSignUpController.this))
            {
              SignInSignUpController.b();
              if ((paramAnonymousResponseModel == null) || (!(paramAnonymousResponseModel instanceof ReconcileEndpointResponse))) {
                break label154;
              }
              paramAnonymousResponseModel = (ReconcileEndpointResponse)paramAnonymousResponseModel;
              str = paramAnonymousResponseModel.getRegistrationStatus();
              if (!paramAnonymousResponseModel.isSuccess()) {
                break label81;
              }
              SignInSignUpController.b();
              SignInSignUpController.a(SignInSignUpController.this, true, null, null);
              AccountUIHelper.e(SignInSignUpController.c(SignInSignUpController.this), SignInSignUpController.d(SignInSignUpController.this), localObject.getNameString());
            }
            label81:
            do
            {
              return;
              if ((str == null) || (!str.equals("NEW"))) {
                break;
              }
            } while (SignInSignUpController.b(SignInSignUpController.this) == null);
            SignInSignUpController.b(SignInSignUpController.this).a(1005, localObject);
            return;
            AccountUIHelper.c(SignInSignUpController.c(SignInSignUpController.this), SignInSignUpController.d(SignInSignUpController.this), "There was an issue logging into your account. Please try again.");
            SignInSignUpController.a(SignInSignUpController.this, 2004);
            return;
            label154:
            AccountUIHelper.c(SignInSignUpController.c(SignInSignUpController.this), SignInSignUpController.d(SignInSignUpController.this), "There was an issue logging into your account. Please try again.");
            SignInSignUpController.a(SignInSignUpController.this, 2004);
          }
        };
        new AuthServiceImpl().a(b, ((SocialProvider)localObject).getNameString(), b, c, local5);
      }
      return;
      localObject = Util.E(b);
      if (localObject == null) {
        break;
      }
      localObject = new SocialProvider(SocialNames.a, (String)localObject, null);
      continue;
      localObject = Util.F(b);
      if (localObject == null) {
        break;
      }
      localObject = new SocialProvider(SocialNames.b, (String)localObject, null);
      continue;
      localObject = Util.D(b);
      if (localObject == null) {
        break;
      }
      localObject = new SocialProvider(SocialNames.c, a, b);
    }
  }
  
  public final void a(final Person paramPerson, final String paramString)
  {
    paramString = new ResponseModelListener()
    {
      public final void a()
      {
        SignInSignUpController.a(SignInSignUpController.this, 2004);
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if (!SignInSignUpController.a(SignInSignUpController.this))
        {
          if (!((AuthStatusEndpointResponse)paramAnonymousResponseModel).isSuccess()) {
            break label36;
          }
          SignInSignUpController.a(SignInSignUpController.this, paramPerson, paramString);
        }
        label36:
        while (SignInSignUpController.b(SignInSignUpController.this) == null) {
          return;
        }
        SignInSignUpController.b(SignInSignUpController.this).a(2011, null);
      }
    };
    new AuthServiceImpl().b(b, e, d, paramString);
    Persona = "Patrick";
  }
  
  public final void a(SocialNames paramSocialNames, Fragment paramFragment)
  {
    switch (7.a[paramSocialNames.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramFragment.startActivityForResult(new Intent(b, FacebookIntermediateActivityV2.class), 300);
      return;
    case 2: 
      paramFragment.startActivityForResult(new Intent(b, GoogleIntermediateActivity.class), 302);
      return;
    }
    paramFragment.startActivityForResult(new Intent(b, TwitterWebOAuthActivity.class), 301);
  }
  
  public final void a(String paramString1, final AuthStatusEndpointResponse paramAuthStatusEndpointResponse, final String paramString2)
  {
    final String str = String.valueOf(paramAuthStatusEndpointResponse.getUserId());
    final Object localObject1 = AccountUIHelper.f(b, str);
    Object localObject2 = AccountUIHelper.c(b);
    if ((localObject1 != null) && (localObject2 != null) && (((String)localObject1).equals(localObject2)))
    {
      AccountUIHelper.a(b, paramAuthStatusEndpointResponse, paramString1, null, paramString2);
      if (e != null) {
        e.a(1004, str);
      }
      return;
    }
    long l = paramAuthStatusEndpointResponse.getUserId();
    str = AccountUIHelper.c(b);
    localObject1 = new TOUDialogFragment();
    localObject2 = new Bundle();
    ((Bundle)localObject2).putString("dialog_title", "Our Terms Have Changed");
    ((TOUDialogFragment)localObject1).setArguments((Bundle)localObject2);
    ((TOUDialogFragment)localObject1).setListner(new TOUDialogFragment.TOUDialogListener()
    {
      public final void a()
      {
        if (!SignInSignUpController.a(SignInSignUpController.this))
        {
          SignInSignUpController.b();
          AccountUIHelper.a(SignInSignUpController.c(SignInSignUpController.this), null);
          if (SignInSignUpController.b(SignInSignUpController.this) != null) {
            SignInSignUpController.b(SignInSignUpController.this).a(1009, null);
          }
        }
      }
      
      public final void a(boolean paramAnonymousBoolean)
      {
        if (!SignInSignUpController.a(SignInSignUpController.this))
        {
          if (!paramAnonymousBoolean) {
            break label109;
          }
          AccountUIHelper.d(SignInSignUpController.c(SignInSignUpController.this), a, str);
          AccountUIHelper.a(SignInSignUpController.c(SignInSignUpController.this), paramAuthStatusEndpointResponse, SignInSignUpController.d(SignInSignUpController.this), null, paramString2);
          localObject1.dismiss();
          if (SignInSignUpController.b(SignInSignUpController.this) != null) {
            SignInSignUpController.b(SignInSignUpController.this).a(1004, a);
          }
        }
        for (;;)
        {
          Util.a((Activity)SignInSignUpController.c(SignInSignUpController.this));
          return;
          label109:
          Action localAction = Action.bm;
          HashMap localHashMap = new HashMap();
          localHashMap.put("appState", "cbscom:" + SignInSignUpController.d(SignInSignUpController.this));
          localHashMap.put("events", "event20");
          localHashMap.put("pageTitle", "setting");
          localHashMap.put("evar_70", "You need to accept our terms in order to continue.");
          localHashMap.put("prop_70", "You need to accept our terms in order to continue.");
          AnalyticsManager.a(SignInSignUpController.c(SignInSignUpController.this), localAction, localHashMap);
        }
      }
    });
    ((TOUDialogFragment)localObject1).show(((Activity)b).getFragmentManager(), "TOUDialog");
    paramAuthStatusEndpointResponse = Action.bl;
    paramString2 = new HashMap();
    paramString2.put("events", "event8");
    paramString2.put("appState", "cbscom:" + paramString1);
    paramString2.put("From", paramString1);
    AnalyticsManager.a(b, paramAuthStatusEndpointResponse, paramString2);
  }
  
  public final void b(Person paramPerson, final String paramString)
  {
    new StringBuilder("singIn() called with: person = [").append(paramPerson).append("], sku = [").append(paramString).append("]");
    paramString = new ResponseModelListener()
    {
      public final void a()
      {
        SignInSignUpController.a(SignInSignUpController.this, 2003);
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        if (!SignInSignUpController.a(SignInSignUpController.this))
        {
          SignInSignUpController.b();
          if ((paramAnonymousResponseModel == null) || (!(paramAnonymousResponseModel instanceof AuthEndpointResponse))) {
            break label105;
          }
          if (!((AuthEndpointResponse)paramAnonymousResponseModel).isSuccess()) {
            break label54;
          }
          SignInSignUpController.b();
          SignInSignUpController.a(SignInSignUpController.this, true, "", paramString);
        }
        label54:
        do
        {
          return;
          SignInSignUpController.b();
          AccountUIHelper.c(SignInSignUpController.c(SignInSignUpController.this), SignInSignUpController.d(SignInSignUpController.this), "Invalid username/password.");
        } while (SignInSignUpController.b(SignInSignUpController.this) == null);
        SignInSignUpController.b(SignInSignUpController.this).a(2009, "Invalid username/password.");
        return;
        label105:
        SignInSignUpController.b();
        AccountUIHelper.c(SignInSignUpController.c(SignInSignUpController.this), SignInSignUpController.d(SignInSignUpController.this), "There was an issue logging into your account. Please try again.");
        SignInSignUpController.a(SignInSignUpController.this, 2003);
      }
    };
    new AuthServiceImpl().a(b, c, g, paramString);
  }
  
  public void setSignInSignUpCallback(SignInSignUpCallBack paramSignInSignUpCallBack)
  {
    e = paramSignInSignUpCallBack;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */