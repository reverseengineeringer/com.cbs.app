.class final Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;
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
    .line 707
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 710
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 712
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    new-instance v1, Lcom/cbs/app/service/social/EmailServiceImpl;

    invoke-direct {v1}, Lcom/cbs/app/service/social/EmailServiceImpl;-><init>()V

    .line 715
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cbs/app/service/social/EmailService;->setContext(Landroid/content/Context;)V

    .line 716
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cbs/app/service/social/EmailService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 720
    const-string v1, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/analytics/Action;->j:Lcom/cbs/app/analytics/Action;

    invoke-virtual {v4}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    sget-object v1, Lcom/cbs/app/analytics/Action;->aR:Lcom/cbs/app/analytics/Action;

    .line 723
    const-string v3, "EpisodeTitle"

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 725
    const-string v4, "evar_64"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v4, "prop_64"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :goto_0
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a()Ljava/lang/String;

    .line 735
    const-string v3, "ShowTitle"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v3, "showId"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v3, "VideoID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v3, "ContentID"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    const-string v4, "evar_63"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v4, "prop_63"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    const-string v3, "evar_31"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v3, "prop_31"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v0, "events"

    const-string v3, "event19"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;->b:Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->m(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 748
    :cond_0
    return-void

    .line 728
    :cond_1
    sget-object v1, Lcom/cbs/app/analytics/Action;->aO:Lcom/cbs/app/analytics/Action;

    .line 729
    const-string v3, "ClipTitle"

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    const-string v4, "evar_62"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v4, "prop_62"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
