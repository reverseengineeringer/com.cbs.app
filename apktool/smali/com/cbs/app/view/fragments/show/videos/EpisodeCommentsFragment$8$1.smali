.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "You have "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iget-boolean v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "liked"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " this comment."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    .line 1758
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1759
    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1760
    if-eqz v0, :cond_0

    .line 1761
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget v1, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/LiveFyreService;->a(I)V

    .line 516
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8$1;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$8;->b:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b()V

    .line 517
    return-void

    .line 513
    :cond_1
    const-string v0, "unliked"

    goto :goto_0
.end method
