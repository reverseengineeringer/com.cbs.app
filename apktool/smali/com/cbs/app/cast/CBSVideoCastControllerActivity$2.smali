.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(DZ)V

    .line 105
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVolumeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0, p1, p2}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;D)D

    .line 107
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0, p3}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;Z)Z

    .line 108
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0, v4}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;Z)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->b()V

    .line 124
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    .line 126
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->b(I)V

    .line 139
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 140
    const/16 v0, 0x834

    if-ne p1, v0, :cond_0

    .line 141
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    const-string v1, "Failed to launch video. Please try again later."

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c()V

    .line 131
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    .line 134
    return-void
.end method
