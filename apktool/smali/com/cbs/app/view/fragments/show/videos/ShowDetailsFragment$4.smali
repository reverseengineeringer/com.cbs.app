.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(Lcom/cbs/app/view/model/UpsellInfo;)V
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
    .line 864
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 867
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b()Ljava/lang/String;

    .line 870
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 871
    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 872
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 875
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    .line 877
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Classics;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Lcom/cbs/app/view/model/Show;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";;;show button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    const-string v2, "evar_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v2, "prop_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->bO:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 883
    return-void
.end method
