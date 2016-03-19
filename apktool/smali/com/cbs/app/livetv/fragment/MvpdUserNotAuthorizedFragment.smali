.class public Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/view/model/MVPDConfig;

.field private c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f030086

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 130
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1056
    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 132
    const v0, 0x7f0f01f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080076

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 136
    const v4, 0x7f08021b

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 137
    new-instance v4, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$1;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 144
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    const v0, 0x7f0f022c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->g:Landroid/view/View;

    .line 150
    const v0, 0x7f0f0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->e:Landroid/widget/Button;

    .line 151
    const v0, 0x7f0f0213

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->f:Landroid/widget/Button;

    .line 152
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f022b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->h:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f022d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->i:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f022a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const v1, 0x7f080250

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->e()V

    .line 160
    return-void

    .line 146
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;)V
    .locals 3

    .prologue
    .line 51
    .line 1203
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x44e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1207
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1208
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v1, "evar_10"

    const-string v2, "provider_notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->de:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    .line 1222
    new-instance v0, Lcom/cbs/app/service/ShowServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/ShowServiceImpl;-><init>()V

    .line 1223
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/cbs/app/service/ShowService;->g(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 51
    return-void
.end method

.method public static b()Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51
    .line 2187
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_0

    .line 2188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2189
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string v1, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2191
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 2194
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2195
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    const-string v1, "evar_10"

    const-string v2, "provider_notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->df:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    .line 3163
    if-eqz p1, :cond_3

    .line 3164
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3165
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3178
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3179
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    const-string v1, "evar_10"

    const-string v2, "provider_notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->de:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 51
    return-void

    .line 3166
    :cond_2
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3167
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-eqz v0, :cond_1

    .line 3168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3169
    const-string v1, "ARG_FROM_UPSELL_TRIAL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3170
    const-string v1, "ARG_SKU"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44f

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 3175
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 296
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 297
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 250
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getActionTarget()Ljava/lang/String;

    move-result-object v5

    .line 251
    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->g:Landroid/view/View;

    new-instance v5, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$3;

    invoke-direct {v5, p0, v0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :sswitch_0
    const-string v6, "android_content_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v6, "android_content_6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v6, "android_content_7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->e:Landroid/widget/Button;

    new-instance v5, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$4;-><init>(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Lcom/cbs/app/view/model/UpsellInfo;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->f:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->f:Landroid/widget/Button;

    new-instance v5, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$5;

    invoke-direct {v5, p0, v1}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment$5;-><init>(Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 292
    return-void

    .line 251
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
    .line 122
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->b:Lcom/cbs/app/view/model/MVPDConfig;

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 90
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v1, "events"

    const-string v2, "event89"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "pageTitle"

    const-string v2, "live-tv|provider|cbs not authorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "evar_10"

    const-string v2, "provider_notauthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->da:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 105
    return-void

    .line 94
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
    .line 110
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 111
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->c:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onDestroy()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->d:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 219
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/cbs/app/livetv/fragment/MvpdUserNotAuthorizedFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 117
    return-void
.end method
