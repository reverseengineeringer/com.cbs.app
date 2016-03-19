.class public abstract Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/UpSellDataFragment;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a:Z

    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 20
    .line 1045
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a:Z

    .line 20
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a:Z

    .line 24
    new-instance v0, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v0}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "MVPD_LIVE_TV_LANDING_ANDROID"

    new-instance v3, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/UpSellDataFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 42
    :cond_0
    return-void
.end method
