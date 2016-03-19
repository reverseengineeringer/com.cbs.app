.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 123
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 102
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 104
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 115
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$7;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(Lcom/cbs/app/view/model/UpsellInfo;)V

    .line 118
    :cond_0
    return-void
.end method
