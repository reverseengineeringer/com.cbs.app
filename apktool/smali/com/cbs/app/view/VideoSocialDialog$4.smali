.class final Lcom/cbs/app/view/VideoSocialDialog$4;
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

.field final synthetic c:Lcom/cbs/app/view/model/ShowConfig;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/cbs/app/view/model/VideoData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;Ljava/lang/String;Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    iput-object p3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->c:Lcom/cbs/app/view/model/ShowConfig;

    iput-object p4, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 217
    new-instance v0, Lcom/cbs/app/service/social/EmailServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/social/EmailServiceImpl;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/social/EmailService;->setContext(Landroid/content/Context;)V

    .line 220
    iget-object v1, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->c:Lcom/cbs/app/view/model/ShowConfig;

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/service/social/EmailService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    sget-object v0, Lcom/cbs/app/analytics/Action;->aR:Lcom/cbs/app/analytics/Action;

    .line 228
    const-string v2, "EpisodeTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v3, "evar_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v3, "prop_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_0
    const-string v2, "appState"

    const-string v3, "cbscom:Comments Page"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "VideoID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    const-string v2, "ContentID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->b:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v3, "evar_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v3, "prop_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    const-string v2, "events"

    const-string v3, "event19, event10"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 256
    return-void

    .line 233
    :cond_2
    sget-object v0, Lcom/cbs/app/analytics/Action;->aO:Lcom/cbs/app/analytics/Action;

    .line 234
    const-string v2, "ClipTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$4;->e:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    const-string v3, "evar_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v3, "prop_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
