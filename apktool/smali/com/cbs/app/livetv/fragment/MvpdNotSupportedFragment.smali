.class public Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private d:Lcom/cbs/app/view/model/MVPDConfig;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    new-instance v1, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;-><init>()V

    .line 70
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f030085

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 114
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 117
    const v0, 0x7f0f01f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080076

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 121
    const v4, 0x7f08021b

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    new-instance v4, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$1;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_0
    const v0, 0x7f0f022a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0f0272

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->e:Landroid/widget/Button;

    .line 135
    const v1, 0x7f0f0213

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->f:Landroid/widget/Button;

    .line 136
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const v1, 0x7f080250

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->e()V

    .line 141
    return-void

    .line 131
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;)V
    .locals 3

    .prologue
    .line 51
    .line 1184
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x44e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1188
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1189
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v1, "evar_10"

    const-string v2, "provider_notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->db:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    .line 1203
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1204
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 51
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    .line 2168
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 2169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2170
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v1, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2172
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 2175
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2176
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    const-string v1, "evar_10"

    const-string v2, "provider_notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->dc:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    .line 3144
    if-eqz p1, :cond_3

    .line 3145
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3146
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3159
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3160
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3162
    const-string v1, "evar_10"

    const-string v2, "provider_notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->db:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void

    .line 3147
    :cond_2
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3148
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_1

    .line 3149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3150
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3151
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44f

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 3156
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "product id not found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 280
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cbs/app/view/model/UpsellInfo;

    .line 232
    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getActionTarget()Ljava/lang/String;

    move-result-object v5

    .line 233
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 236
    if-eqz v5, :cond_0

    .line 237
    const v0, 0x7f0f022c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;

    invoke-direct {v6, p0, v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v0, 0x7f0f0229

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const v0, 0x7f0f022b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :sswitch_0
    const-string v6, "android_content_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v6, "android_content_6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v6, "android_content_7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 248
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->e:Landroid/widget/Button;

    new-instance v5, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 258
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->f:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->f:Landroid/widget/Button;

    new-instance v5, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$5;

    invoke-direct {v5, p0, v0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 275
    return-void

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x7683381b -> :sswitch_0
        0x76833820 -> :sswitch_1
        0x76833821 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 80
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string v1, "events"

    const-string v2, "event89"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "pageTitle"

    const-string v2, "live-tv|provider|not supported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "evar_10"

    const-string v2, "provider_notsupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->da:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 95
    return-void

    .line 84
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 102
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->b:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onDestroy()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdNotSupportedFragment;->c:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 200
    return-void
.end method
