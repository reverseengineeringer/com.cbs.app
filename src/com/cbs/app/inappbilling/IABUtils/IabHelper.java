package com.cbs.app.inappbilling.IABUtils;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.android.vending.billing.IInAppBillingService.Stub;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public class IabHelper
{
  boolean a = false;
  String b = "IabHelper";
  boolean c = false;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  String g = "";
  Context h;
  IInAppBillingService i;
  ServiceConnection j;
  int k;
  String l;
  OnIabPurchaseFinishedListener m;
  
  public IabHelper(Context paramContext)
  {
    h = paramContext.getApplicationContext();
  }
  
  private int a(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null) {
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    c("Unexpected type for bundle response code.");
    c(paramBundle.getClass().getName());
    throw new RuntimeException("Unexpected type for bundle response code: " + paramBundle.getClass().getName());
  }
  
  private int a(Inventory paramInventory, String paramString)
  {
    int i2 = 1;
    int i3 = 0;
    new StringBuilder("Package name: ").append(h.getPackageName());
    Object localObject1 = null;
    int n = 1;
    for (;;)
    {
      localObject1 = i.a(3, h.getPackageName(), paramString, (String)localObject1);
      int i1 = a((Bundle)localObject1);
      new StringBuilder("Owned items response: ").append(String.valueOf(i1));
      if (i1 != 0)
      {
        new StringBuilder("getPurchases() failed: ").append(a(i1));
        return i1;
      }
      if ((!((Bundle)localObject1).containsKey("INAPP_PURCHASE_ITEM_LIST")) || (!((Bundle)localObject1).containsKey("INAPP_PURCHASE_DATA_LIST")) || (!((Bundle)localObject1).containsKey("INAPP_DATA_SIGNATURE_LIST")))
      {
        c("Bundle returned from getPurchases() doesn't contain required fields.");
        return 64534;
      }
      ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
      ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
      ArrayList localArrayList3 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
      i1 = 0;
      if (i1 < localArrayList2.size())
      {
        Object localObject2 = (String)localArrayList2.get(i1);
        String str1 = (String)localArrayList3.get(i1);
        String str2 = (String)localArrayList1.get(i1);
        if (Security.a((String)localObject2, str1))
        {
          localObject2 = new Purchase(paramString, (String)localObject2, str1);
          if (TextUtils.isEmpty(((Purchase)localObject2).getToken())) {
            d("BUG: empty/null token!");
          }
          b.put(((Purchase)localObject2).getSku(), localObject2);
        }
        for (;;)
        {
          i1 += 1;
          break;
          d("Purchase signature verification **FAILED**. Not adding item.");
          n = 0;
        }
      }
      localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        if (b.size() > 0) {}
        for (;;)
        {
          i1 = i3;
          if (i2 != 0) {
            break;
          }
          i1 = i3;
          if (n != 0) {
            break;
          }
          return 64533;
          i2 = 0;
        }
      }
    }
  }
  
  private int a(String paramString, Inventory paramInventory, List<String> paramList)
  {
    Object localObject = new ArrayList();
    ((ArrayList)localObject).addAll(paramInventory.a(paramString));
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (!((ArrayList)localObject).contains(str)) {
          ((ArrayList)localObject).add(str);
        }
      }
    }
    if (((ArrayList)localObject).size() == 0) {
      return 0;
    }
    paramList = new Bundle();
    paramList.putStringArrayList("ITEM_ID_LIST", (ArrayList)localObject);
    paramList = i.a(3, h.getPackageName(), paramString, paramList);
    if (!paramList.containsKey("DETAILS_LIST"))
    {
      int n = a(paramList);
      if (n != 0)
      {
        new StringBuilder("getSkuDetails() failed: ").append(a(n));
        return n;
      }
      c("getSkuDetails() returned a bundle with neither an error nor a detail list.");
      return 64534;
    }
    paramList = paramList.getStringArrayList("DETAILS_LIST").iterator();
    while (paramList.hasNext())
    {
      localObject = new SkuDetails(paramString, (String)paramList.next());
      new StringBuilder("Got sku details: ").append(localObject);
      a.put(((SkuDetails)localObject).getSku(), localObject);
    }
    return 0;
  }
  
  public static String a(int paramInt)
  {
    String[] arrayOfString1 = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
    String[] arrayOfString2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
    if (paramInt <= 64536)
    {
      int n = 64536 - paramInt;
      if ((n >= 0) && (n < arrayOfString2.length)) {
        return arrayOfString2[n];
      }
      return String.valueOf(paramInt) + ":Unknown IAB Helper Error";
    }
    if ((paramInt < 0) || (paramInt >= arrayOfString1.length)) {
      return String.valueOf(paramInt) + ":Unknown";
    }
    return arrayOfString1[paramInt];
  }
  
  private void a(String paramString)
  {
    if (!c)
    {
      c("Illegal state for operation (" + paramString + "): IAB helper is not set up.");
      throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + paramString);
    }
  }
  
  private void b(String paramString)
  {
    if (f) {
      throw new IllegalStateException("Can't start async operation (" + paramString + ") because another async operation(" + g + ") is in progress.");
    }
    g = paramString;
    f = true;
  }
  
  private void c()
  {
    if (d) {
      throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
    }
  }
  
  private void c(String paramString)
  {
    Log.e(b, "In-app billing error: " + paramString);
  }
  
  private static void d(String paramString) {}
  
  public final Inventory a(boolean paramBoolean, List<String> paramList)
  {
    c();
    a("queryInventory");
    Inventory localInventory;
    int n;
    try
    {
      localInventory = new Inventory();
      n = a(localInventory, "inapp");
      if (n != 0) {
        throw new IabException(n, "Error refreshing inventory (querying owned items).");
      }
    }
    catch (RemoteException paramList)
    {
      throw new IabException(64535, "Remote exception while refreshing inventory.", paramList);
      if (paramBoolean)
      {
        n = a("inapp", localInventory, paramList);
        if (n != 0) {
          throw new IabException(n, "Error refreshing inventory (querying prices of items).");
        }
      }
    }
    catch (JSONException paramList)
    {
      throw new IabException(64534, "Error parsing JSON response while refreshing inventory.", paramList);
    }
    if (e)
    {
      n = a(localInventory, "subs");
      if (n != 0) {
        throw new IabException(n, "Error refreshing inventory (querying owned subscriptions).");
      }
      if (paramBoolean)
      {
        n = a("subs", localInventory, paramList);
        if (n != 0) {
          throw new IabException(n, "Error refreshing inventory (querying prices of subscriptions).");
        }
      }
    }
    return localInventory;
  }
  
  public final void a()
  {
    c = false;
    if ((j != null) && (h != null)) {
      h.unbindService(j);
    }
    d = true;
    h = null;
    j = null;
    i = null;
    m = null;
  }
  
  public final void a(Activity paramActivity, String paramString1, OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener, String paramString2)
  {
    c();
    a("launchPurchaseFlow");
    b("launchPurchaseFlow");
    if (("subs".equals("subs")) && (!e))
    {
      paramActivity = new IabResult(64527, "Subscriptions are not available.");
      b();
      if (paramOnIabPurchaseFinishedListener != null) {
        paramOnIabPurchaseFinishedListener.a(paramActivity, null);
      }
    }
    do
    {
      for (;;)
      {
        return;
        try
        {
          new StringBuilder("Constructing buy intent for ").append(paramString1).append(", item type: ").append("subs");
          paramString2 = i.a(3, h.getPackageName(), paramString1, "subs", paramString2);
          int n = a(paramString2);
          if (n != 0)
          {
            c("Unable to buy item, Error response: " + a(n));
            b();
            paramActivity = new IabResult(n, "Unable to buy item");
            if (paramOnIabPurchaseFinishedListener == null) {
              continue;
            }
            paramOnIabPurchaseFinishedListener.a(paramActivity, null);
          }
        }
        catch (IntentSender.SendIntentException paramActivity)
        {
          c("SendIntentException while launching purchase flow for sku " + paramString1);
          paramActivity.printStackTrace();
          b();
          paramActivity = new IabResult(64532, "Failed to send intent.");
          if (paramOnIabPurchaseFinishedListener != null)
          {
            paramOnIabPurchaseFinishedListener.a(paramActivity, null);
            return;
            paramString2 = (PendingIntent)paramString2.getParcelable("BUY_INTENT");
            new StringBuilder("Launching buy intent for ").append(paramString1).append(". Request code: 10");
            k = 10;
            m = paramOnIabPurchaseFinishedListener;
            l = "subs";
            paramActivity.startIntentSenderForResult(paramString2.getIntentSender(), 10, new Intent(), 0, 0, 0);
            return;
          }
        }
        catch (RemoteException paramActivity)
        {
          c("RemoteException while launching purchase flow for sku " + paramString1);
          paramActivity.printStackTrace();
          b();
          paramActivity = new IabResult(64535, "Remote exception while starting purchase flow");
        }
      }
    } while (paramOnIabPurchaseFinishedListener == null);
    paramOnIabPurchaseFinishedListener.a(paramActivity, null);
  }
  
  public final void a(final OnIabSetupFinishedListener paramOnIabSetupFinishedListener)
  {
    c();
    if (c) {
      throw new IllegalStateException("IAB helper is already set up.");
    }
    j = new ServiceConnection()
    {
      public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
      {
        if (d) {}
        do
        {
          return;
          IabHelper.this.i = IInAppBillingService.Stub.a(paramAnonymousIBinder);
          paramAnonymousComponentName = h.getPackageName();
          try
          {
            int i = IabHelper.this.i.a(3, paramAnonymousComponentName, "inapp");
            if (i != 0)
            {
              if (paramOnIabSetupFinishedListener != null) {
                paramOnIabSetupFinishedListener.a(new IabResult(i, "Error checking for billing v3 support."));
              }
              e = false;
              return;
            }
          }
          catch (RemoteException paramAnonymousComponentName)
          {
            if (paramOnIabSetupFinishedListener != null) {
              paramOnIabSetupFinishedListener.a(new IabResult(64535, "RemoteException while setting up in-app billing."));
            }
            paramAnonymousComponentName.printStackTrace();
            return;
          }
          if (IabHelper.this.i.a(3, paramAnonymousComponentName, "subs") == 0) {
            e = true;
          }
          c = true;
        } while (paramOnIabSetupFinishedListener == null);
        paramOnIabSetupFinishedListener.a(new IabResult(0, "Setup successful."));
      }
      
      public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
      {
        i = null;
      }
    };
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    List localList = h.getPackageManager().queryIntentServices(localIntent, 0);
    if ((localList != null) && (!localList.isEmpty()))
    {
      h.bindService(localIntent, j, 1);
      return;
    }
    paramOnIabSetupFinishedListener.a(new IabResult(3, "Billing service unavailable on device."));
  }
  
  public final void a(boolean paramBoolean, final QueryInventoryFinishedListener paramQueryInventoryFinishedListener)
  {
    final Handler localHandler = new Handler();
    c();
    a("queryInventory");
    b("refresh inventory");
    new Thread(new Runnable()
    {
      public final void run()
      {
        final IabResult localIabResult1 = new IabResult(0, "Inventory refresh successful.");
        final Object localObject = null;
        try
        {
          Inventory localInventory = a(a, b);
          localObject = localInventory;
        }
        catch (IabException localIabException)
        {
          for (;;)
          {
            IabResult localIabResult2 = localIabException.getResult();
          }
        }
        b();
        if ((!d) && (paramQueryInventoryFinishedListener != null)) {
          localHandler.post(new Runnable()
          {
            public final void run()
            {
              c.a(localIabResult1, localObject);
            }
          });
        }
      }
    }).start();
  }
  
  public final boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != k) {
      return false;
    }
    c();
    a("handleActivityResult");
    b();
    if (paramIntent == null)
    {
      c("Null data in IAB activity result.");
      paramIntent = new IabResult(64534, "Null data in IAB result");
      if (m != null) {
        m.a(paramIntent, null);
      }
      return true;
    }
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    if (localObject == null)
    {
      c("Intent with no response code, assuming OK (known issue)");
      paramInt1 = 0;
    }
    String str1;
    for (;;)
    {
      localObject = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
      str1 = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
      if ((paramInt2 != -1) || (paramInt1 != 0)) {
        break label503;
      }
      new StringBuilder("Extras: ").append(paramIntent.getExtras());
      new StringBuilder("Expected item type: ").append(l);
      if ((localObject != null) && (str1 != null)) {
        break label322;
      }
      c("BUG: either purchaseData or dataSignature is null.");
      new StringBuilder("Extras: ").append(paramIntent.getExtras().toString());
      paramIntent = new IabResult(64528, "IAB returned null purchaseData or dataSignature");
      if (m != null) {
        m.a(paramIntent, null);
      }
      return true;
      if ((localObject instanceof Integer))
      {
        paramInt1 = ((Integer)localObject).intValue();
      }
      else
      {
        if (!(localObject instanceof Long)) {
          break;
        }
        paramInt1 = (int)((Long)localObject).longValue();
      }
    }
    c("Unexpected type for intent response code.");
    c(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
    try
    {
      label322:
      paramIntent = new Purchase(l, (String)localObject, str1);
      String str2 = paramIntent.getSku();
      if (!Security.a((String)localObject, str1))
      {
        c("Purchase signature verification FAILED for sku " + str2);
        localObject = new IabResult(64533, "Signature verification failed for sku " + str2);
        if (m != null) {
          m.a((IabResult)localObject, paramIntent);
        }
        return true;
      }
    }
    catch (JSONException paramIntent)
    {
      c("Failed to parse purchase data.");
      paramIntent.printStackTrace();
      paramIntent = new IabResult(64534, "Failed to parse purchase data.");
      if (m != null) {
        m.a(paramIntent, null);
      }
      return true;
    }
    if (m != null) {
      m.a(new IabResult(0, "Success"), paramIntent);
    }
    for (;;)
    {
      return true;
      label503:
      if (paramInt2 == -1)
      {
        new StringBuilder("Result code was OK but in-app billing response was not OK: ").append(a(paramInt1));
        if (m != null)
        {
          paramIntent = new IabResult(paramInt1, "Problem purchashing item.");
          m.a(paramIntent, null);
        }
      }
      else if (paramInt2 == 0)
      {
        new StringBuilder("Purchase canceled - Response: ").append(a(paramInt1));
        paramIntent = new IabResult(64531, "User canceled.");
        if (m != null) {
          m.a(paramIntent, null);
        }
      }
      else
      {
        c("Purchase failed. Result code: " + Integer.toString(paramInt2) + ". Response: " + a(paramInt1));
        paramIntent = new IabResult(64530, "Unknown purchase response.");
        if (m != null) {
          m.a(paramIntent, null);
        }
      }
    }
  }
  
  final void b()
  {
    new StringBuilder("Ending async operation: ").append(g);
    g = "";
    f = false;
  }
  
  public static abstract interface OnConsumeFinishedListener {}
  
  public static abstract interface OnConsumeMultiFinishedListener {}
  
  public static abstract interface OnIabPurchaseFinishedListener
  {
    public abstract void a(IabResult paramIabResult, Purchase paramPurchase);
  }
  
  public static abstract interface OnIabSetupFinishedListener
  {
    public abstract void a(IabResult paramIabResult);
  }
  
  public static abstract interface QueryInventoryFinishedListener
  {
    public abstract void a(IabResult paramIabResult, Inventory paramInventory);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.IabHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */