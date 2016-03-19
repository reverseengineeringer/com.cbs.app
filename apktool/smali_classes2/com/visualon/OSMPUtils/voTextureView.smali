.class public Lcom/visualon/OSMPUtils/voTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "voTextureView.java"


# instance fields
.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 10
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 11
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 11
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 11
    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 34
    iget v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voTextureView;->getDefaultSize(II)I

    move-result v0

    .line 35
    iget v1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/visualon/OSMPUtils/voTextureView;->getDefaultSize(II)I

    move-result v1

    .line 36
    iget v2, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    if-gtz v2, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPUtils/voTextureView;->setMeasuredDimension(II)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    iget v1, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPUtils/voTextureView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 26
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoWidth:I

    .line 27
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voTextureView;->mVideoHeight:I

    .line 28
    invoke-super {p0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    return-void
.end method
