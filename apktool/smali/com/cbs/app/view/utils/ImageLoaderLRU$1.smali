.class final Lcom/cbs/app/view/utils/ImageLoaderLRU$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImageLoaderLRU;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/utils/ImageLoaderLRU;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/ImageLoaderLRU;I)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$1;->a:Lcom/cbs/app/view/utils/ImageLoaderLRU;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1047
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 42
    return v0
.end method
