.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->c:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->i:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 839
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    :cond_0
    return-void
.end method
