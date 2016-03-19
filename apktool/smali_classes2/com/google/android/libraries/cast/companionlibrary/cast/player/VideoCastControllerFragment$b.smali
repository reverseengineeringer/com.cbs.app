.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;B)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    .line 260
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->d(Z)V

    .line 255
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 240
    const/16 v0, 0x834

    if-eq p2, v0, :cond_0

    const/16 v0, 0x836

    if-ne p2, v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(Landroid/content/Context;I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 245
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->g(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    .line 250
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;

    .line 230
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->e(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->f(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :goto_1
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to update the metadata due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 224
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->b()V

    .line 219
    return-void
.end method
