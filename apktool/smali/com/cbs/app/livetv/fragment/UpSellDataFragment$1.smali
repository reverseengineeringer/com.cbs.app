.class final Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/UpSellDataFragment;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a(Lcom/cbs/app/livetv/fragment/UpSellDataFragment;)Z

    .line 38
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a()V

    .line 39
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a(Lcom/cbs/app/livetv/fragment/UpSellDataFragment;)Z

    .line 29
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/UpSellDataFragment$1;->a:Lcom/cbs/app/livetv/fragment/UpSellDataFragment;

    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V

    goto :goto_0
.end method
