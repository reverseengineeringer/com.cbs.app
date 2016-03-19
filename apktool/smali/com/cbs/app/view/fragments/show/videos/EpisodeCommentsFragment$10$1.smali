.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 610
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->a:Landroid/app/Activity;

    const-string v1, "Message posted."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/LiveFyreService;->a(I)V

    .line 613
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$10;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b()V

    .line 614
    return-void
.end method
