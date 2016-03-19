.class final Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;
.super Lcom/google/android/libraries/cast/companionlibrary/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setIcon(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/a;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 175
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1178
    if-nez p1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1183
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->b(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;->a:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->c(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 175
    :cond_1
    return-void
.end method
