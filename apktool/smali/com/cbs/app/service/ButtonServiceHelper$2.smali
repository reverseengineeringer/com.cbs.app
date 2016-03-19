.class final Lcom/cbs/app/service/ButtonServiceHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/ButtonServiceHelper;->c(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 424
    new-instance v0, Lcom/cbs/app/service/social/Twitter;

    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/service/social/Twitter;-><init>(Landroid/content/Context;)V

    .line 425
    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/Twitter;->b(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/cbs/app/analytics/Action;->aC:Lcom/cbs/app/analytics/Action;

    .line 428
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 429
    const-string v2, "events"

    const-string v3, "event19, event10"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v2, "optionSelected"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Share via Twitter"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/service/ButtonServiceHelper;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v2, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    iget-wide v2, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 439
    const-string v2, "showId"

    iget-wide v4, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/service/ButtonServiceHelper$2;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 442
    return-void
.end method
