.class public Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/cbs/app/view/model/MVPDConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0f01f3

    const/16 v8, 0x21

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 103
    const v0, 0x7f03007b

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0117

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v6, v6, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a011a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 109
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 111
    const v0, 0x7f0f01f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    const v0, 0x7f0f01f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 113
    const v0, 0x7f0f01f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    const v0, 0x7f0f01f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 115
    const v0, 0x7f0f01f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    const v0, 0x7f0f01f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 117
    const v0, 0x7f0f01f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 118
    const v0, 0x7f0f01f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 120
    const v0, 0x7f0f01f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0f01f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080076

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 131
    const v4, 0x7f08021b

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 132
    new-instance v4, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$2;

    invoke-direct {v4, p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    const v0, 0x7f0f01fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    iget-boolean v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :goto_1
    return-object v1

    .line 141
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0801f4

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v3, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$3;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static a(ZLcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "ARG_FORCE_USER_REG_FLOW"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V
    .locals 3

    .prologue
    .line 1188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1189
    const-string v2, "ARG_SHOW_REGISTER_LATER"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44f

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1193
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v0, "evar_6"

    const-string v2, "liveTV|provider|verified"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v2, "evar_10"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "provider_verified_cbsreg"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dh:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 41
    return-void

    .line 1189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1195
    :cond_1
    const-string v0, "provider_verified"

    goto :goto_1

    .line 1196
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V
    .locals 3

    .prologue
    .line 2175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2176
    const-string v2, "ARG_SHOW_REGISTER_LATER"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2177
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x44e

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 2179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2180
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    const-string v0, "evar_6"

    const-string v2, "liveTV|provider|verified"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    const-string v2, "evar_10"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "provider_verified_cbsreg"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->di:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 41
    return-void

    .line 2176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2182
    :cond_1
    const-string v0, "provider_verified"

    goto :goto_1

    .line 2183
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;)V
    .locals 3

    .prologue
    .line 41
    .line 3164
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x454

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 3166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3167
    const-string v0, "events"

    const-string v2, "event19"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    const-string v0, "evar_6"

    const-string v2, "liveTV|provider|verified"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    const-string v2, "evar_10"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "provider_verified_cbsreg"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dj:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 41
    return-void

    .line 3169
    :cond_0
    const-string v0, "provider_verified"

    goto :goto_0

    .line 3170
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 98
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 99
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FORCE_USER_REG_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    .line 68
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate: ForceUserRegFlow = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v2, "pageTitle"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "live tv|required account verfied"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "evar_6"

    const-string v2, "liveTV|provider|verified"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "evar_10"

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "provider_verified_cbsreg"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "evar_32"

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getMvpd()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/cbs/app/analytics/Action;->dg:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 84
    return-void

    .line 74
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const-string v0, "live tv|optional account verified"

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "provider_verified"

    goto :goto_1

    .line 81
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->c:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvCompleteVerificationFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 204
    return-void
.end method
