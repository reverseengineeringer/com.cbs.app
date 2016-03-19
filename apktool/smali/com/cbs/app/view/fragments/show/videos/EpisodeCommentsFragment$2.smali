.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->a(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 822
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 826
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 827
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 828
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->h:Z

    .line 829
    return-void
.end method
