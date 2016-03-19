.class public Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment$2;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 99
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    const v0, 0x7f03007e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    const v0, 0x7f0f0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->d:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0f0205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->e:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0f0206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->f:Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getStatusEnum()Lcom/cbs/app/livetv/model/UserStatusEnum;

    move-result-object v0

    .line 92
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment$2;->a:[I

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/UserStatusEnum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-direct {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a(Z)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->d:Landroid/widget/Button;

    new-instance v2, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v1

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a(Z)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;

    invoke-direct {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;-><init>()V

    .line 48
    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;)V
    .locals 3

    .prologue
    .line 34
    .line 1118
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x44f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 1120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1121
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell|unavailable modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string v1, "evar_10"

    const-string v2, "livetv_unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cy:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 34
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 111
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->d:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    goto :goto_1

    :cond_2
    move v2, v1

    .line 113
    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 83
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v1, "events"

    const-string v2, "event86"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "pageTitle"

    const-string v2, "live tv|live-tv not available in area|modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "evar_6"

    const-string v2, "liveTV|upsell|unavailable modal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "evar_10"

    const-string v2, "livetv_unavailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cx:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 68
    return-void

    .line 58
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
    .line 73
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->c:Landroid/widget/FrameLayout;

    .line 74
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 130
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 131
    return-void
.end method
