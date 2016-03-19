.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    .line 724
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v1, v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    iput-boolean v3, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a:Z

    .line 726
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->c()Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    if-ne v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a$1;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$a;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->e(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 730
    :cond_0
    return-void
.end method
