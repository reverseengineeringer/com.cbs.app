.class final Lcom/cbs/app/cast/CBSMiniController$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSMiniController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSMiniController;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSMiniController;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cbs/app/cast/CBSMiniController$1;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(DZ)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVolumeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-nez v1, :cond_0

    move p3, v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController$1;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSMiniController;->a(Lcom/cbs/app/cast/CBSMiniController;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    if-eqz p3, :cond_2

    .line 101
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController$1;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSMiniController;->a(Lcom/cbs/app/cast/CBSMiniController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController$1;->a:Lcom/cbs/app/cast/CBSMiniController;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSMiniController;->a(Lcom/cbs/app/cast/CBSMiniController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
