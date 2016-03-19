.class final Lcom/cbs/app/service/ButtonServiceHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/ButtonServiceHelper;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 598
    invoke-static {v2}, Lcom/cbs/app/service/ButtonServiceHelper;->c(Z)Z

    .line 599
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->f()Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->b()V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->f()Lcom/cbs/app/view/model/Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movies & Specials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->a()V

    goto :goto_0

    .line 612
    :cond_2
    new-instance v0, Lcom/cbs/app/service/MyCBSService;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSService;-><init>()V

    .line 613
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->e:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/service/MyCBSService;->a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    goto :goto_0

    .line 616
    :cond_3
    new-instance v0, Lcom/cbs/app/db/MyShowDataSource;

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/db/MyShowDataSource;-><init>(Landroid/content/Context;)V

    .line 617
    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->a()V

    .line 619
    invoke-virtual {v0}, Lcom/cbs/app/db/MyShowDataSource;->b()V

    .line 620
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->n()Z

    .line 621
    new-instance v0, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/service/ButtonServiceHelper;->d:Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;-><init>(Landroid/content/Context;Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter$ExporterDoneListener;)V

    .line 622
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/mycbs/MyCBSExporter;->a()V

    goto :goto_0

    .line 625
    :cond_4
    invoke-static {v1}, Lcom/cbs/app/service/ButtonServiceHelper;->c(Z)Z

    .line 626
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->f:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 632
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 637
    :goto_1
    if-eqz v0, :cond_0

    .line 640
    invoke-static {v2}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 641
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 642
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 644
    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;)V

    .line 645
    invoke-static {v1}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Z)Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
