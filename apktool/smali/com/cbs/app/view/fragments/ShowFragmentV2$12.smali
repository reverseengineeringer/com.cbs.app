.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/menu/DrawerStatusListener;


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
    .line 190
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "show_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/ShowItem;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/fragments/ShowFragmentV2;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$12;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 206
    :cond_0
    return-void
.end method
