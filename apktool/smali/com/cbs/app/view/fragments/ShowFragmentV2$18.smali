.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ShowFragmentV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 261
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 264
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->b()V

    .line 256
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 247
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;

    .line 248
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;)V

    .line 249
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$18;->b()V

    .line 250
    return-void
.end method
