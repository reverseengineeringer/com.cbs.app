package com.cbs.app.livetv.controllers;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.adobe.adobepass.accessenabler.a.e;
import com.adobe.adobepass.accessenabler.a.f;
import com.adobe.adobepass.accessenabler.a.g;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.api.a;
import com.adobe.adobepass.accessenabler.api.a.a;
import com.adobe.adobepass.accessenabler.api.c;
import com.cbs.app.adobepass.crypto.SignatureGenerator;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.MVPDCallbacks;
import com.cbs.app.service.MVPDService;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.rest.MVPDConfigsEndpointResponse;
import com.cbs.app.view.model.rest.MVPDVerifyEndpointResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class MVPDController
  implements com.adobe.adobepass.accessenabler.api.d
{
  private static MVPDController b;
  ResponseModelListener a = new ResponseModelListener()
  {
    public final void a()
    {
      MVPDController.a(MVPDController.this, null);
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      new StringBuilder("success: ").append(paramAnonymousResponseModel);
      paramAnonymousResponseModel = (MVPDVerifyEndpointResponse)paramAnonymousResponseModel;
      String str = paramAnonymousResponseModel.getIsTokenValid();
      if ((str != null) && (str.equals("VALID_TOKEN"))) {
        MVPDController.a(MVPDController.this, MVPDController.e(MVPDController.this));
      }
      for (;;)
      {
        MVPDController.f(MVPDController.this);
        paramAnonymousResponseModel.getTokenUserId();
        paramAnonymousResponseModel.isAccessibility();
        paramAnonymousResponseModel.getTokenGeneratedAt();
        paramAnonymousResponseModel.getContentId();
        return;
        new StringBuilder("Authorization FAILED: Failed media token validation: Error: ").append(paramAnonymousResponseModel);
        MVPDController.a(MVPDController.this, null);
      }
    }
  };
  private a c;
  private MVPDConfig d;
  private String e = null;
  private Context f;
  private MVPDCallbacks g;
  private boolean h = false;
  private long i = -1L;
  private HashMap<String, g> j;
  private ArrayList<MVPDConfig> k = new ArrayList();
  private ResponseModelListener l = new ResponseModelListener()
  {
    public final void a() {}
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      if ((paramAnonymousResponseModel instanceof MVPDConfigsEndpointResponse))
      {
        paramAnonymousResponseModel = (MVPDConfigsEndpointResponse)paramAnonymousResponseModel;
        MVPDController.a(MVPDController.this).clear();
        MVPDController.a(MVPDController.this).addAll(paramAnonymousResponseModel.getMvpdConfigList());
        paramAnonymousResponseModel = MVPDController.a(MVPDController.this).iterator();
        while (paramAnonymousResponseModel.hasNext())
        {
          MVPDConfig localMVPDConfig = (MVPDConfig)paramAnonymousResponseModel.next();
          g localg = (g)MVPDController.b(MVPDController.this).get(localMVPDConfig.getAdobeId());
          if (localg != null) {
            localMVPDConfig.setAdobeLogoUrl(localg.c());
          }
        }
        MVPDController.c(MVPDController.this);
      }
    }
  };
  private Handler m = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      if (!MVPDController.d(MVPDController.this)) {
        sendEmptyMessageDelayed(0, 10000L);
      }
    }
  };
  private String n;
  private boolean o;
  private boolean p = false;
  
  private MVPDController(Context paramContext)
  {
    f = paramContext.getApplicationContext();
    n = null;
    try
    {
      c = a.a.a(paramContext);
      c.a(this);
      return;
    }
    catch (c paramContext)
    {
      Log.e("MVPDController", "Failed to initialize the AccessEnabler library. ", paramContext);
    }
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new MVPDController(paramContext);
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      p = false;
    }
    if (g == null) {
      return;
    }
    g.a(paramBoolean);
  }
  
  private void b(String paramString)
  {
    n = paramString;
    k();
    if (g == null) {
      return;
    }
    if (n != null) {
      g.b(true);
    }
    for (;;)
    {
      p = false;
      return;
      g.b(false);
    }
  }
  
  public static MVPDController getInstance()
  {
    try
    {
      if (b == null) {
        throw new IllegalStateException(MVPDController.class.getSimpleName() + " was not initialized!");
      }
    }
    finally {}
    MVPDController localMVPDController = b;
    return localMVPDController;
  }
  
  private void k()
  {
    i = -1L;
    m.removeMessages(0);
  }
  
  public final void a()
  {
    if (g == null) {
      return;
    }
    g.a(k, false);
  }
  
  public final void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("setAuthnStatus(): Unknown status code.");
    case 1: 
      o = true;
      a(true);
      return;
    }
    o = false;
    String str = c.d().h.c();
    StringBuilder localStringBuilder = new StringBuilder("Authentication FAILED: ").append(paramString).append(" currentMvpdId = ").append(str).append(", mSelectedMvpdId = ");
    if (d == null)
    {
      str = null;
      label102:
      localStringBuilder.append(str).append(", configurationCompleted = ").append(h);
      k();
      if (!"User Not Authenticated Error".equals(paramString)) {
        break label161;
      }
      setMVPDProviderToModifyAuth(null);
      a(false);
    }
    for (;;)
    {
      d = null;
      return;
      str = d.getAdobeId();
      break label102;
      label161:
      if ((("Provider not Selected Error".equals(paramString)) || ("Internal Authentication Error".equals(paramString))) && (d != null) && (h))
      {
        if (g == null) {
          break;
        }
        g.a(k, true);
      }
    }
  }
  
  public final void a(com.adobe.adobepass.accessenabler.a.d paramd, ArrayList<String> paramArrayList)
  {
    int i1 = 1;
    switch (paramd.a())
    {
    default: 
      throw new RuntimeException("setTrackingData(): Unknown event type.");
    case 2: 
      paramd = "mvpd selection";
      localObject = "" + "MVPD ID: " + (String)paramArrayList.get(0) + "\n\n";
      localObject = (String)localObject + "DEVICE TYPE: " + (String)paramArrayList.get(i1) + "\n\n";
      i1 += 1;
      localObject = (String)localObject + "CLIENT TYPE: " + (String)paramArrayList.get(i1) + "\n\n";
      paramArrayList = (String)localObject + "OS: " + (String)paramArrayList.get(i1 + 1) + "\n\n";
      new StringBuilder("event: ").append(paramd).append(" message: ").append(paramArrayList);
      return;
    case 0: 
      boolean bool = ((String)paramArrayList.get(0)).equals("true");
      localObject = new StringBuilder().append("").append("SUCCESSFUL: ");
      if (bool) {}
      for (paramd = "YES";; paramd = "NO")
      {
        paramd = paramd + "\n\n";
        paramd = paramd + "MVPD ID: " + (String)paramArrayList.get(1) + "\n\n";
        paramd = paramd + "GUID: " + (String)paramArrayList.get(2) + "\n\n";
        localObject = paramd + "CACHED: " + (String)paramArrayList.get(3) + "\n\n";
        i1 = 4;
        paramd = "authentication detection";
        break;
      }
    }
    new StringBuilder("data size: ").append(paramArrayList.size());
    Object localObject = new StringBuilder().append("").append("SUCCESSFUL: ");
    if (((String)paramArrayList.get(0)).equals("true")) {}
    for (paramd = "YES";; paramd = "NO")
    {
      paramd = paramd + "\n\n";
      paramd = paramd + "MVPD ID: " + (String)paramArrayList.get(1) + "\n\n";
      paramd = paramd + "GUID: " + (String)paramArrayList.get(2) + "\n\n";
      paramd = paramd + "CACHED: " + (String)paramArrayList.get(3) + "\n\n";
      paramd = paramd + "ERROR: " + (String)paramArrayList.get(4) + "\n\n";
      localObject = paramd + "ERROR DETAILS: " + (String)paramArrayList.get(5) + "\n\n";
      paramd = "authorization detection";
      i1 = 6;
      break;
    }
  }
  
  public final void a(e parame, f paramf)
  {
    Object localObject = null;
    switch (parame.a())
    {
    default: 
      throw new RuntimeException("setRequestor(): Unknown status code.");
    case 1: 
      parame.a("resource_id");
    case 0: 
    case 2: 
      return;
    }
    String str = parame.a("user_metadata_name");
    boolean bool = false;
    if (paramf.a() != null)
    {
      bool = paramf.b();
      parame = paramf.a();
      if (!bool) {}
    }
    for (;;)
    {
      try
      {
        localObject = SignatureGenerator.a(f.getResources()).b((String)parame);
        paramf = parame;
        parame = (e)localObject;
      }
      catch (c paramf)
      {
        StringBuilder localStringBuilder;
        Log.e("MVPDController", paramf.toString());
        paramf = parame;
        parame = null;
        continue;
        localObject = "None";
        continue;
        paramf = "None";
        continue;
        parame = "None";
        continue;
      }
      localStringBuilder = new StringBuilder("Key: ");
      if (str != null)
      {
        localObject = str;
        localObject = localStringBuilder.append((String)localObject).append("\nEncrypted: ").append(bool).append("\nValue: ");
        if (paramf == null) {
          continue;
        }
        paramf = paramf;
        if (!bool) {
          break;
        }
        paramf = new StringBuilder().append(paramf).append("\nValue decrypted: ");
        if (parame == null) {
          continue;
        }
        paramf.append(parame).toString();
        return;
      }
      paramf = parame;
      parame = null;
      continue;
      parame = null;
      paramf = (f)localObject;
    }
  }
  
  public final void a(g paramg)
  {
    Object localObject = paramg.a();
    String str = paramg.b();
    StringBuilder localStringBuilder = new StringBuilder("Selected MVPD");
    paramg = (g)localObject;
    if (localObject == null) {
      paramg = "None";
    }
    localStringBuilder.append(paramg);
    localObject = new StringBuilder("Selected MVPD name");
    if (str == null) {}
    for (paramg = "None";; paramg = str)
    {
      ((StringBuilder)localObject).append(paramg);
      return;
    }
  }
  
  public final void a(String paramString)
  {
    if (g == null) {}
    do
    {
      return;
      if (paramString.indexOf("/authenticate/saml") > 0)
      {
        g.a(paramString);
        return;
      }
    } while (paramString.indexOf("/logout") <= 0);
    g.b(paramString);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    new StringBuilder("handleSetToken: token ").append(paramString1).append(": resourceId = ").append(paramString2);
    if ((paramString1 == null) || (paramString1.trim().length() == 0))
    {
      new StringBuilder("Authorization FAILED: Failed media token validation: Resource: ").append(paramString2).append(" : Error: ").append("empty token");
      b(null);
      return;
    }
    e = paramString1;
    paramString2 = new MVPDService();
    Context localContext = f;
    ResponseModelListener localResponseModelListener = a;
    HashMap localHashMap = new HashMap();
    localHashMap.put("contentId", "70C7B4F3-E4B7-13C3-0A99-E1A1C2DE72CD");
    try
    {
      localHashMap.put("token", URLEncoder.encode(paramString1, "UTF-8"));
      paramString2.a(localContext, "v3.0", "/mvpd/adobe/shortMediaToken.json", "application/x-www-form-urlencoded", localHashMap, localResponseModelListener, MVPDVerifyEndpointResponse.class);
      return;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    new StringBuilder("Authorization FAILED: For resource: ").append(paramString1).append(" : ERROR: ").append(paramString2).append(" : ERROR DETAILS: ").append(paramString3);
    b(null);
  }
  
  public final void b()
  {
    ArrayList localArrayList = new ArrayList();
    a.k();
    localArrayList.add(MainApplication.b);
    try
    {
      String str = SignatureGenerator.a(f.getResources()).a("CBS");
      new StringBuilder("spUrls: ").append(localArrayList);
      c.a("CBS", str, localArrayList);
      return;
    }
    catch (c localc)
    {
      Log.e("MVPDController", "Failed to digitally sign the requestor id.", localc);
    }
  }
  
  public final boolean c()
  {
    return p;
  }
  
  public final boolean d()
  {
    String str = c.d().h.c();
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext())
    {
      MVPDConfig localMVPDConfig = (MVPDConfig)localIterator.next();
      if (localMVPDConfig.getAdobeId().equals(str)) {
        return localMVPDConfig.isForceUserRegFlow();
      }
    }
    return false;
  }
  
  public final void e()
  {
    o = false;
    n = null;
    c.j();
  }
  
  public final void f()
  {
    d = null;
    a(false);
  }
  
  public final void g()
  {
    c.d().c = true;
    c.d().b(false);
  }
  
  public com.adobe.adobepass.accessenabler.a.b getAuthZToken()
  {
    return c.d().h.a("CBS_ENTERTAINMENT");
  }
  
  public void getAuthentication()
  {
    c.h();
  }
  
  public void getAuthenticationToken()
  {
    i = System.currentTimeMillis();
    m.removeMessages(0);
    m.sendEmptyMessage(0);
    if (g == null) {
      return;
    }
    g.a();
    c.i();
  }
  
  public void getAuthorization()
  {
    c.a("CBS_ENTERTAINMENT");
  }
  
  public String getCurrentMvpdId()
  {
    if (h) {
      return c.d().h.c();
    }
    return null;
  }
  
  public String getMvpdIdForTracking()
  {
    if ((o) && (getCurrentMvpdId() != null)) {
      return getCurrentMvpdId();
    }
    return null;
  }
  
  public MVPDConfig getSelectedMvpdConfig()
  {
    if (d != null) {
      return d;
    }
    String str = getCurrentMvpdId();
    if (str != null)
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        MVPDConfig localMVPDConfig = (MVPDConfig)localIterator.next();
        if (str.equals(localMVPDConfig.getAdobeId()))
        {
          new StringBuilder("publisher name: ").append(localMVPDConfig.getAdobeDisplayNameOverride());
          return localMVPDConfig;
        }
      }
    }
    return null;
  }
  
  public final void h()
  {
    c.g();
  }
  
  public final boolean i()
  {
    return n != null;
  }
  
  public final boolean j()
  {
    return o;
  }
  
  public void setMVPDCallbacks(MVPDCallbacks paramMVPDCallbacks)
  {
    g = paramMVPDCallbacks;
  }
  
  public void setMVPDProviderToModifyAuth(MVPDConfig paramMVPDConfig)
  {
    setSelectedMVPDConfig(paramMVPDConfig);
    if (d != null)
    {
      new StringBuilder("setMVPDProviderToModifyAuth: mvpdId = ").append(d.getAdobeId()).append(", AccessEnabler current mvpdId= ").append(c.d().h.c());
      c.b(d.getAdobeId());
      p = true;
      return;
    }
    c.b(null);
    p = false;
  }
  
  public void setRequestorComplete(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("setRequestor(): Unknown status code.");
    case 1: 
      Object localObject = c.d().f.d();
      j = new HashMap();
      if ((localObject != null) && (((ArrayList)localObject).size() > 0))
      {
        new StringBuilder("items: ").append(((ArrayList)localObject).size());
        try
        {
          localObject = ((ArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            g localg = (g)((Iterator)localObject).next();
            if (localg != null)
            {
              new StringBuilder("mvpd: ").append(localg.b());
              j.put(localg.a(), localg);
            }
          }
          new MVPDService().b(f, "v3.0", "/mvpd/configs.json", l, MVPDConfigsEndpointResponse.class);
        }
        catch (Exception localException)
        {
          Log.e("MVPDController", localException.toString());
        }
      }
      return;
    }
    h = false;
  }
  
  public void setSelectedMVPDConfig(MVPDConfig paramMVPDConfig)
  {
    new StringBuilder("setSelectedMVPDConfig() called with: selectedMvpdConfig = [").append(paramMVPDConfig).append("]");
    d = paramMVPDConfig;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.MVPDController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */