.class final Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;
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
    .line 464
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Y()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-static {v2}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Z)[J

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 473
    array-length v1, v0

    if-lez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a([J)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a(Z)[J

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 481
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/gms/cast/j;)V

    .line 482
    array-length v1, v0

    if-lez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a([J)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CC enable failed due to connection issues or no Media"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;->a:Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 487
    :catch_1
    move-exception v0

    goto :goto_1
.end method
