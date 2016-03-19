package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.c.a.a.e;
import com.cbs.app.service.LiveFyreService;
import com.cbs.app.service.LiveFyreService.ServiceChangListener;
import com.cbs.app.view.NavigationActivity;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.utils.Util;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class EpisodeCommentsFragment
  extends Fragment
{
  private static final String m = EpisodeCommentsFragment.class.getSimpleName();
  RelativeLayout a;
  LiveFyreService b;
  ProgressBar c;
  int d = 1;
  String e = null;
  int f = 0;
  boolean g = false;
  boolean h = false;
  AlertDialog i = null;
  String j = null;
  LiveFyreService.ServiceChangListener k = new LiveFyreService.ServiceChangListener()
  {
    public final void a()
    {
      EpisodeCommentsFragment.e();
      FragmentActivity localFragmentActivity = getActivity();
      if (localFragmentActivity != null) {
        localFragmentActivity.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            c();
          }
        });
      }
    }
    
    public final void b()
    {
      FragmentActivity localFragmentActivity = getActivity();
      if (localFragmentActivity != null) {
        localFragmentActivity.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            d();
          }
        });
      }
    }
  };
  AccountUIHelper.RefreshAccountListener l = new AccountUIHelper.RefreshAccountListener()
  {
    public final void a()
    {
      AccountUIHelper.setReconcileDialogShowing(false);
      EpisodeCommentsFragment.e();
      if (Util.y(getActivity()) != null)
      {
        EpisodeCommentsFragment.e();
        EpisodeCommentsFragment.this.a();
      }
    }
  };
  private View.OnClickListener n = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      EpisodeCommentsFragment.e();
      switch (paramAnonymousView.getId())
      {
      default: 
        b.a(1);
        d = 1;
      }
      for (;;)
      {
        b();
        return;
        b.a(2);
        d = 2;
        continue;
        b.a(3);
        d = 3;
      }
    }
  };
  
  private void f()
  {
    a.removeAllViews();
    FragmentActivity localFragmentActivity = getActivity();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    c = new ProgressBar(localFragmentActivity, null, 16842874);
    a.addView(c, localLayoutParams);
  }
  
  private View g()
  {
    Object localObject1 = getActivity();
    int i1 = Util.a((Context)localObject1, 8.0D);
    RelativeLayout localRelativeLayout = new RelativeLayout((Context)localObject1);
    Object localObject2 = new EditText((Context)localObject1);
    if ((Util.f((Context)localObject1)) || (Util.g((Context)localObject1))) {
      ((EditText)localObject2).setVisibility(8);
    }
    ((EditText)localObject2).setId(2131689490);
    ((EditText)localObject2).setGravity(51);
    ((EditText)localObject2).setHint("Enter post text here.");
    ((EditText)localObject2).setBackgroundResource(2130838017);
    Object localObject3 = new RelativeLayout.LayoutParams(-1, Util.a((Context)localObject1, 150.0D));
    ((RelativeLayout.LayoutParams)localObject3).setMargins(i1, 0, i1, i1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(10);
    localRelativeLayout.addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
    localObject2 = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903191, null);
    localObject3 = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject3).addRule(3, 2131689490);
    if (localObject2 != null)
    {
      ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
      localRelativeLayout.addView((View)localObject2);
      localObject3 = (Button)((View)localObject2).findViewById(2131690088);
      if ((Util.e((Context)localObject1)) && (f < 500)) {
        ((Button)localObject3).setHeight(50);
      }
      ((Button)localObject3).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Object localObject = getActivity();
          if ((Util.i((Context)localObject)) || (Util.j((Context)localObject)))
          {
            EpisodeCommentsFragment.e();
            e = null;
            paramAnonymousView = (EditText)((Activity)localObject).findViewById(2131689490);
            if ((paramAnonymousView != null) && (paramAnonymousView.getText() != null))
            {
              e = paramAnonymousView.getText().toString();
              ((InputMethodManager)((Activity)localObject).getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
            }
            e = e.trim();
            if ((e != null) && (!e.equals("")) && (e.length() != 0)) {
              if (b.getLiveFyreToken() == null)
              {
                EpisodeCommentsFragment.e();
                InputMethodManager localInputMethodManager = (InputMethodManager)((Activity)localObject).getSystemService("input_method");
                if (paramAnonymousView.getWindowToken() != null) {
                  localInputMethodManager.hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
                }
                AccountUIHelper.setFrom("Comments Page");
                if (getActivity().isFinishing()) {
                  break label286;
                }
              }
            }
          }
          label286:
          for (int i = 1;; i = 0)
          {
            if (i != 0)
            {
              SVODPopupHelper.setWeWantToSeeVideo(null);
              SVODPopupHelper.setWeWantToSeeShow(null);
              AccountUIHelper.b((Context)localObject);
            }
            return;
            localObject = (InputMethodManager)((Activity)localObject).getSystemService("input_method");
            if (paramAnonymousView.getWindowToken() != null) {
              ((InputMethodManager)localObject).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
            }
            EpisodeCommentsFragment.e();
            d(null);
            return;
            Toast.makeText((Context)localObject, "You must enter text to submit a comment.", 1).show();
            return;
            a((Context)localObject, null);
            return;
          }
        }
      });
    }
    localObject1 = (RadioButton)((View)localObject2).findViewById(2131690086);
    ((RadioButton)localObject1).setOnClickListener(n);
    if (d == 1) {
      ((RadioButton)localObject1).setChecked(true);
    }
    for (;;)
    {
      localObject1 = (RadioButton)((View)localObject2).findViewById(2131690087);
      ((RadioButton)localObject1).setOnClickListener(n);
      if (d != 2) {
        break;
      }
      ((RadioButton)localObject1).setChecked(true);
      return localRelativeLayout;
      ((RadioButton)localObject1).setChecked(false);
    }
    ((RadioButton)localObject1).setChecked(false);
    return localRelativeLayout;
  }
  
  public final void a()
  {
    FragmentActivity localFragmentActivity = getActivity();
    String str2 = Util.u(localFragmentActivity);
    String str3 = Util.t(localFragmentActivity);
    Bundle localBundle = getArguments();
    String str1 = null;
    if (localBundle != null) {
      str1 = localBundle.getString("articleId");
    }
    if ((b == null) && (str1 != null)) {
      b = new LiveFyreService(localFragmentActivity, str2, str3, str1, k);
    }
    if (str3 != null)
    {
      if (b != null) {
        b.setLiveFyreToken(str3);
      }
      if (e != null)
      {
        d(j);
        c();
      }
    }
    while (b == null)
    {
      return;
      if (g)
      {
        if (j != null)
        {
          b(j);
          c();
          return;
        }
        f();
        getData();
        return;
      }
      f();
      getData();
      return;
    }
    f();
    getData();
  }
  
  public final void a(final Context paramContext, final String paramString)
  {
    j = null;
    e = null;
    Object localObject = LayoutInflater.from(paramContext);
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(new ContextThemeWrapper(paramContext, 2131427561));
    AlertDialog.Builder localBuilder2 = localBuilder1.setCancelable(true).setView(((LayoutInflater)localObject).inflate(2130903213, null));
    if (paramString != null) {}
    for (localObject = "Reply";; localObject = "Post")
    {
      localBuilder2.setTitle((CharSequence)localObject).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          EpisodeCommentsFragment.e();
          paramAnonymousDialogInterface.dismiss();
          h = false;
        }
      }).setPositiveButton("Post", null);
      i = localBuilder1.create();
      i.setOnShowListener(new DialogInterface.OnShowListener()
      {
        public final void onShow(DialogInterface paramAnonymousDialogInterface)
        {
          paramAnonymousDialogInterface = i.getButton(-1);
          if (paramAnonymousDialogInterface != null)
          {
            paramAnonymousDialogInterface.setTag(paramString);
            paramAnonymousDialogInterface.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymous2View)
              {
                j = null;
                if (paramAnonymous2View.getTag() != null) {
                  j = paramAnonymous2View.getTag().toString();
                }
                e = null;
                paramAnonymous2View = (EditText)EpisodeCommentsFragment.this.i.findViewById(2131690147);
                InputMethodManager localInputMethodManager;
                View localView;
                if ((paramAnonymous2View != null) && (paramAnonymous2View.getText() != null))
                {
                  e = paramAnonymous2View.getText().toString();
                  localInputMethodManager = (InputMethodManager)b.getSystemService("input_method");
                  if (localInputMethodManager != null)
                  {
                    localView = ((Activity)b).getCurrentFocus();
                    if ((localView != null) && (localView.getWindowToken() != null)) {
                      localInputMethodManager.hideSoftInputFromWindow(paramAnonymous2View.getWindowToken(), 0);
                    }
                  }
                }
                e = e.trim();
                if ((paramAnonymous2View != null) && (e != null) && (!e.equals("")) && (e.length() != 0))
                {
                  localInputMethodManager = (InputMethodManager)b.getSystemService("input_method");
                  if (localInputMethodManager != null)
                  {
                    localView = ((Activity)b).getCurrentFocus();
                    if ((localView != null) && (localView.getWindowToken() != null)) {
                      localInputMethodManager.hideSoftInputFromWindow(paramAnonymous2View.getWindowToken(), 0);
                    }
                  }
                  EpisodeCommentsFragment.this.i.dismiss();
                  h = false;
                  if (b.getLiveFyreToken() == null)
                  {
                    AccountUIHelper.setFrom("Comments Page");
                    paramAnonymous2View = getActivity();
                    if ((paramAnonymous2View == null) || (paramAnonymous2View.isFinishing())) {
                      break label417;
                    }
                  }
                }
                label417:
                for (int i = 1;; i = 0)
                {
                  if (i != 0)
                  {
                    SVODPopupHelper.setWeWantToSeeVideo(null);
                    SVODPopupHelper.setWeWantToSeeShow(null);
                    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                    AccountUIHelper.b(b);
                  }
                  return;
                  d(j);
                  return;
                  Toast.makeText(b, "You must enter text to submit a comment.", 1).show();
                  return;
                }
              }
            });
          }
        }
      });
      if (!h)
      {
        i.show();
        h = true;
      }
      return;
    }
  }
  
  public final void a(final String paramString)
  {
    final FragmentActivity localFragmentActivity = getActivity();
    localFragmentActivity.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        Toast.makeText(localFragmentActivity, paramString, 1).show();
      }
    });
  }
  
  public final void b()
  {
    c();
  }
  
  public final void b(String paramString)
  {
    e local8 = new e()
    {
      public final void a(Throwable paramAnonymousThrowable)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure4:").append(paramAnonymousThrowable.getLocalizedMessage());
        a(paramAnonymousThrowable.getLocalizedMessage());
      }
      
      public final void a(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        EpisodeCommentsFragment.e();
        a(paramAnonymousString);
      }
      
      public final void a(Throwable paramAnonymousThrowable, JSONArray paramAnonymousJSONArray)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure2:").append(paramAnonymousThrowable).append(" obj:").append(paramAnonymousJSONArray);
        a("Unknown failure.");
      }
      
      public final void a(Throwable paramAnonymousThrowable, JSONObject paramAnonymousJSONObject)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure1: ").append(paramAnonymousThrowable.getLocalizedMessage()).append(" data: ").append(paramAnonymousJSONObject);
        if (paramAnonymousJSONObject != null) {}
        for (;;)
        {
          try
          {
            paramAnonymousThrowable = paramAnonymousJSONObject.getString("msg");
            paramAnonymousJSONObject = paramAnonymousThrowable;
            if (paramAnonymousThrowable == null)
            {
              paramAnonymousJSONObject = new StringBuilder("There was a problem ");
              if (!a) {
                break label105;
              }
              paramAnonymousThrowable = "liking";
              paramAnonymousJSONObject = paramAnonymousThrowable + " this content. Please try again later.";
            }
            a(paramAnonymousJSONObject);
            return;
          }
          catch (JSONException paramAnonymousThrowable)
          {
            EpisodeCommentsFragment.e();
            paramAnonymousThrowable.getMessage();
          }
          paramAnonymousThrowable = null;
          continue;
          label105:
          paramAnonymousThrowable = "unliking";
        }
      }
      
      public final void a(final JSONObject paramAnonymousJSONObject)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onSuccess: ").append(paramAnonymousJSONObject);
        if (paramAnonymousJSONObject != null)
        {
          JSONObject localJSONObject = null;
          try
          {
            paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONObject("data");
            if (paramAnonymousJSONObject == null) {}
          }
          catch (JSONException localJSONException)
          {
            try
            {
              localJSONObject = paramAnonymousJSONObject.getJSONObject("authors");
              b.a(localJSONObject);
            }
            catch (JSONException paramAnonymousJSONObject)
            {
              for (;;)
              {
                try
                {
                  paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONArray("messages");
                  int i = 0;
                  if (i >= paramAnonymousJSONObject.length()) {
                    break;
                  }
                  EpisodeCommentsFragment.e();
                  localJSONObject = paramAnonymousJSONObject.getJSONObject(i);
                  b.b(localJSONObject);
                  i += 1;
                  continue;
                  paramAnonymousJSONObject = paramAnonymousJSONObject;
                  paramAnonymousJSONObject.printStackTrace();
                  paramAnonymousJSONObject = localJSONObject;
                }
                catch (JSONException paramAnonymousJSONObject)
                {
                  paramAnonymousJSONObject.printStackTrace();
                }
                localJSONException = localJSONException;
                localJSONException.printStackTrace();
              }
            }
          }
        }
        paramAnonymousJSONObject = getActivity();
        paramAnonymousJSONObject.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            Activity localActivity = paramAnonymousJSONObject;
            StringBuilder localStringBuilder = new StringBuilder("You have ");
            if (a) {}
            for (Object localObject = "liked";; localObject = "unliked")
            {
              Toast.makeText(localActivity, (String)localObject + " this comment.", 1).show();
              localObject = (EditText)getActivity().findViewById(2131689490);
              if (localObject != null) {
                ((EditText)localObject).setText("");
              }
              b.a(d);
              b();
              return;
            }
          }
        });
        b.a();
      }
    };
    b.a(paramString, local8);
  }
  
  public final void c()
  {
    if ((b != null) && (b.getComments() != null) && (b.getComments().length() > 0))
    {
      Object localObject1 = getActivity();
      int i1 = Util.a((Context)localObject1, 12.0D);
      if (c != null) {
        c.setVisibility(8);
      }
      a.removeAllViews();
      Object localObject2 = g();
      Object localObject3 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject3).addRule(10);
      ((View)localObject2).setId(2131689483);
      ((RelativeLayout.LayoutParams)localObject3).setMargins(i1, i1, i1, i1);
      a.addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
      localObject3 = new EpisodeCommentsAdapter2((Context)localObject1, b);
      if ((((EpisodeCommentsAdapter2)localObject3).getCount() == 0) && ((localObject1 instanceof NavigationActivity))) {
        d();
      }
      localObject2 = new ListView((Context)localObject1);
      ((ListView)localObject2).setDividerHeight(0);
      ((ListView)localObject2).setDivider(null);
      ((ListView)localObject2).setSelector(17170445);
      localObject1 = ((Activity)localObject1).getLayoutInflater().inflate(2130903140, null, false);
      new StringBuilder("comments list view footer count:").append(((ListView)localObject2).getFooterViewsCount());
      if (((ListView)localObject2).getFooterViewsCount() == 0)
      {
        ((ListView)localObject2).addFooterView((View)localObject1);
        ((ListView)localObject2).setFooterDividersEnabled(false);
      }
      ((EpisodeCommentsAdapter2)localObject3).setCommentListener(new EpisodeCommentsAdapter2.CommentListener2()
      {
        public final void a(JSONObject paramAnonymousJSONObject)
        {
          Object localObject = null;
          EpisodeCommentsFragment.e();
          j = null;
          g = false;
          e = null;
          try
          {
            paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONObject("content");
            if (paramAnonymousJSONObject == null) {}
          }
          catch (JSONException paramAnonymousJSONObject)
          {
            try
            {
              paramAnonymousJSONObject = paramAnonymousJSONObject.getString("id");
              j = paramAnonymousJSONObject;
              paramAnonymousJSONObject = getActivity();
              a(paramAnonymousJSONObject, j);
              return;
              paramAnonymousJSONObject = paramAnonymousJSONObject;
              paramAnonymousJSONObject.printStackTrace();
              paramAnonymousJSONObject = null;
            }
            catch (JSONException paramAnonymousJSONObject)
            {
              for (;;)
              {
                paramAnonymousJSONObject.printStackTrace();
                paramAnonymousJSONObject = (JSONObject)localObject;
              }
            }
          }
        }
        
        public final void b(JSONObject paramAnonymousJSONObject)
        {
          EpisodeCommentsFragment.e();
          j = null;
          FragmentActivity localFragmentActivity = getActivity();
          for (;;)
          {
            try
            {
              paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONObject("content");
              if (paramAnonymousJSONObject == null) {}
            }
            catch (JSONException paramAnonymousJSONObject)
            {
              try
              {
                paramAnonymousJSONObject = paramAnonymousJSONObject.getString("id");
                j = paramAnonymousJSONObject;
                if (b != null)
                {
                  if (b.getLiveFyreToken() != null) {
                    continue;
                  }
                  EpisodeCommentsFragment.e();
                  g = true;
                  AccountUIHelper.setFrom("Comments Page");
                  if (getActivity().isFinishing()) {
                    break label161;
                  }
                  i = 1;
                  if (i != 0)
                  {
                    SVODPopupHelper.setWeWantToSeeVideo(null);
                    SVODPopupHelper.setWeWantToSeeShow(null);
                    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(false);
                    AccountUIHelper.b(localFragmentActivity);
                  }
                }
                return;
                paramAnonymousJSONObject = paramAnonymousJSONObject;
                paramAnonymousJSONObject.printStackTrace();
                paramAnonymousJSONObject = null;
              }
              catch (JSONException paramAnonymousJSONObject)
              {
                paramAnonymousJSONObject.printStackTrace();
                paramAnonymousJSONObject = null;
                continue;
                EpisodeCommentsFragment.e();
                b(j);
                return;
              }
            }
            label161:
            int i = 0;
          }
        }
      });
      ((ListView)localObject2).setAdapter((ListAdapter)localObject3);
      localObject1 = new RelativeLayout.LayoutParams(-1, -1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(3, 2131689483);
      a.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
      return;
    }
    d();
  }
  
  public final void c(final String paramString)
  {
    final FragmentActivity localFragmentActivity = getActivity();
    localFragmentActivity.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        Toast.makeText(localFragmentActivity, paramString, 1).show();
      }
    });
    e = null;
  }
  
  public final void d()
  {
    a.removeAllViews();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    int i1 = Util.a(getActivity(), 12.0D);
    localLayoutParams.setMargins(i1, i1, i1, i1);
    TextView localTextView = new TextView(getActivity());
    localTextView.setTextSize(2, 14.0F);
    localTextView.setTypeface(null, 1);
    localTextView.setText("We are unable to get the comments data.  Please try again later.");
    a.addView(localTextView, localLayoutParams);
  }
  
  public final void d(String paramString)
  {
    e local10 = new e()
    {
      public final void a(Throwable paramAnonymousThrowable)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure4:").append(paramAnonymousThrowable.getLocalizedMessage());
        c(paramAnonymousThrowable.getLocalizedMessage());
      }
      
      public final void a(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        EpisodeCommentsFragment.e();
        c(paramAnonymousString);
      }
      
      public final void a(Throwable paramAnonymousThrowable, JSONArray paramAnonymousJSONArray)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure2:").append(paramAnonymousThrowable).append(" obj:").append(paramAnonymousJSONArray);
        c("Unknown failure.");
      }
      
      public final void a(Throwable paramAnonymousThrowable, JSONObject paramAnonymousJSONObject)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onFailure: ").append(paramAnonymousThrowable.getLocalizedMessage()).append(" data: ").append(paramAnonymousJSONObject);
        if (paramAnonymousJSONObject != null) {}
        for (;;)
        {
          try
          {
            paramAnonymousThrowable = paramAnonymousJSONObject.getString("msg");
            paramAnonymousJSONObject = paramAnonymousThrowable;
            if (paramAnonymousThrowable == null) {
              paramAnonymousJSONObject = "There was a problem commenting. Please try again later.";
            }
            a(paramAnonymousJSONObject);
            return;
          }
          catch (JSONException paramAnonymousThrowable)
          {
            paramAnonymousThrowable.printStackTrace();
          }
          paramAnonymousThrowable = null;
        }
      }
      
      public final void a(final JSONObject paramAnonymousJSONObject)
      {
        EpisodeCommentsFragment.e();
        new StringBuilder("onSuccess: ").append(paramAnonymousJSONObject);
        try
        {
          paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONObject("data");
          if (paramAnonymousJSONObject == null) {}
        }
        catch (JSONException localJSONException)
        {
          try
          {
            localJSONObject = paramAnonymousJSONObject.getJSONObject("authors");
            EpisodeCommentsFragment.e();
            b.a(localJSONObject);
          }
          catch (JSONException paramAnonymousJSONObject)
          {
            for (;;)
            {
              try
              {
                paramAnonymousJSONObject = paramAnonymousJSONObject.getJSONArray("messages");
                int i = 0;
                if (i >= paramAnonymousJSONObject.length()) {
                  break;
                }
                EpisodeCommentsFragment.e();
                JSONObject localJSONObject = paramAnonymousJSONObject.getJSONObject(i);
                b.b(localJSONObject);
                i += 1;
                continue;
                paramAnonymousJSONObject = paramAnonymousJSONObject;
                paramAnonymousJSONObject.printStackTrace();
                paramAnonymousJSONObject = null;
              }
              catch (JSONException paramAnonymousJSONObject)
              {
                paramAnonymousJSONObject.printStackTrace();
              }
              localJSONException = localJSONException;
              localJSONException.printStackTrace();
            }
          }
          paramAnonymousJSONObject = getActivity();
          if (paramAnonymousJSONObject != null)
          {
            EpisodeCommentsFragment.e();
            paramAnonymousJSONObject.runOnUiThread(new Runnable()
            {
              public final void run()
              {
                EpisodeCommentsFragment.e();
                Toast.makeText(paramAnonymousJSONObject, "Message posted.", 1).show();
                b.a(d);
                b();
              }
            });
          }
          e = null;
          b.a();
        }
      }
    };
    b.a(paramString, e, local10);
  }
  
  public void getData()
  {
    Object localObject2 = getActivity();
    String str1 = Util.u((Context)localObject2);
    String str2 = Util.t((Context)localObject2);
    Object localObject1 = getArguments();
    if (localObject1 != null) {}
    for (localObject1 = ((Bundle)localObject1).getString("articleId");; localObject1 = null)
    {
      if (localObject1 != null)
      {
        b = new LiveFyreService((Context)localObject2, str1, str2, (String)localObject1, k);
        return;
      }
      int i1 = Util.a(getActivity(), 12.0D);
      a.removeAllViews();
      localObject1 = g();
      localObject2 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(10);
      ((View)localObject1).setId(2131689483);
      ((RelativeLayout.LayoutParams)localObject2).setMargins(i1, i1, i1, i1);
      a.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      localObject1 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject1).setMargins(i1, i1, i1, i1);
      ((RelativeLayout.LayoutParams)localObject1).addRule(3, 2131689483);
      localObject2 = new TextView(getActivity());
      ((TextView)localObject2).setTextSize(2, 14.0F);
      ((TextView)localObject2).setTypeface(null, 1);
      ((TextView)localObject2).setText("There are no comments for this video. Please check back later.");
      a.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    AccountUIHelper.a(l);
    paramLayoutInflater = new RelativeLayout.LayoutParams(-1, -1);
    a = new RelativeLayout(getActivity());
    a.setLayoutParams(paramLayoutInflater);
    a.setId(2131689479);
    return a;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    a = null;
    AccountUIHelper.b(l);
  }
  
  public void onPause()
  {
    super.onPause();
    if (b != null) {
      b.i = false;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (b == null)
    {
      Object localObject = getArguments();
      String str = null;
      if (localObject != null) {
        str = ((Bundle)localObject).getString("articleId");
      }
      if (str != null)
      {
        localObject = getActivity();
        b = new LiveFyreService((Context)localObject, Util.u((Context)localObject), Util.t((Context)localObject), str, k);
      }
      return;
    }
    b.i = true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */