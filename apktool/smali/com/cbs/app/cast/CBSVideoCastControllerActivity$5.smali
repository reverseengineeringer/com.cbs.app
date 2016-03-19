.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 398
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f0800b2

    .line 402
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->g(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/cbs/app/cast/ChromecastSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    .line 406
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->b()V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 421
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to temporary network issue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :catch_1
    move-exception v0

    .line 412
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to network issues"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :catch_2
    move-exception v0

    .line 417
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to toggle playback due to other issues"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
