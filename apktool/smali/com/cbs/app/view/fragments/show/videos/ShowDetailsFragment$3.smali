.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 784
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 786
    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 788
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Lcom/cbs/app/view/model/ShowConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)Ljava/lang/String;

    move-result-object v1

    .line 789
    new-instance v2, Lcom/cbs/app/service/social/EmailServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/social/EmailServiceImpl;-><init>()V

    .line 790
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v3}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cbs/app/service/social/EmailService;->setContext(Landroid/content/Context;)V

    .line 791
    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/cbs/app/service/social/EmailService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    sget-object v1, Lcom/cbs/app/analytics/Action;->aE:Lcom/cbs/app/analytics/Action;

    .line 794
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 795
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 796
    const-string v3, "ShowTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v3, "showId"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v0, "sendEvent10"

    const-string v3, "anything"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v0, "events"

    const-string v3, "event19, event10"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 805
    :cond_0
    return-void
.end method
