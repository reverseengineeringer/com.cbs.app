.class final Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 779
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick buyEpisodeButton:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 782
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->n(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 788
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 789
    const-string v0, "appState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v3}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    sget-object v0, Lcom/cbs/app/analytics/Action;->aS:Lcom/cbs/app/analytics/Action;

    .line 792
    const-string v2, "EpisodeTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 794
    const-string v3, "evar_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v3, "prop_64"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :goto_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    .line 804
    const-string v2, "ShowTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v2, "showId"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v2, "VideoID"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v2, "ContentID"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    const-string v3, "evar_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v3, "prop_63"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    const-string v3, "evar_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v3, "prop_31"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v2, "events"

    const-string v3, "event19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->o(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 816
    return-void

    .line 797
    :cond_1
    sget-object v0, Lcom/cbs/app/analytics/Action;->aS:Lcom/cbs/app/analytics/Action;

    .line 798
    const-string v2, "ClipTitle"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cbscom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 800
    const-string v3, "evar_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v3, "prop_62"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
