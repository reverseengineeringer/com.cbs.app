.class final Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 545
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1548
    if-eqz p1, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;B)V

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    .line 1550
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1551
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->i(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$e;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1552
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->j(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1555
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment$2;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->k(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 545
    :cond_1
    return-void
.end method
