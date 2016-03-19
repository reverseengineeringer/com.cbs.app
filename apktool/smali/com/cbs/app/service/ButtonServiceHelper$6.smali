.class final Lcom/cbs/app/service/ButtonServiceHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Episode;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/Episode;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/model/Episode;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    iput-object p2, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 704
    iget-object v0, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    if-eqz v0, :cond_1

    .line 705
    new-instance v0, Lcom/cbs/app/service/social/CalendarServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/social/CalendarServiceImpl;-><init>()V

    .line 706
    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/social/CalendarService;->setContext(Landroid/content/Context;)V

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 709
    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 710
    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    .line 711
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 714
    int-to-long v6, v1

    const-wide/32 v8, -0x1b77400

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 716
    const-wide/32 v6, 0x36ee80

    add-long/2addr v2, v6

    .line 722
    :cond_0
    :goto_0
    add-long/2addr v4, v2

    .line 723
    iget-object v1, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v6}, Lcom/cbs/app/view/model/Episode;->getUrllink()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/cbs/app/service/social/CalendarService;->a(Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_1
    sget-object v0, Lcom/cbs/app/analytics/Action;->ay:Lcom/cbs/app/analytics/Action;

    .line 729
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 730
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
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

    .line 732
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShow_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->a:Lcom/cbs/app/view/model/Episode;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Episode;->getShowTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 735
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v2, p0, Lcom/cbs/app/service/ButtonServiceHelper$6;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 739
    :cond_1
    return-void

    .line 717
    :cond_2
    int-to-long v6, v1

    const-wide/32 v8, -0x1ee6280

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 719
    const-wide/32 v6, 0xa4cb80

    add-long/2addr v2, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
