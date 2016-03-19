.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v1, v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_authorization_timeout:I

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-boolean v3, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a:Z

    .line 202
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;->c()Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a$1;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;

    iget-object v0, v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$a;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/a;

    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/player/b;

    .line 206
    :cond_0
    return-void
.end method
