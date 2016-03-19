package com.cbs.app.inappbilling;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.inappbilling.IABUtils.IabHelper;
import com.cbs.app.inappbilling.IABUtils.IabHelper.OnIabPurchaseFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabHelper.OnIabSetupFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabHelper.QueryInventoryFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabResult;
import com.cbs.app.inappbilling.IABUtils.Inventory;
import com.cbs.app.inappbilling.IABUtils.Purchase;
import com.cbs.app.service.PurchaseService;
import com.cbs.app.view.UnableToConnectDialogHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.model.rest.PlayBillingResponse;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class IABActivity
  extends Activity
  implements IABDialogFragment.IABDialogListener
{
  private static final String c = IABActivity.class.getSimpleName();
  DialogInterface.OnClickListener a = new DialogInterface.OnClickListener()
  {
    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      if (!isFinishing())
      {
        setResult(0);
        finish();
      }
    }
  };
  DialogInterface.OnClickListener b = new DialogInterface.OnClickListener()
  {
    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      a();
    }
  };
  private IabHelper d;
  private String e;
  private String f;
  private IabHelper.OnIabPurchaseFinishedListener g = new IabHelper.OnIabPurchaseFinishedListener()
  {
    public final void a(IabResult paramAnonymousIabResult, Purchase paramAnonymousPurchase)
    {
      if (paramAnonymousPurchase != null)
      {
        new StringBuilder("Purchase token: ").append(paramAnonymousPurchase.getToken()).append("\nSubscriptionId (SKU): ").append(paramAnonymousPurchase.getSku()).append("\nPackage name: ").append(paramAnonymousPurchase.getPackageName()).append("\nPayload is: ").append(paramAnonymousPurchase.getDeveloperPayload()).append("\nOrderId is: ").append(paramAnonymousPurchase.getOrderId());
        IABActivity.c();
        IABActivity.a(IABActivity.this, true);
        IABActivity.a(IABActivity.this, paramAnonymousPurchase);
      }
      do
      {
        return;
        paramAnonymousPurchase = paramAnonymousIabResult.getMessage();
        if ((paramAnonymousIabResult.getResponse() != 64531) || (isFinishing())) {
          break;
        }
        Toast.makeText(IABActivity.this, "Cancelled", 1).show();
      } while (isFinishing());
      setResult(0);
      finish();
      return;
      IABActivity.a(IABActivity.this, paramAnonymousPurchase, getString(2131231050));
      IABActivity.a(IABActivity.this, false);
      Log.e(IABActivity.c(), "purchase failed, with result code: " + paramAnonymousPurchase);
    }
  };
  
  private void a(final Purchase paramPurchase)
  {
    PurchaseService localPurchaseService = new PurchaseService();
    String str1 = paramPurchase.getSku();
    String str2 = paramPurchase.getToken();
    String str3 = paramPurchase.getPackageName();
    String str4 = paramPurchase.getOrderId();
    paramPurchase = new ResponseModelListener()
    {
      public final void a()
      {
        IABActivity.c();
        UnableToConnectDialogHelper.a(IABActivity.this, "Retry", b, "Cancel", a);
        IABActivity.a(IABActivity.this, false);
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        paramAnonymousResponseModel = (PlayBillingResponse)paramAnonymousResponseModel;
        if (paramAnonymousResponseModel.isSuccess())
        {
          IABActivity.c();
          IABActivity.a(IABActivity.this, true);
          AccountUIHelper.a(IABActivity.this, true, new DoneListener()
          {
            public final void a(String paramAnonymous2String)
            {
              IABActivity.c();
              Intent localIntent = new Intent();
              Bundle localBundle = new Bundle();
              localBundle.putString("sku", paramAnonymous2String);
              localIntent.putExtras(localBundle);
              setResult(-1, localIntent);
              finish();
            }
          }, null, null);
          paramAnonymousResponseModel = Action.ck;
          HashMap localHashMap = new HashMap();
          localHashMap.put("events", "event19");
          localHashMap.put("evar_56", paramPurchase.getOrderId());
          localHashMap.put("orderId", paramPurchase.getOrderId());
          AnalyticsManager.a(IABActivity.this, paramAnonymousResponseModel, localHashMap);
          return;
        }
        IABActivity.a(IABActivity.this, false);
        paramAnonymousResponseModel = paramAnonymousResponseModel.getMessage();
        Log.e(IABActivity.c(), "play billing endpoint fail: " + paramAnonymousResponseModel);
        UnableToConnectDialogHelper.a(IABActivity.this, "Retry", b, "Cancel", a);
      }
    };
    HashMap localHashMap = new HashMap();
    localHashMap.put("token", str2);
    localHashMap.put("subscriptionId", str1);
    localHashMap.put("applicationName", "CBS");
    localHashMap.put("androidAppPackageName", str3);
    localHashMap.put("orderId", str4);
    localPurchaseService.a(this, "v2.0", "/googleplay/purchase.json", "application/x-www-form-urlencoded", localHashMap, paramPurchase, PlayBillingResponse.class);
  }
  
  private void a(String paramString1, String paramString2)
  {
    IABDialogFragment localIABDialogFragment = new IABDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("main_text", paramString1);
    localBundle.putString("dialog_title", paramString2);
    localIABDialogFragment.setArguments(localBundle);
    localIABDialogFragment.setListener(this);
    localIABDialogFragment.show(getFragmentManager(), "iab_dialog");
  }
  
  private void a(boolean paramBoolean)
  {
    ProgressBar localProgressBar = (ProgressBar)findViewById(2131689634);
    if (localProgressBar != null) {
      if (!paramBoolean) {
        break label26;
      }
    }
    label26:
    for (int i = 0;; i = 8)
    {
      localProgressBar.setVisibility(i);
      return;
    }
  }
  
  protected final void a()
  {
    d.a(false, new IabHelper.QueryInventoryFinishedListener()
    {
      public final void a(IabResult paramAnonymousIabResult, Inventory paramAnonymousInventory)
      {
        if (paramAnonymousIabResult.a())
        {
          Log.e(IABActivity.c(), "failed inventory check response:  " + paramAnonymousIabResult.getMessage());
          IABActivity.a(IABActivity.this, false);
          if (!isFinishing())
          {
            setResult(0);
            finish();
          }
          return;
        }
        paramAnonymousInventory = paramAnonymousInventory.b("subs");
        IABActivity.c();
        new StringBuilder("purchases size: ").append(paramAnonymousInventory.size());
        paramAnonymousIabResult = new TreeMap();
        paramAnonymousInventory = paramAnonymousInventory.iterator();
        while (paramAnonymousInventory.hasNext())
        {
          Purchase localPurchase = (Purchase)paramAnonymousInventory.next();
          if (a) {
            paramAnonymousIabResult.put(Long.valueOf(g), localPurchase);
          }
        }
        IABActivity.c();
        new StringBuilder("total valid subscriptions found: ").append(paramAnonymousIabResult.size());
        IABActivity.a(IABActivity.this, paramAnonymousIabResult);
      }
    });
  }
  
  public final void b()
  {
    if (!isFinishing())
    {
      setResult(0);
      finish();
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 5)
    {
      if (d != null) {
        d.a(new IabHelper.OnIabSetupFinishedListener()
        {
          public final void a(IabResult paramAnonymousIabResult)
          {
            if (paramAnonymousIabResult.a())
            {
              Toast.makeText(IABActivity.this, "Cancelled", 1).show();
              if (!isFinishing())
              {
                setResult(0);
                finish();
              }
              return;
            }
            IABActivity.c();
            IABActivity.d(IABActivity.this).a(IABActivity.this, IABActivity.a(IABActivity.this), IABActivity.b(IABActivity.this), IABActivity.c(IABActivity.this));
          }
        });
      }
      return;
    }
    if (d != null)
    {
      d.a(paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    paramBundle = getIntent();
    f = Util.u(this);
    new StringBuilder("payload is: ").append(f);
    if (f == null)
    {
      a(getString(2131231103), "In App Purchasing Error");
      a(false);
      return;
    }
    a(true);
    e = paramBundle.getStringExtra("sku_intent");
    new StringBuilder("Sku is: ").append(e);
    d = new IabHelper(this);
    d.a(new IabHelper.OnIabSetupFinishedListener()
    {
      public final void a(IabResult paramAnonymousIabResult)
      {
        if (paramAnonymousIabResult.a())
        {
          Log.e(IABActivity.c(), "IAB startSetup failed code: " + paramAnonymousIabResult.getResponse());
          if (paramAnonymousIabResult.getResponse() == 3)
          {
            IABActivity.a(IABActivity.this, true);
            paramAnonymousIabResult = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
            paramAnonymousIabResult.putExtra("account_types", new String[] { "com.google" });
            startActivityForResult(paramAnonymousIabResult, 5);
          }
          do
          {
            return;
            Toast.makeText(IABActivity.this, "Connection to in App purchasing failed\n" + paramAnonymousIabResult.getMessage(), 1).show();
          } while (isFinishing());
          setResult(0);
          finish();
          return;
        }
        IABActivity.c();
        IABActivity.a(IABActivity.this, true);
        a();
      }
    });
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (d != null) {
      d.a();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */