.class final Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;
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
    .line 379
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;)V

    .line 394
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 386
    invoke-static {v1}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 387
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 392
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/SVODPopupHelper;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
