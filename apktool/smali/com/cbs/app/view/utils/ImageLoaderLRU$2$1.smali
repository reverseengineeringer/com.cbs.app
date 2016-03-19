.class final Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/ImageLoaderLRU$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    iput-object p2, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    iget-object v0, v0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->d:Lcom/cbs/app/view/ThumbNailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    iget-object v0, v0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v0}, Lcom/cbs/app/view/ThumbNailView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    iget-object v1, v1, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->b:Lcom/cbs/app/view/utils/ImageLoaderLRU$2;

    iget-object v0, v0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2;->d:Lcom/cbs/app/view/ThumbNailView;

    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageLoaderLRU$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/ThumbNailView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    :cond_0
    return-void
.end method
