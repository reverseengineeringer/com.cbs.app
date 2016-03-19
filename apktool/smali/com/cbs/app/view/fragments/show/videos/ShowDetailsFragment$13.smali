.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;
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
    .line 650
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 653
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    .line 655
    if-eqz v0, :cond_0

    .line 656
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 657
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a()V

    .line 659
    sget-object v1, Lcom/cbs/app/analytics/Action;->az:Lcom/cbs/app/analytics/Action;

    .line 660
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 661
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 662
    const-string v3, "events"

    const-string v4, "event19"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v3, "ShowTitle"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v3, "showId"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
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

    .line 666
    const-string v3, "evar_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string v3, "prop_63"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 670
    :cond_0
    return-void
.end method
