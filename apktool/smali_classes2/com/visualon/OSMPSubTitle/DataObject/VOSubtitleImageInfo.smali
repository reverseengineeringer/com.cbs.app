.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "voSubtitleImageInfo"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

.field public imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    .line 17
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    .line 18
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 55
    :goto_0
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v0, v1, :cond_6

    .line 28
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v1

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v0, v3, :cond_4

    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    .line 33
    :goto_1
    iget-object v3, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-virtual {v3}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->getPicData()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 34
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v1, v3

    if-nez v3, :cond_3

    .line 35
    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 36
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    .line 37
    add-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    aput-byte v4, v0, v3

    .line 33
    :goto_2
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 39
    :cond_3
    aget-byte v3, v1, v2

    aput-byte v3, v0, v2

    .line 40
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    aput-byte v4, v0, v3

    .line 41
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    aput-byte v4, v0, v3

    .line 42
    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    const-string v0, "voSubtitleImageInfo"

    const-string v1, "subtitle image create bitmap failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 47
    :cond_5
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_3
.end method
