.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 424
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to set the progress result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to start seek"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->finish()V

    goto :goto_0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->a(Landroid/widget/SeekBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to complete seek"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->finish()V

    goto :goto_0
.end method
