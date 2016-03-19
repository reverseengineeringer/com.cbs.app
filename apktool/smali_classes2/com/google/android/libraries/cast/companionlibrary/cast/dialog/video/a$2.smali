.class final Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 180
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1183
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->e(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 180
    :cond_0
    return-void
.end method
