package com.cbs.app.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnShowListener;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.app.FragmentManager;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.fragment.LiveTvFragment;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.service.ShowService;
import com.cbs.app.service.ShowServiceImpl;
import com.cbs.app.service.UpsellService;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.registration.UserDescription;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.ViewUtil;
import java.util.HashMap;
import java.util.List;

public final class SVODPopupHelper
{
  public static boolean a;
  static boolean b;
  static boolean c;
  static boolean d;
  public static final ResponseModelListener e;
  public static final ResponseModelListener f;
  public static final ResponseModelListener g;
  public static final ResponseModelListener h;
  public static final ResponseModelListener i = new ResponseModelListener()
  {
    public final void a()
    {
      SVODPopupHelper.d();
      int i = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_counter", 0);
      Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_counter", i + 1);
      if (SVODPopupHelper.h()) {
        SVODPopupHelper.b();
      }
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      SVODPopupHelper.d();
      String str2 = "";
      String str1 = str2;
      int i;
      if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
      {
        paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
        str1 = str2;
        if (paramAnonymousResponseModel != null)
        {
          str1 = str2;
          if (paramAnonymousResponseModel.size() > 0)
          {
            paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text1", paramAnonymousResponseModel.getUpsellMessage());
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text2", paramAnonymousResponseModel.getUpsellMessage2());
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text3", paramAnonymousResponseModel.getUpsellMessage3());
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_call_to_action", paramAnonymousResponseModel.getCallToAction());
            if (paramAnonymousResponseModel.getProductID() != null) {
              Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramAnonymousResponseModel.getProductID());
            }
            str1 = Util.k(SVODPopupHelper.e(), paramAnonymousResponseModel.getCallToActionURL());
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_call_to_action_url", str1);
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_content_id", paramAnonymousResponseModel.getContentId());
            str1 = paramAnonymousResponseModel.getContentId();
            if (str1 != null) {
              SVODPopupHelper.d();
            }
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_background_image", paramAnonymousResponseModel.getUpsellImagePath());
            j = (int)paramAnonymousResponseModel.getDisplayFrequency();
            i = j;
            if (j == 0) {
              i = 5;
            }
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_frequency", i);
          }
        }
      }
      int j = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_frequency", 0);
      if (SVODPopupHelper.f())
      {
        i = 0;
        SVODPopupHelper.d();
        new StringBuilder("checkToShowLaunchUpsell counter2: ").append(i).append(" frequency: ").append(j);
        if ((!SVODPopupHelper.f()) && ((j == 0) || (i % j != 0))) {
          break label316;
        }
        SVODPopupHelper.a = true;
        SVODPopupHelper.a(SVODPopupHelper.e(), SVODPopupHelper.g(), str1);
      }
      for (;;)
      {
        SVODPopupHelper.a(false);
        Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_counter", i + 1);
        return;
        i = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_counter", 0);
        break;
        label316:
        if (SVODPopupHelper.h()) {
          SVODPopupHelper.b();
        }
      }
    }
  };
  private static final String j = SVODPopupHelper.class.getSimpleName();
  private static Context k;
  private static String l;
  private static String m;
  private static Dialog n;
  private static boolean o;
  private static boolean p;
  private static boolean q;
  private static boolean r;
  private static boolean s;
  private static ShowItem t;
  private static VideoData u;
  
  static
  {
    a = false;
    b = false;
    c = false;
    d = false;
    k = null;
    e = new ResponseModelListener()
    {
      public final void a()
      {
        SVODPopupHelper.d();
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        SVODPopupHelper.d();
        if ((paramAnonymousResponseModel != null) && ((paramAnonymousResponseModel instanceof VideoEndpointResponse)))
        {
          paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
          {
            paramAnonymousResponseModel = (VideoData)paramAnonymousResponseModel.get(0);
            VideoUtil.a(SVODPopupHelper.e(), paramAnonymousResponseModel);
          }
        }
      }
    };
    l = "Anonymous";
    m = null;
    p = false;
    f = new ResponseModelListener()
    {
      public final void a()
      {
        SVODPopupHelper.d();
        SVODPopupHelper.b = true;
        SVODPopupHelper.a();
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        SVODPopupHelper.d();
        if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
        {
          paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
          {
            SVODPopupHelper.d();
            paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
            Preferences.a(SVODPopupHelper.e(), "title", paramAnonymousResponseModel.getTitle());
            SVODPopupHelper.d();
            new StringBuilder("title:").append(paramAnonymousResponseModel.getTitle());
            Preferences.a(SVODPopupHelper.e(), "aa_upsell_text1", paramAnonymousResponseModel.getUpsellMessage());
            SVODPopupHelper.d();
            new StringBuilder("msg1:").append(paramAnonymousResponseModel.getUpsellMessage());
            Preferences.a(SVODPopupHelper.e(), "aa_upsell_text2", paramAnonymousResponseModel.getUpsellMessage2());
            SVODPopupHelper.d();
            new StringBuilder("msg2:").append(paramAnonymousResponseModel.getUpsellMessage2());
            Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action", paramAnonymousResponseModel.getCallToAction());
            SVODPopupHelper.d();
            new StringBuilder("action text:").append(paramAnonymousResponseModel.getCallToAction());
            String str = Util.k(SVODPopupHelper.e(), paramAnonymousResponseModel.getCallToActionURL());
            Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action_url", str);
            if (paramAnonymousResponseModel.getProductID() != null) {
              Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramAnonymousResponseModel.getProductID());
            }
          }
          SVODPopupHelper.b = true;
          SVODPopupHelper.a();
        }
      }
    };
    g = new ResponseModelListener()
    {
      public final void a()
      {
        SVODPopupHelper.d();
        SVODPopupHelper.c = true;
        SVODPopupHelper.a();
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        SVODPopupHelper.d();
        if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
        {
          paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
          {
            SVODPopupHelper.d();
            paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
            Preferences.a(SVODPopupHelper.e(), "learn_more_call_to_action", paramAnonymousResponseModel.getCallToAction());
            String str = Util.k(SVODPopupHelper.e(), paramAnonymousResponseModel.getCallToActionURL());
            Preferences.a(SVODPopupHelper.e(), "learn_more_call_to_action_url", str);
            if (paramAnonymousResponseModel.getProductID() != null) {
              Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramAnonymousResponseModel.getProductID());
            }
          }
          SVODPopupHelper.c = true;
          SVODPopupHelper.a();
        }
      }
    };
    h = new ResponseModelListener()
    {
      public final void a()
      {
        SVODPopupHelper.d();
        SVODPopupHelper.d = true;
        SVODPopupHelper.a();
      }
      
      public final void a(ResponseModel paramAnonymousResponseModel)
      {
        SVODPopupHelper.d();
        if ((paramAnonymousResponseModel instanceof UpsellEndpointResponse))
        {
          paramAnonymousResponseModel = ((UpsellEndpointResponse)paramAnonymousResponseModel).getUpsellInfo();
          if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
          {
            SVODPopupHelper.d();
            paramAnonymousResponseModel = (UpsellInfo)paramAnonymousResponseModel.get(0);
            Preferences.a(SVODPopupHelper.e(), "title", paramAnonymousResponseModel.getTitle());
            SVODPopupHelper.d();
            new StringBuilder("title:").append(paramAnonymousResponseModel.getTitle());
            Preferences.a(SVODPopupHelper.e(), "aa_upsell_text1", paramAnonymousResponseModel.getUpsellMessage());
            SVODPopupHelper.d();
            new StringBuilder("msg1:").append(paramAnonymousResponseModel.getUpsellMessage());
            Preferences.a(SVODPopupHelper.e(), "aa_upsell_text2", paramAnonymousResponseModel.getUpsellMessage2());
            SVODPopupHelper.d();
            new StringBuilder("msg2:").append(paramAnonymousResponseModel.getUpsellMessage2());
            Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action", paramAnonymousResponseModel.getCallToAction());
            SVODPopupHelper.d();
            new StringBuilder("action text:").append(paramAnonymousResponseModel.getCallToAction());
            if (paramAnonymousResponseModel.getProductID() != null) {
              Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramAnonymousResponseModel.getProductID());
            }
            paramAnonymousResponseModel = Util.k(SVODPopupHelper.e(), paramAnonymousResponseModel.getCallToActionURL());
            Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action_url", paramAnonymousResponseModel);
          }
          SVODPopupHelper.d = true;
          SVODPopupHelper.a();
        }
      }
    };
    s = true;
    t = null;
    u = null;
  }
  
  public static void a()
  {
    if ((c) && (b) && (d))
    {
      b();
      b = false;
      c = false;
      d = false;
    }
  }
  
  public static void a(Context paramContext)
  {
    if (((Activity)paramContext).isFinishing()) {
      return;
    }
    Dialog localDialog = new Dialog(paramContext);
    localDialog.requestWindowFeature(1);
    localDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    localDialog.setContentView(2130903131);
    Button localButton = (Button)localDialog.findViewById(2131689876);
    if ((VideoUtil.c()) || (VideoUtil.b()))
    {
      localButton.setText(k.getResources().getString(2131231173));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.dismiss();
        }
      });
      paramContext = (TextView)localDialog.findViewById(2131689875);
      if ((!VideoUtil.c()) && (!VideoUtil.b())) {
        break label168;
      }
      paramContext.setText(k.getResources().getString(2131231308));
    }
    for (;;)
    {
      localDialog.show();
      return;
      localButton.setText(k.getResources().getString(2131231259));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.a = false;
          AccountUIHelper.setFrom("");
          AccountUIHelper.b(a, "CBS ALL ACCESS Sign In");
        }
      });
      break;
      label168:
      paramContext.setText(k.getResources().getString(2131231259));
    }
  }
  
  public static void a(Context paramContext, VideoData paramVideoData, ShowItem paramShowItem)
  {
    Object localObject = null;
    k = paramContext;
    label22:
    UpsellService localUpsellService;
    if (paramVideoData == null)
    {
      u = null;
      if (paramShowItem != null) {
        break label136;
      }
      t = null;
      q();
      Preferences.a(k, "title", " ");
      Preferences.a(k, "aa_upsell_text1", " ");
      Preferences.a(k, "aa_upsell_text2", " ");
      Preferences.a(k, "sign_up_call_to_action", " ");
      localUpsellService = new UpsellService();
      if (!Util.e(k)) {
        break label143;
      }
      paramShowItem = "NATIVE_UPSELL_PHONE1";
      paramVideoData = "NATIVE_UPSELL_PHONE2";
      paramContext = "UPGRADE_EX_SUBSCRIBER_PHONE";
    }
    for (;;)
    {
      localUpsellService.a(k, paramShowItem, f);
      localUpsellService.a(k, paramVideoData, g);
      localUpsellService.a(k, paramContext, h);
      return;
      u = paramVideoData;
      break;
      label136:
      t = paramShowItem;
      break label22;
      label143:
      if (Util.h(k))
      {
        paramShowItem = "NATIVE_UPSELL_TABLET1";
        paramVideoData = "NATIVE_UPSELL_TABLET2";
        paramContext = "UPGRADE_EX_SUBSCRIBER_TABLET";
      }
      else
      {
        paramVideoData = null;
        paramShowItem = null;
        paramContext = (Context)localObject;
      }
    }
  }
  
  public static void a(final Context paramContext, String paramString)
  {
    k = paramContext;
    m = paramString;
    if ((!p) && (paramContext != null) && ((paramContext instanceof Activity)) && (!((Activity)paramContext).isFinishing()))
    {
      paramString = LayoutInflater.from(paramContext).inflate(2130903129, null);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131427561));
      localBuilder.setCancelable(true).setView(paramString).setTitle(paramContext.getResources().getString(2131230881)).setPositiveButton("OK", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      });
      paramString = localBuilder.create();
      paramString.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public final void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          SVODPopupHelper.i();
        }
      });
      paramString.setOnShowListener(new DialogInterface.OnShowListener()
      {
        public final void onShow(DialogInterface paramAnonymousDialogInterface)
        {
          paramAnonymousDialogInterface = (TextView)a.findViewById(2131689863);
          paramAnonymousDialogInterface.setText(Html.fromHtml(paramContext.getString(2131231312)));
          paramAnonymousDialogInterface.setTextSize(20.0F);
          paramAnonymousDialogInterface.setMovementMethod(LinkMovementMethod.getInstance());
          Object localObject;
          if (a != null)
          {
            localObject = a.getButton(-1);
            ((Button)localObject).setTypeface(null, 1);
            ((Button)localObject).setTextSize(2, 20.0F);
            if ((SVODPopupHelper.e() == null) || (!(SVODPopupHelper.e() instanceof NavigationActivity))) {
              break label226;
            }
          }
          label226:
          for (paramAnonymousDialogInterface = ((NavigationActivity)SVODPopupHelper.e()).getSupportFragmentManager();; paramAnonymousDialogInterface = null)
          {
            if (paramAnonymousDialogInterface != null) {}
            for (paramAnonymousDialogInterface = paramAnonymousDialogInterface.findFragmentByTag("fragment_live_tv");; paramAnonymousDialogInterface = null)
            {
              if ((paramAnonymousDialogInterface != null) && ((paramAnonymousDialogInterface instanceof LiveTvFragment))) {
                ((Button)localObject).setOnClickListener(new View.OnClickListener()
                {
                  public final void onClick(View paramAnonymous2View)
                  {
                    a.dismiss();
                  }
                });
              }
              paramAnonymousDialogInterface = Action.bJ;
              localObject = new HashMap();
              ((HashMap)localObject).put("pageView", "true");
              ((HashMap)localObject).put("evar_6", "CBS svod");
              ((HashMap)localObject).put("prop_6", "CBS svod");
              ((HashMap)localObject).put("events", "event20");
              ((HashMap)localObject).put("evar_70", "303");
              ((HashMap)localObject).put("prop_70", "303");
              if (SVODPopupHelper.g() != null) {
                ((HashMap)localObject).put("From", SVODPopupHelper.g());
              }
              AnalyticsManager.a(SVODPopupHelper.e(), paramAnonymousDialogInterface, (HashMap)localObject);
              return;
            }
          }
        }
      });
      p = true;
      paramString.show();
    }
  }
  
  public static void a(final Context paramContext, String paramString1, String paramString2)
  {
    Object localObject1 = (Activity)paramContext;
    boolean bool;
    final Object localObject2;
    if (!((Activity)localObject1).isFinishing())
    {
      bool = Util.G((Context)localObject1);
      localObject2 = new Dialog(k);
      n = (Dialog)localObject2;
      ((Dialog)localObject2).requestWindowFeature(1);
      n.getWindow().setBackgroundDrawable(new ColorDrawable(0));
      if (!bool) {
        break label484;
      }
      n.setContentView(2130903132);
      localObject2 = ViewUtil.b(n, 2131689864);
      if (localObject2 != null) {
        ((ImageView)localObject2).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SVODPopupHelper.d();
            SVODPopupHelper.k().dismiss();
            SVODPopupHelper.a = false;
            Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
            if ((SVODPopupHelper.h()) && (!a))
            {
              SVODPopupHelper.c(SVODPopupHelper.e());
              return;
            }
            SVODPopupHelper.j();
          }
        });
      }
      localObject2 = (TextView)n.findViewById(2131689873);
      if (localObject2 != null)
      {
        if (!Util.G((Context)localObject1)) {
          break label500;
        }
        ((TextView)localObject2).setVisibility(8);
      }
      label137:
      localObject2 = (ImageView)n.findViewById(2131689874);
      if (localObject2 != null)
      {
        if (!Util.G((Context)localObject1)) {
          break label524;
        }
        ((ImageView)localObject2).setVisibility(8);
      }
      label171:
      paramString2 = ViewUtil.a(n, 2131689866);
      if (paramString2 != null) {
        paramString2.setText(Preferences.b(k, "svod_launch_upsell_text1", ""));
      }
      paramString2 = ViewUtil.a(n, 2131689868);
      if (paramString2 != null) {
        paramString2.setText(Html.fromHtml(Preferences.b(k, "svod_launch_upsell_text2", "")));
      }
      paramString2 = ViewUtil.b(n, 2131689867);
      if (paramString2 != null)
      {
        localObject1 = Preferences.b(k, "svod_launch_upsell_background_image", null);
        if (localObject1 != null) {
          ImageHelper.a("http://wwwimage.cbsstatic.com/base/" + (String)localObject1, paramString2, -1, -1);
        }
      }
      paramString2 = ViewUtil.a(n);
      if (paramString2 != null)
      {
        if (!bool) {
          break label546;
        }
        paramString2.setVisibility(8);
      }
      label310:
      paramString2 = ViewUtil.b(n);
      localObject1 = ViewUtil.a(n, 2131689872);
      localObject2 = ViewUtil.a(n, 2131689871);
      new StringBuilder(" user status is: ").append(l);
      if (paramString2 != null)
      {
        if (!r()) {
          break label576;
        }
        paramString2.setVisibility(8);
      }
    }
    for (;;)
    {
      n.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public final void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          SVODPopupHelper.a = false;
          Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
          if ((SVODPopupHelper.h()) && (!a))
          {
            SVODPopupHelper.c(SVODPopupHelper.e());
            return;
          }
          SVODPopupHelper.j();
        }
      });
      n.setOnKeyListener(new DialogInterface.OnKeyListener()
      {
        public final boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 4)
          {
            if (GlobalConstants.c) {
              break label57;
            }
            SVODPopupHelper.a = false;
            SVODPopupHelper.k().dismiss();
            if ((!SVODPopupHelper.h()) || (a)) {
              break label50;
            }
            SVODPopupHelper.c(SVODPopupHelper.e());
          }
          for (;;)
          {
            Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
            return true;
            label50:
            SVODPopupHelper.j();
            continue;
            label57:
            GlobalConstants.c = false;
          }
        }
      });
      n.show();
      paramContext = Action.bI;
      paramString2 = new HashMap();
      paramString2.put("pageView", "true");
      paramString2.put("evar_6", "CBS svod");
      paramString2.put("prop_6", "CBS svod");
      paramString2.put("events", "event22");
      if (paramString1 != null) {
        paramString2.put("From", paramString1);
      }
      AnalyticsManager.a(k, paramContext, paramString2);
      return;
      label484:
      n.setContentView(2130903130);
      r = true;
      break;
      label500:
      ((TextView)localObject2).setVisibility(0);
      ((TextView)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.d();
          if (a != null)
          {
            new ShowServiceImpl().g(SVODPopupHelper.e(), a, SVODPopupHelper.e);
            return;
          }
          localObject2.setVisibility(8);
        }
      });
      break label137;
      label524:
      ((ImageView)localObject2).setVisibility(0);
      ((ImageView)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.d();
          if (a != null) {
            new ShowServiceImpl().g(SVODPopupHelper.e(), a, SVODPopupHelper.e);
          }
        }
      });
      break label171;
      label546:
      paramString2.setText(Preferences.b(k, "svod_launch_upsell_call_to_action", ""));
      paramString2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.d();
          SVODPopupHelper.k().dismiss();
          SVODPopupHelper.a = false;
          Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
          paramAnonymousView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
          if (paramAnonymousView != null)
          {
            if (SVODPopupHelper.l())
            {
              Util.a(SVODPopupHelper.e(), paramAnonymousView);
              return;
            }
            if (SVODPopupHelper.m())
            {
              AccountUIHelper.d(SVODPopupHelper.e(), paramAnonymousView);
              return;
            }
            SVODPopupHelper.j();
            return;
          }
          Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
        }
      });
      break label310;
      label576:
      paramString2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.setTextSize(1, 14.0F);
          localObject2.setTextSize(1, 12.0F);
          Preferences.a(SVODPopupHelper.e(), "upsell_dialog_seen");
          AccountUIHelper.setFrom("");
          AccountUIHelper.b(paramContext, "CBS ALL ACCESS Sign In");
        }
      });
    }
  }
  
  public static void b()
  {
    if ((k == null) || (((Activity)k).isFinishing())) {
      return;
    }
    q();
    o = false;
    q = false;
    r = true;
    Dialog localDialog = new Dialog(new ContextThemeWrapper(k, 2131427561));
    localDialog.setContentView(2130903305);
    localDialog.setCancelable(true);
    localDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        SVODPopupHelper.a = false;
        SVODPopupHelper.b(false);
        SVODPopupHelper.j();
      }
    });
    ((TextView)localDialog.findViewById(2131690404)).setText(Preferences.b(k, "aa_upsell_text1", " "));
    ((TextView)localDialog.findViewById(2131690405)).setText(Preferences.b(k, "aa_upsell_text2", " "));
    TextView localTextView1 = (TextView)localDialog.findViewById(2131690406);
    localTextView1.setText(Preferences.b(k, "learn_more_call_to_action", " "));
    TextView localTextView2 = (TextView)localDialog.findViewById(2131690352);
    TextView localTextView3 = (TextView)localDialog.findViewById(2131690353);
    if (s())
    {
      localDialog.setTitle(Preferences.b(k, "title", " "));
      localTextView3.setText(Preferences.b(k, "sign_up_call_to_action", " "));
      localTextView3.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.a = false;
          SVODPopupHelper.b(false);
          a.dismiss();
          paramAnonymousView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
          if (paramAnonymousView != null)
          {
            AccountUIHelper.c(SVODPopupHelper.e(), paramAnonymousView);
            return;
          }
          Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
        }
      });
      localTextView2.setVisibility(0);
      localTextView2.setText("Sign In");
      localTextView2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.a = true;
          SVODPopupHelper.b(false);
          a.dismiss();
          AccountUIHelper.setFrom("");
          AccountUIHelper.b(SVODPopupHelper.e(), "CBS ALL ACCESS Sign In");
        }
      });
    }
    for (;;)
    {
      localTextView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SVODPopupHelper.a(true);
          SVODPopupHelper.b(true);
          SVODPopupHelper.b(SVODPopupHelper.e());
          a.dismiss();
        }
      });
      localDialog.show();
      return;
      if (r())
      {
        localDialog.setTitle(Preferences.b(k, "title", " "));
        localTextView2.setVisibility(8);
        getLayoutParamsleftMargin = 0;
        localTextView3.setText(Preferences.b(k, "sign_up_call_to_action", " "));
        localTextView3.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SVODPopupHelper.a = false;
            SVODPopupHelper.b(false);
            a.dismiss();
            paramAnonymousView = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_product_id", null);
            if (paramAnonymousView != null)
            {
              Util.a(SVODPopupHelper.e(), paramAnonymousView);
              return;
            }
            Toast.makeText(SVODPopupHelper.e(), "product id not found", 1).show();
          }
        });
      }
    }
  }
  
  public static void b(Context paramContext)
  {
    q();
    new UpsellService().a(paramContext, "APP_LAUNCH_SVOD_UPSELL", i);
  }
  
  public static void b(Context paramContext, String paramString)
  {
    int i2 = 0;
    for (;;)
    {
      try
      {
        new StringBuilder("checkToShowLaunchUpsell").append(paramContext).append(paramString).append(a);
        k = paramContext;
        m = paramString;
        if ((!a) && (paramContext != null) && ((paramContext instanceof Activity)))
        {
          paramString = (Activity)paramContext;
          boolean bool = paramString.isFinishing();
          if (!bool) {}
        }
        else
        {
          return;
        }
        q();
        int i1 = i2;
        if (!l.equals(UserDescription.SUBSCRIBER.name()))
        {
          i1 = i2;
          if (!l.equals(UserDescription.SUSPENDED.name())) {
            i1 = 1;
          }
        }
        if ((i1 == 0) || (Util.G(paramString))) {
          continue;
        }
        i1 = Preferences.b(paramContext, "svod_launch_upsell_frequency", 0);
        i2 = Preferences.b(paramContext, "svod_launch_upsell_counter", 0);
        new StringBuilder("checkToShowLaunchUpsell counter: ").append(i2).append(" frequency: ").append(i1);
        if (i1 == 0)
        {
          b(paramContext);
          continue;
        }
        if (i2 % i1 != 0) {
          break label198;
        }
      }
      finally {}
      b(paramContext);
      continue;
      label198:
      Preferences.a(k, "svod_launch_upsell_counter", i2 + 1);
    }
  }
  
  public static void c()
  {
    if ((n != null) && (n.isShowing())) {
      n.dismiss();
    }
  }
  
  public static void c(Context paramContext)
  {
    a(paramContext, null, null);
  }
  
  public static void c(Context paramContext, String paramString)
  {
    
    if (l.equals(UserDescription.SUSPENDED.name())) {
      if (s)
      {
        a(paramContext, "IAB Flow");
        q = false;
        u = null;
        t = null;
      }
    }
    for (;;)
    {
      c();
      r = false;
      return;
      if (l.equals(UserDescription.SUBSCRIBER.name()))
      {
        q = false;
        if ((u != null) && (t != null)) {
          new ShowServiceImpl().g(paramContext, u.getCid(), new ResponseModelListener()
          {
            public final void a() {}
            
            public final void a(ResponseModel paramAnonymousResponseModel)
            {
              paramAnonymousResponseModel = ((VideoEndpointResponse)paramAnonymousResponseModel).getItemList();
              if ((paramAnonymousResponseModel != null) && (paramAnonymousResponseModel.size() > 0))
              {
                paramAnonymousResponseModel = (VideoData)paramAnonymousResponseModel.get(0);
                VideoUtil.a(a, paramAnonymousResponseModel, SVODPopupHelper.n());
                SVODPopupHelper.o();
                SVODPopupHelper.p();
              }
            }
          });
        }
      }
      else if ((l.equals(UserDescription.REGISTERED.name())) || (l.equals(UserDescription.EX_SUBSCRIBER.name())))
      {
        if (paramString != null)
        {
          Util.a(paramContext, paramString);
        }
        else if (s)
        {
          new StringBuilder("weWantToSeelUpsellAfterAuth: ").append(u).append(" ").append(t);
          a(paramContext, u, t);
        }
      }
    }
  }
  
  public static ShowItem getWeWantToSeeShow()
  {
    return t;
  }
  
  public static VideoData getWeWantToSeeVideo()
  {
    return u;
  }
  
  private static void q()
  {
    l = "Anonymous";
    Object localObject = AuthStatusManager.getUserAuthStatus();
    if (localObject != null)
    {
      localObject = ((AuthStatusEndpointResponse)localObject).getUserStatus();
      if (localObject != null)
      {
        l = ((UserStatus)localObject).getDescription();
        new StringBuilder("userStatusStr: ").append(l);
      }
    }
  }
  
  private static boolean r()
  {
    return (l.equals(UserDescription.REGISTERED.name())) || (l.equals(UserDescription.EX_SUBSCRIBER.name()));
  }
  
  private static boolean s()
  {
    return (l.equals("Anonymous")) || (l.equals(UserDescription.ANONYMOUS.name()));
  }
  
  public static void setWeWantToSeeShow(ShowItem paramShowItem)
  {
    t = paramShowItem;
  }
  
  public static void setWeWantToSeeVideo(VideoData paramVideoData)
  {
    u = paramVideoData;
  }
  
  public static void setWeWantToSeelUpsellAfterAuth(boolean paramBoolean)
  {
    s = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */