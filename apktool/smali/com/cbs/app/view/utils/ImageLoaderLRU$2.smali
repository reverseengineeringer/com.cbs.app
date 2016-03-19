.class final Lcom/cbs/app/view/utils/ImageLoaderLRU$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImageLoaderLRU;->a(Lcom/cbs/app/view/ThumbNailView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/cbs/app/view/ThumbNailView;

.field final synthetic e:Lcom/cbs/app/view/utils/ImageLoaderLRU;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/ImageLoaderLRU;Ljava/lang/String;ILandroid/os/Handler;Lcom/cbs/app/view/ThumbNailView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->e:Lcom/cbs/app/view/utils/ImageLoaderLRU;

    iput-object p2, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->b:I

    iput-object p4, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->e:Lcom/cbs/app/view/utils/ImageLoaderLRU;

    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->a:Ljava/lang/String;

    iget v2, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->b:I

    iget v3, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a(Lcom/cbs/app/view/utils/ImageLoaderLRU;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->c:Landroid/os/Handler;

    new-instance v2, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;

    invoke-direct {v2, p0, v0}, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;-><init>(Lcom/cbs/app/view/utils/ImageLoaderLRU$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget v1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->b:I

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 202
    invoke-static {}, Lcom/cbs/app/view/utils/ImageLoaderLRU;->a()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    return-void
.end method
