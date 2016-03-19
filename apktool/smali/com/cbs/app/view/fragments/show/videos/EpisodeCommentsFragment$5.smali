.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setReconcileDialogShowing(Z)V

    .line 130
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$5;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a()V

    .line 135
    :cond_0
    return-void
.end method
