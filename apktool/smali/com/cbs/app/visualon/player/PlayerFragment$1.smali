.class final Lcom/cbs/app/visualon/player/PlayerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/visualon/player/FullScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/visualon/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/visualon/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/cbs/app/visualon/player/PlayerRect;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/PlayerRect;-><init>()V

    .line 87
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v2}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 90
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    .line 92
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/view/MainApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 67
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "castPresent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/view/MainApplication;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    return-void

    .line 66
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/cbs/app/visualon/player/PlayerFragment$1;->a:Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerFragment;->b(Lcom/cbs/app/visualon/player/PlayerFragment;)Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setVisibility(I)V

    .line 76
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerFragment;->a()Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method
