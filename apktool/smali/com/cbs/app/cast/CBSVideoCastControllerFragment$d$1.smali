.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->k(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->M()J
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    long-to-int v0, v0

    .line 811
    if-lez v0, :cond_0

    .line 813
    :try_start_1
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    iget-object v1, v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->g(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->O()J

    move-result-wide v2

    long-to-int v1, v2

    .line 814
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;

    iget-object v2, v2, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$d;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    :try_start_2
    const-string v1, "VideoCastContrFragment"

    const-string v2, "Failed to get current media position"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 819
    :catch_1
    move-exception v0

    .line 820
    :goto_1
    const-string v1, "VideoCastContrFragment"

    const-string v2, "Failed to update the progress bar due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 819
    :catch_2
    move-exception v0

    goto :goto_1
.end method
