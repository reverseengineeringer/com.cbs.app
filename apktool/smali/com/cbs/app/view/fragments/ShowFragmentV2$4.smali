.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$4;
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
    .line 395
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$4;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$4;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a()V

    .line 408
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 400
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowEndpointResponse;

    .line 401
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$4;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->a(Lcom/cbs/app/view/model/rest/ShowEndpointResponse;)V

    .line 402
    return-void
.end method
