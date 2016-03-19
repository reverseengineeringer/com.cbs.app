.class final Lcom/cbs/app/view/VideoSocialDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/VideoSocialDialog;->a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/ShowConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cbs/app/view/model/Show;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cbs/app/view/model/VideoData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    iput-object p3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 264
    iget-object v0, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->a:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 265
    const/4 v0, 0x0

    .line 266
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 267
    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 268
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cbs/app/view/NavigationActivity;->a(J)Ljava/util/List;

    move-result-object v0

    .line 271
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 272
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/cbs/app/view/model/Episode;

    .line 273
    if-eqz v4, :cond_2

    .line 274
    new-instance v0, Lcom/cbs/app/service/social/CalendarServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/social/CalendarServiceImpl;-><init>()V

    .line 275
    invoke-interface {v0, v1}, Lcom/cbs/app/service/social/CalendarService;->setContext(Landroid/content/Context;)V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v2

    mul-long/2addr v2, v8

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Episode;->getAirDate_sec()J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Episode;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/service/social/CalendarService;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->ay:Lcom/cbs/app/analytics/Action;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v3, "evar_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v3, "prop_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_1
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v2, "EpisodeTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "VideoID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    const-string v2, "ContentID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "appState"

    const-string v3, "cbscom:Comments Page"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 312
    :cond_2
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-static {}, Lcom/cbs/app/view/VideoSocialDialog;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nfe:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$5;->d:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "evar_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v3, "prop_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
