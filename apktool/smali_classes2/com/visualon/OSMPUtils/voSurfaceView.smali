.class public Lcom/visualon/OSMPUtils/voSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "voSurfaceView.java"


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private final mBefore:Landroid/graphics/RectF;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private relevanceTextureView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    .line 17
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 18
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    .line 17
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 18
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    .line 17
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 18
    iput v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 33
    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 134
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/RectF;->sort()V

    .line 140
    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 8

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 148
    invoke-direct {p0, v1, p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 151
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private prepareForUpdate()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 126
    return-void
.end method

.method private voSetTranslationX(F)V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->prepareForUpdate()V

    .line 111
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationX:F

    .line 112
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->invalidateAfterUpdate()V

    .line 114
    :cond_0
    return-void
.end method

.method private voSetTranslationY(F)V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->prepareForUpdate()V

    .line 119
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationY:F

    .line 120
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->invalidateAfterUpdate()V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public addRelevanceTextureView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    .line 47
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 52
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 53
    iget v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/visualon/OSMPUtils/voSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 54
    iget v2, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    if-gtz v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setMeasuredDimension(II)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "voSurfaceView.java"

    const-string v1, "(%d, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    iget v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 67
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 68
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 69
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    iget v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    return-void
.end method

.method public voSetX(F)V
    .locals 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setX(F)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetTranslationX(F)V

    goto :goto_0
.end method

.method public voSetY(F)V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setY(F)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetTranslationY(F)V

    goto :goto_0
.end method
