package com.cbs.app.view;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.view.fragments.settings.DoneListener;

final class SubscriptionActivity$b$1
  implements DoneListener
{
  SubscriptionActivity$b$1(SubscriptionActivity.b paramb, Uri paramUri, String paramString) {}
  
  public final void a(String paramString)
  {
    SubscriptionActivity.a();
    new StringBuilder("urlObj: ").append(a.toString());
    if ((SubscriptionActivity.b.a(c) instanceof Activity))
    {
      SubscriptionActivity.a();
      if (!b.contains("demoContentId")) {
        break label102;
      }
      SubscriptionActivity.a();
      paramString = a.getQueryParameter("demoContentId");
      localObject = new ShowServiceImpl();
      if (paramString != null) {
        ((ShowService)localObject).g(SubscriptionActivity.b.a(c), paramString, new ResponseModelListener()
        {
          public final void a() {}
          
          public final void a(ResponseModel paramAnonymousResponseModel)
          {
            SubscriptionActivity.a();
            SubscriptionActivity.a(SubscriptionActivity.b.a(c), paramAnonymousResponseModel);
          }
        });
      }
    }
    label102:
    do
    {
      return;
      SubscriptionActivity.a();
    } while (!(SubscriptionActivity.b.a(c) instanceof Activity));
    paramString = (Activity)SubscriptionActivity.b.a(c);
    Object localObject = new Intent();
    ((Intent)localObject).putExtra("url", a.toString());
    paramString.setResult(-1, (Intent)localObject);
    paramString.finish();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SubscriptionActivity.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */