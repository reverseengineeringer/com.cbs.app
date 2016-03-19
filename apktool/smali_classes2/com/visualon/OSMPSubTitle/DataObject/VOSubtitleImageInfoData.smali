.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private height:I

.field private imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public picData:[B

.field private size:I

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->size:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    .line 13
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->height:I

    return v0
.end method

.method public getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method

.method public getPicData()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->width:I

    return v0
.end method
