.class final Lcom/cbs/app/view/utils/ImageHelper$2;
.super Lcom/d/a/b/f/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->a:Landroid/widget/ImageView;

    iput p2, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->b:I

    invoke-direct {p0}, Lcom/d/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 363
    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v1, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 365
    iget v2, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->b:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 366
    iget v2, p0, Lcom/cbs/app/view/utils/ImageHelper$2;->b:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 369
    :cond_0
    return-void
.end method
