.class public Lcom/cbs/app/view/model/PhotoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x598956e9bc4ea275L


# instance fields
.field private imageBitmap:Landroid/graphics/Bitmap;

.field private photoCaption:Ljava/lang/String;

.field private photoId:I

.field private photoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/view/model/PhotoData;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPhotoCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/model/PhotoData;->photoCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cbs/app/view/model/PhotoData;->photoId:I

    return v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/PhotoData;->photoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/cbs/app/view/model/PhotoData;->photoId:I

    .line 28
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/view/model/PhotoData;->imageBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public setPhotoCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/model/PhotoData;->photoCaption:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/PhotoData;->photoPath:Ljava/lang/String;

    .line 48
    return-void
.end method
