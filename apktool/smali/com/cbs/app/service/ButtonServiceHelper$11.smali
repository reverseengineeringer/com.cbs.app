.class final Lcom/cbs/app/service/ButtonServiceHelper$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/ButtonServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 291
    invoke-static {v0}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Z)Z

    .line 292
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 297
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->d:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;-><init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;)V

    .line 303
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a()V

    goto :goto_0
.end method
