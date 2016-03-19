.class public Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 64
    const v0, 0x7f030066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0f0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    new-instance v2, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object v1
.end method

.method public static b()Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    new-instance v1, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "android_content_6"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 60
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b:Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->a:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/ConnectWithTvProviderFragment;->b:Landroid/widget/FrameLayout;

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
