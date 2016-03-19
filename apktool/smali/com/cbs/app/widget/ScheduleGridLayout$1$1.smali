.class final Lcom/cbs/app/widget/ScheduleGridLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/ScheduleGridLayout$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/widget/ScheduleGridLayout$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/ScheduleGridLayout$1;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iput-object p2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 273
    invoke-static {}, Lcom/cbs/app/widget/ScheduleGridLayout;->a()Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v1, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v1, v1, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v1}, Lcom/cbs/app/widget/ScheduleGridLayout;->b(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Show;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->a:Landroid/app/Dialog;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/widget/ScheduleGridLayout$1;->a(Lcom/cbs/app/widget/ScheduleGridLayout$1;Lcom/cbs/app/view/model/Show;Landroid/app/Dialog;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v0, v0, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v0}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    sget-object v0, Lcom/cbs/app/analytics/Action;->be:Lcom/cbs/app/analytics/Action;

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 282
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v3, v3, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v3, v3, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "optionSelected"

    const-string v3, "Show home"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v3, v3, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v3, v3, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v3}, Lcom/cbs/app/widget/ScheduleGridLayout;->a(Lcom/cbs/app/widget/ScheduleGridLayout;)Lcom/cbs/app/view/model/Episode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lcom/cbs/app/widget/ScheduleGridLayout$1$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout$1;

    iget-object v2, v2, Lcom/cbs/app/widget/ScheduleGridLayout$1;->b:Lcom/cbs/app/widget/ScheduleGridLayout;

    invoke-static {v2}, Lcom/cbs/app/widget/ScheduleGridLayout;->c(Lcom/cbs/app/widget/ScheduleGridLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 293
    :cond_1
    return-void
.end method
