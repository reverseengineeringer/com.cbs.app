package com.urbanairship.d;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.urbanairship.CoreActivity;
import com.urbanairship.CoreReceiver;
import com.urbanairship.UrbanAirshipProvider;
import com.urbanairship.a;
import com.urbanairship.actions.ActionActivity;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.EventService;
import com.urbanairship.j;
import com.urbanairship.p;
import com.urbanairship.push.BaseIntentReceiver;
import com.urbanairship.push.PushService;
import com.urbanairship.richpush.RichPushUpdateService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class d
{
  private static final String[] a = { "com.urbanairship.push.RECEIVED", "com.urbanairship.push.OPENED", "com.urbanairship.push.CHANNEL_UPDATED", "com.urbanairship.push.DISMISSED" };
  
  public static ComponentInfo a(Class paramClass)
  {
    paramClass = new ComponentName(p.b(), paramClass.getCanonicalName());
    try
    {
      paramClass = p.d().getServiceInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  private static void a(ActivityInfo paramActivityInfo)
  {
    if (exported) {
      j.a("Receiver " + name + " is exported. This might allow outside applications to message the receiver. Make sure the intent is protected by a permission or prevent the receiver from being exported.");
    }
    Object localObject1 = new ArrayList();
    String[] arrayOfString = a;
    int k = arrayOfString.length;
    int i = 0;
    String str;
    if (i < k)
    {
      str = arrayOfString[i];
      Object localObject2 = new Intent(str).addCategory(p.b());
      localObject2 = p.d().queryBroadcastReceivers((Intent)localObject2, 0).iterator();
      ResolveInfo localResolveInfo;
      do
      {
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        localResolveInfo = (ResolveInfo)((Iterator)localObject2).next();
      } while ((activityInfo == null) || (activityInfo.name == null) || (!activityInfo.name.equals(name)));
    }
    for (int j = 1;; j = 0)
    {
      if (j == 0) {
        ((List)localObject1).add(str);
      }
      i += 1;
      break;
      if (((List)localObject1).isEmpty()) {
        return;
      }
      j.a("Receiver " + name + " unable to receive intents for actions: " + localObject1);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Update the manifest entry for ").append(name).append(" to:\n<receiver android:name=\"").append(name).append("\" exported=\"false\">\n\t<intent-filter> ");
      paramActivityInfo = a;
      j = paramActivityInfo.length;
      i = 0;
      while (i < j)
      {
        arrayOfString = paramActivityInfo[i];
        ((StringBuilder)localObject1).append("\n\t\t<action android:name=\"").append(arrayOfString).append("\" />");
        i += 1;
      }
      ((StringBuilder)localObject1).append("\n\t\t<!-- Replace ${applicationId} with ").append(p.b()).append(" if not using Android Gradle plugin -->\n\t\t<category android:name=\"${applicationId}\" />\n\t</intent-filter>\n</receiver>");
      j.a(((StringBuilder)localObject1).toString());
      return;
    }
  }
  
  public static void a(a parama)
  {
    Object localObject3 = null;
    a("android.permission.INTERNET");
    a("android.permission.ACCESS_NETWORK_STATE");
    d.1 local1;
    if (d(p.c()))
    {
      a(p.c());
      local1 = new d.1();
      if (local1.get(CoreReceiver.class) != null) {
        break label157;
      }
      j.a("AndroidManifest.xml missing required receiver: " + CoreReceiver.class.getCanonicalName());
    }
    label157:
    label848:
    for (;;)
    {
      try
      {
        localObject1 = dgetPackageInfob2receivers;
        if (localObject1 != null)
        {
          int j = localObject1.length;
          i = 0;
          if (i < j) {
            localObject3 = localObject1[i];
          }
        }
      }
      catch (Exception localException)
      {
        Object localObject2;
        try
        {
          int i;
          if (BaseIntentReceiver.class.isAssignableFrom(Class.forName(name))) {
            a((ActivityInfo)localObject3);
          }
          i += 1;
          continue;
          j.a("AndroidManifest.xml does not define and require permission: " + p.c());
          break;
          ComponentInfo localComponentInfo2 = (ComponentInfo)local1.get(CoreReceiver.class);
          Object localObject1 = new Intent("com.urbanairship.push.OPENED").addCategory(p.b());
          Iterator localIterator = p.d().queryBroadcastReceivers((Intent)localObject1, 0).iterator();
          localObject1 = null;
          if (localIterator.hasNext())
          {
            ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
            if ((activityInfo == null) || (activityInfo.name == null) || (!activityInfo.name.equals(name))) {
              break label848;
            }
            localObject1 = localResolveInfo;
            continue;
          }
          if (localObject1 == null)
          {
            j.a("AndroidManifest.xml's " + CoreReceiver.class.getCanonicalName() + " declaration missing required intent-filter: <intent-filter android:priority=\"-999\"><action android:name=\"com.urbanairship.push.OPENED\"/>" + "<category android:name=\"" + p.b() + "\"/></intent-filter>");
            continue;
          }
          if (priority == 64537) {
            continue;
          }
          j.a("CoreReceiver's intent filter priority should be set to -999 in order to let the application launch any activities before Urban Airship performs any actions or falls back to launching the application launch intent.");
          continue;
          localException = localException;
          j.a("Unable to query the application's receivers.", localException);
          localObject2 = localObject3;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          new StringBuilder("ManifestUtils - Unable to find class: ").append(name);
          continue;
        }
        if (local1.get(CoreActivity.class) == null) {
          j.a("AndroidManifest.xml missing required activity: " + CoreActivity.class.getCanonicalName());
        }
        if ((m) && (local1.get(EventService.class) == null)) {
          j.a("AndroidManifest.xml missing required service: " + EventService.class.getCanonicalName());
        }
        if (local1.get(PushService.class) == null) {
          j.a("AndroidManifest.xml missing required service: " + PushService.class.getCanonicalName());
        }
        if (local1.get(RichPushUpdateService.class) == null) {
          j.a("AndroidManifest.xml missing required service: " + RichPushUpdateService.class.getCanonicalName());
        }
        if (local1.get(ActionService.class) == null) {
          j.a("AndroidManifest.xml missing required service: " + ActionService.class.getCanonicalName());
        }
        local1.get(ActionActivity.class);
        parama = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("http://")).setPackage(p.b()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        p.d().resolveActivity(parama, 0);
        parama = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("https://")).setPackage(p.b()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        if (p.d().resolveActivity(parama, 0) == null) {
          j.a("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme https. Landing page action may not function properly.");
        }
        parama = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("message://")).setPackage(p.b()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        if (p.d().resolveActivity(parama, 0) == null) {
          j.a("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme message. Landing page action may not function properly.");
        }
        if (p.f() == null)
        {
          parama = p.b();
          localObject2 = local1.keySet().iterator();
          if (((Iterator)localObject2).hasNext())
          {
            localObject3 = (Class)((Iterator)localObject2).next();
            ComponentInfo localComponentInfo1 = (ComponentInfo)local1.get(localObject3);
            if ((localComponentInfo1 == null) || (parama.equals(processName))) {
              continue;
            }
            new StringBuilder("A separate process is detected for: ").append(((Class)localObject3).getCanonicalName()).append(". In the AndroidManifest.xml, remove the android:process attribute.");
            continue;
          }
        }
        else
        {
          parama = fprocessName;
          continue;
        }
        if (local1.get(UrbanAirshipProvider.class) == null) {
          throw new IllegalStateException("Unable to resolve UrbanAirshipProvider. Please check that the provider is defined in your AndroidManifest.xml, and that the authority string is set to  \"YOUR_PACKAGENAME.urbanairship.provider\"");
        }
        return;
      }
    }
  }
  
  public static void a(String paramString)
  {
    if (-1 == p.d().checkPermission(paramString, p.b())) {
      j.a("AndroidManifest.xml missing required permission: " + paramString);
    }
  }
  
  public static ActivityInfo b(Class paramClass)
  {
    paramClass = new ComponentName(p.b(), paramClass.getCanonicalName());
    try
    {
      paramClass = p.d().getActivityInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  public static boolean b(String paramString)
  {
    return p.d().checkPermission(paramString, p.b()) == 0;
  }
  
  public static ComponentInfo c(Class paramClass)
  {
    paramClass = new ComponentName(p.b(), paramClass.getCanonicalName());
    try
    {
      paramClass = p.d().getReceiverInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  public static ComponentInfo c(String paramString)
  {
    return p.d().resolveContentProvider(paramString, 0);
  }
  
  public static boolean d(String paramString)
  {
    try
    {
      p.d().getPermissionInfo(paramString, 0);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */