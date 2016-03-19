package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.adobe.adobepass.accessenabler.a.g;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.BaseFragmentCallBack;
import com.cbs.app.livetv.model.UserStatusEnum;
import com.cbs.app.livetv.util.ImageResizerUrl;
import com.cbs.app.livetv.widget.ArrayListAdapter;
import com.cbs.app.livetv.widget.NoUnderlineClickableSpan;
import com.cbs.app.livetv.widget.RecyclerItemClickListener;
import com.cbs.app.livetv.widget.RecyclerItemClickListener.OnItemClickListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.view.model.MVPDConfig;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.ImageHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ProviderSelectionFragment
  extends UpSellDataFragment
{
  protected BaseFragmentCallBack a;
  private RecyclerView b;
  private RecyclerView c;
  private ProviderAdapter d;
  private a e;
  private TextView f;
  private TextView g;
  private TextView h;
  private SearchView i;
  private int j;
  private int k;
  private int l;
  private boolean m = false;
  private ViewFlipper n;
  private TextView o;
  private TextView p;
  private boolean q;
  private FrameLayout r;
  private List<MVPDConfig> s = new ArrayList();
  
  private SpannableStringBuilder a(int paramInt1, int paramInt2, NoUnderlineClickableSpan paramNoUnderlineClickableSpan)
  {
    String str1 = getString(paramInt2);
    String str2 = getString(paramInt1, new Object[] { str1 });
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str2);
    localSpannableStringBuilder.setSpan(paramNoUnderlineClickableSpan, str2.indexOf(str1), localSpannableStringBuilder.length(), 33);
    return localSpannableStringBuilder;
  }
  
  private View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903178, paramViewGroup, false);
    j = getResources().getInteger(2131492865);
    new StringBuilder("mSpanCount: ").append(j);
    k = getResources().getDimensionPixelOffset(2131362060);
    n = ((ViewFlipper)paramLayoutInflater.findViewById(2131690040));
    d.setMode(l);
    o = ((TextView)paramLayoutInflater.findViewById(2131690038));
    p = ((TextView)paramLayoutInflater.findViewById(2131690039));
    setIsTryAgain(q);
    i = ((SearchView)paramLayoutInflater.findViewById(2131690044));
    b = ((RecyclerView)paramLayoutInflater.findViewById(2131690041));
    b.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(), new RecyclerItemClickListener.OnItemClickListener()
    {
      public final void a(int paramAnonymousInt)
      {
        ProviderSelectionFragment.a(ProviderSelectionFragment.this, paramAnonymousInt);
      }
    }));
    e = new a(j, k);
    b.setLayoutManager(new GridLayoutManager(getActivity(), j, 1, false));
    b.addItemDecoration(e);
    b.setAdapter(d);
    f = ((TextView)paramLayoutInflater.findViewById(2131690042));
    f.setText(a(2131231106, 2131231107, new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        ProviderSelectionFragment.a(ProviderSelectionFragment.this);
      }
    }));
    c = ((RecyclerView)paramLayoutInflater.findViewById(2131690045));
    c.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(), new RecyclerItemClickListener.OnItemClickListener()
    {
      public final void a(int paramAnonymousInt)
      {
        ProviderSelectionFragment.a(ProviderSelectionFragment.this, paramAnonymousInt);
      }
    }));
    c.setLayoutManager(new LinearLayoutManager(getActivity()));
    c.setAdapter(d);
    g = ((TextView)paramLayoutInflater.findViewById(2131690046));
    g.setText(a(2131231209, 2131231210, new NoUnderlineClickableSpan()
    {
      public final void onClick(View paramAnonymousView)
      {
        ProviderSelectionFragment.b(ProviderSelectionFragment.this);
      }
    }));
    h = ((TextView)paramLayoutInflater.findViewById(2131690043));
    paramViewGroup = AuthStatusManager.getStatusEnum();
    if (paramViewGroup == UserStatusEnum.a) {
      h.setText(a(2131231209, 2131231210, new NoUnderlineClickableSpan()
      {
        public final void onClick(View paramAnonymousView)
        {
          ProviderSelectionFragment.b(ProviderSelectionFragment.this);
        }
      }));
    }
    for (;;)
    {
      g.setMovementMethod(LinkMovementMethod.getInstance());
      h.setMovementMethod(LinkMovementMethod.getInstance());
      i.setOnQueryTextFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            paramAnonymousView = new HashMap();
            paramAnonymousView.put("events", "event19");
            paramAnonymousView.put("evar_6", ProviderSelectionFragment.c(ProviderSelectionFragment.this));
            paramAnonymousView.put("evar_10", ProviderSelectionFragment.d(ProviderSelectionFragment.this));
            AnalyticsManager.a(getActivity(), Action.cI, paramAnonymousView);
          }
        }
      });
      i.setOnQueryTextListener(new SearchView.OnQueryTextListener()
      {
        public final boolean onQueryTextChange(String paramAnonymousString)
        {
          ProviderSelectionFragment.e(ProviderSelectionFragment.this).getFilter().filter(paramAnonymousString);
          return true;
        }
        
        public final boolean onQueryTextSubmit(String paramAnonymousString)
        {
          return false;
        }
      });
      ((Button)paramLayoutInflater.findViewById(2131690098)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ProviderSelectionFragment.f(ProviderSelectionFragment.this);
        }
      });
      f();
      return paramLayoutInflater;
      if ((paramViewGroup == UserStatusEnum.b) || (paramViewGroup == UserStatusEnum.d) || (paramViewGroup == UserStatusEnum.e)) {
        h.setText(2131231211);
      }
    }
  }
  
  public static ProviderSelectionFragment a(ArrayList<MVPDConfig> paramArrayList, boolean paramBoolean)
  {
    ProviderSelectionFragment localProviderSelectionFragment = new ProviderSelectionFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("arg_mvpd_data", paramArrayList);
    localBundle.putBoolean("art_try_again", paramBoolean);
    localProviderSelectionFragment.setArguments(localBundle);
    return localProviderSelectionFragment;
  }
  
  private void b()
  {
    HashMap localHashMap = new HashMap();
    Object localObject;
    FragmentActivity localFragmentActivity;
    if (q)
    {
      localObject = "live tv|provider|signin failed";
      localHashMap.put("pageTitle", localObject);
      localHashMap.put("evar_6", c());
      localHashMap.put("evar_10", d());
      localHashMap.put("pageView", Boolean.TRUE.toString());
      localFragmentActivity = getActivity();
      if (!q) {
        break label110;
      }
      localObject = Action.cY;
    }
    for (;;)
    {
      AnalyticsManager.a(localFragmentActivity, (Action)localObject, localHashMap);
      return;
      if (g())
      {
        localObject = "live tv|select tv provider";
        break;
      }
      localObject = "live tv|more providers";
      break;
      label110:
      if (g()) {
        localObject = Action.cC;
      } else {
        localObject = Action.cF;
      }
    }
  }
  
  private String c()
  {
    if (q) {
      return "liveTV|provider|signin_fail";
    }
    if (g()) {
      return "liveTV|provider|select grid";
    }
    return "liveTV|provider|search list";
  }
  
  private String d()
  {
    if (q) {
      return "provider_signinfail";
    }
    if (g()) {
      return "provider_select";
    }
    return "provider_search";
  }
  
  private void f()
  {
    int i3 = 1;
    if ((s != null) && (!s.isEmpty()))
    {
      if (g())
      {
        i1 = 1;
        new StringBuilder("bindData: isImageMode = ").append(g()).append(", displayedChild = ").append(n.getDisplayedChild()).append(", next displayed child = ").append(i1);
        n.setDisplayedChild(i1);
        if (!g()) {
          break label182;
        }
      }
      int i2;
      label182:
      for (int i1 = Math.min(8, s.size());; i1 = s.size())
      {
        d.setMode(l);
        d.a();
        i2 = 0;
        while (i2 < i1)
        {
          MVPDConfig localMVPDConfig = (MVPDConfig)s.get(i2);
          if ((l == 0) || (localMVPDConfig.getTier() == 1L)) {
            d.a(localMVPDConfig);
          }
          i2 += 1;
        }
        i1 = 2;
        break;
      }
      if ((s.size() < 4) && (1 == l)) {
        d.a(new MVPDConfig(new g(null, "special_case", "", "", false, false)));
      }
      if (1 == l)
      {
        i1 = d.getItemCount() % j;
        if (i1 > 0) {}
        for (i1 = j - i1;; i1 = 0)
        {
          i2 = 0;
          while (i2 < i1)
          {
            d.a(null);
            i2 += 1;
          }
        }
      }
      if (s.size() > 8) {}
      for (i1 = i3; (i1 != 0) || (m); i1 = 0)
      {
        f.setVisibility(0);
        h.setVisibility(8);
        return;
      }
      f.setVisibility(8);
      h.setVisibility(0);
      return;
    }
    n.setDisplayedChild(3);
  }
  
  private boolean g()
  {
    return l == 1;
  }
  
  protected final void a() {}
  
  protected final void a(UpsellEndpointResponse paramUpsellEndpointResponse)
  {
    paramUpsellEndpointResponse = paramUpsellEndpointResponse.getUpsellInfoforActionTarget("android_content_6");
    if (paramUpsellEndpointResponse != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString(LiveTvWebFragment.a, paramUpsellEndpointResponse.getCallToActionURL());
      localBundle.putInt("ARG_TRACKING_TYPE", 0);
      a.a(1105, localBundle);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = (LayoutInflater)getActivity().getSystemService("layout_inflater");
    r.removeAllViewsInLayout();
    r.addView(a(paramConfiguration, (ViewGroup)getView()));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      try
      {
        a = ((BaseFragmentCallBack)getParentFragment());
        if (getArguments() != null)
        {
          s = getArguments().getParcelableArrayList("arg_mvpd_data");
          Iterator localIterator = s.iterator();
          if (localIterator.hasNext())
          {
            MVPDConfig localMVPDConfig = (MVPDConfig)localIterator.next();
            if ((m) || (localMVPDConfig.getTier() != 2L)) {
              continue;
            }
            m = true;
          }
          q = getArguments().getBoolean("art_try_again");
        }
        if (paramBundle != null)
        {
          l = paramBundle.getInt("KEY_LAYOUT_MODE");
          d = new ProviderAdapter();
          b();
          return;
        }
      }
      catch (Exception paramBundle)
      {
        throw new ClassCastException("must implement BaseFragmentCallBack");
      }
      l = 1;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r = new FrameLayout(getActivity());
    r.addView(a(paramLayoutInflater, paramViewGroup));
    return r;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("KEY_LAYOUT_MODE", d.getMode());
  }
  
  public void setIsTryAgain(boolean paramBoolean)
  {
    q = paramBoolean;
    if ((o != null) && (p != null))
    {
      if (q)
      {
        o.setText(2131231349);
        p.setVisibility(0);
      }
    }
    else {
      return;
    }
    o.setText(2131231264);
    p.setVisibility(8);
  }
  
  public static class ProviderAdapter
    extends ArrayListAdapter<MVPDConfig, ViewHolder>
  {
    private int a = 1;
    
    protected final void a(ArrayList<MVPDConfig> paramArrayList, final String paramString)
    {
      Collections.sort(paramArrayList, new Comparator()
      {
        private Pattern c;
        
        private static int a(Matcher paramAnonymousMatcher)
        {
          int i = Integer.MAX_VALUE;
          if (paramAnonymousMatcher.find()) {
            i = paramAnonymousMatcher.start();
          }
          return i;
        }
      });
    }
    
    public int getItemViewType(int paramInt)
    {
      return a;
    }
    
    public int getMode()
    {
      return a;
    }
    
    public void setMode(int paramInt)
    {
      a = paramInt;
      if (getItemCount() > 0) {
        notifyItemRangeChanged(0, getItemCount());
      }
    }
    
    public static class ImageModeViewHolder
      extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
    {
      ImageView a;
      TextView b;
      
      public ImageModeViewHolder(View paramView)
      {
        super();
        a = ((ImageView)paramView.findViewById(2131690165));
        b = ((TextView)paramView.findViewById(2131690166));
      }
      
      public final void a(MVPDConfig paramMVPDConfig)
      {
        if (paramMVPDConfig != null)
        {
          String str = paramMVPDConfig.getFilepathAdobeLogoOverride();
          if (!TextUtils.isEmpty(str))
          {
            ImageHelper.a(ImageResizerUrl.a(str, a.getWidth()), a, -1, -1, true);
            a.setVisibility(0);
            b.setVisibility(8);
            return;
          }
          if (!TextUtils.isEmpty(paramMVPDConfig.getAdobeLogoUrl()))
          {
            ImageHelper.a(paramMVPDConfig.getAdobeLogoUrl(), a, -1, -1, true);
            a.setVisibility(0);
            b.setVisibility(8);
            return;
          }
          if ((!TextUtils.isEmpty(paramMVPDConfig.getMvpd())) && (paramMVPDConfig.getMvpd().equals("special_case")))
          {
            a.setVisibility(8);
            b.setVisibility(0);
            b.setClickable(false);
            itemView.setClickable(false);
            return;
          }
          a.setVisibility(8);
          b.setVisibility(0);
          b.setText(paramMVPDConfig.getMvpd());
          return;
        }
        a.setVisibility(8);
        b.setVisibility(8);
      }
    }
    
    public static class TextModeViewHolder
      extends ProviderSelectionFragment.ProviderAdapter.ViewHolder
    {
      TextView a;
      
      public TextModeViewHolder(View paramView)
      {
        super();
        a = ((TextView)paramView);
      }
      
      public final void a(MVPDConfig paramMVPDConfig)
      {
        if (paramMVPDConfig != null)
        {
          a.setText(paramMVPDConfig.getMvpd());
          a.setClickable(true);
          return;
        }
        a.setText("");
        a.setClickable(false);
      }
    }
    
    public static abstract class ViewHolder
      extends RecyclerView.ViewHolder
    {
      public ViewHolder(View paramView)
      {
        super();
      }
      
      public abstract void a(MVPDConfig paramMVPDConfig);
    }
  }
  
  private static final class a
    extends RecyclerView.ItemDecoration
  {
    private int a;
    private int b;
    private boolean c;
    
    public a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
      c = false;
    }
    
    public final void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      int i = paramRecyclerView.getChildAdapterPosition(paramView);
      int j = i % a;
      if (c)
      {
        left = (b - b * j / a);
        right = ((j + 1) * b / a);
        if (i < a) {
          top = b;
        }
        bottom = b;
      }
      do
      {
        return;
        left = (b * j / a);
        right = (b - (j + 1) * b / a);
      } while (i < a);
      top = b;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.ProviderSelectionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */