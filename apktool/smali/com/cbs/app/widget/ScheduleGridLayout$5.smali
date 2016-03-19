.class final Lcom/cbs/app/widget/ScheduleGridLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/ScheduleGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/widget/ScheduleGridLayout;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    const-string v1, "Close"

    iput-object v1, v0, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    sget-object v0, Lcom/cbs/app/analytics/Action;->be:Lcom/cbs/app/analytics/Action;

    .line 902
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 903
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v2, "optionSelected"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    iget-object v3, v3, Lcom/cbs/app/widget/ScheduleGridLayout;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$5;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 915
    :cond_1
    return-void
.end method
