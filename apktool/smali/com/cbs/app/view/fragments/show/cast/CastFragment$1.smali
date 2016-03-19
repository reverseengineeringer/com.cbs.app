.class final Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->f()V

    .line 87
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h:Z

    .line 88
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "after"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "castListener success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;

    .line 70
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->getCastResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->getCastList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastFragment;Ljava/util/List;)Ljava/util/List;

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->getHostResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->getCastList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->b(Lcom/cbs/app/view/fragments/show/cast/CastFragment;Ljava/util/List;)Ljava/util/List;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->h:Z

    .line 80
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CastFragment$1;->a:Lcom/cbs/app/view/fragments/show/cast/CastFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/cast/CastFragment;->a(Lcom/cbs/app/view/fragments/show/cast/CastFragment;)V

    .line 81
    return-void
.end method
