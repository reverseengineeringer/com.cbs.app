.class final Lcom/cbs/app/view/utils/ImageHelper$1;
.super Lcom/d/a/b/f/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/ThumbNailView;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/ThumbNailView;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImageHelper$1;->a:Lcom/cbs/app/view/ThumbNailView;

    invoke-direct {p0}, Lcom/d/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageHelper$1;->a:Lcom/cbs/app/view/ThumbNailView;

    iget-object v0, v0, Lcom/cbs/app/view/ThumbNailView;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageHelper$1;->a:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v0, p3}, Lcom/cbs/app/view/ThumbNailView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    :cond_0
    return-void
.end method
