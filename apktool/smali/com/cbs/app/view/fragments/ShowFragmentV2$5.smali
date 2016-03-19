.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


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
    .line 412
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 418
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 419
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 420
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 422
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setIsPlayerActive(Z)V

    .line 424
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->q(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$5;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->getShowData()V

    .line 427
    return-void
.end method
