.class final Lcom/cbs/app/visualon/player/PlayerFragment$5;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cbs/app/visualon/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    iput-boolean p2, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->a:Z

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 641
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V

    .line 642
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->g(Lcom/cbs/app/visualon/player/PlayerFragment;)V

    .line 645
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 619
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(Z)V

    .line 620
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 621
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->i()Z

    move-result v2

    or-int/2addr v1, v2

    .line 622
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 623
    iget-boolean v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->a:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 629
    :cond_2
    :goto_0
    return-void

    .line 626
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->b(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$5;->b:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 637
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c(I)V

    .line 650
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 651
    return-void
.end method
