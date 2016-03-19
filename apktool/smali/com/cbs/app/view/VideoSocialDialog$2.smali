.class final Lcom/cbs/app/view/VideoSocialDialog$2;
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

.field final synthetic b:Lcom/cbs/app/view/model/VideoData;

.field final synthetic c:Lcom/cbs/app/view/model/Show;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/Show;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    iput-object p3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->c:Lcom/cbs/app/view/model/Show;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 74
    new-instance v0, Lcom/cbs/app/service/social/FacebookServiceImplV2;

    iget-object v1, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/service/social/FacebookServiceImplV2;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-interface {v0, v1}, Lcom/cbs/app/service/social/FacebookService;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/cbs/app/analytics/Action;->aQ:Lcom/cbs/app/analytics/Action;

    .line 83
    const-string v2, "EpisodeTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v3, "evar_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "prop_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    const-string v2, "appState"

    const-string v3, "cbscom:Comments Page"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->c:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->c:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "EpisodeTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "VideoID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    const-string v2, "ContentID"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->c:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->c:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "evar_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "prop_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    const-string v2, "events"

    const-string v3, "event19, event10"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 117
    return-void

    .line 88
    :cond_2
    sget-object v0, Lcom/cbs/app/analytics/Action;->aN:Lcom/cbs/app/analytics/Action;

    .line 89
    const-string v2, "ClipTitle"

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/VideoSocialDialog$2;->b:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "evar_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v3, "prop_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
