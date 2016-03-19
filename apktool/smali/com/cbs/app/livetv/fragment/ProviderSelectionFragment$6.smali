.class final Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 323
    if-eqz p2, :cond_0

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "evar_6"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->c(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "evar_10"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->d(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$6;->a:Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cI:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 330
    :cond_0
    return-void
.end method
