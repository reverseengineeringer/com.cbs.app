.class final Lcom/cbs/app/view/SVODPopupHelper$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$16;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 942
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 943
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 945
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 947
    iget-object v1, p0, Lcom/cbs/app/view/SVODPopupHelper$16;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->n()Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 948
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->o()Lcom/cbs/app/view/model/VideoData;

    .line 949
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->p()Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 951
    :cond_0
    return-void
.end method
