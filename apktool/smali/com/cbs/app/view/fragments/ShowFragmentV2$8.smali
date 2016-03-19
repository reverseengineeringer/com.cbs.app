.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/Show;

.field final synthetic b:Lcom/cbs/app/view/model/ShowConfig;

.field final synthetic c:Lcom/cbs/app/view/fragments/ShowFragmentV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->c:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->a:Lcom/cbs/app/view/model/Show;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->b:Lcom/cbs/app/view/model/ShowConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->c:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->B(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->a:Lcom/cbs/app/view/model/Show;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->b:Lcom/cbs/app/view/model/ShowConfig;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/ShowSocialDialog;->a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V

    .line 751
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->c:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->C(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 753
    const-string v1, "Show Title"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->c:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->D(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$8;->c:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->E(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->bf:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 756
    :cond_0
    return-void
.end method
