.class final Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 432
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    iput-object p2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 432
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1435
    if-eqz p1, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    new-instance v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;B)V

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    .line 1437
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1438
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1439
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->b(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;->a(Lcom/cbs/app/cast/CBSVideoCastControllerFragment$e;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;->setImage(Landroid/graphics/Bitmap;)V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->c(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$2;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    invoke-static {v0}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->d(Lcom/cbs/app/cast/CBSVideoCastControllerFragment;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 432
    :cond_1
    return-void
.end method
