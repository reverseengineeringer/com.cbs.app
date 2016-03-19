.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;


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
    .line 98
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    return-void
.end method
