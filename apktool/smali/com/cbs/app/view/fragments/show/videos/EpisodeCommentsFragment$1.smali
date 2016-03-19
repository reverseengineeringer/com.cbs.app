.class final Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 77
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->e()Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 88
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/LiveFyreService;->a(I)V

    .line 89
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput v1, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b()V

    .line 93
    return-void

    .line 80
    :sswitch_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0, v2}, Lcom/cbs/app/service/LiveFyreService;->a(I)V

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->b:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v0, v3}, Lcom/cbs/app/service/LiveFyreService;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment$1;->a:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    iput v3, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;->d:I

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x7f0f000d -> :sswitch_1
        0x7f0f0267 -> :sswitch_0
    .end sparse-switch
.end method
