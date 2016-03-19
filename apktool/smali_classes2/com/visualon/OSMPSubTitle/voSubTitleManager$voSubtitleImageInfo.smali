.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voSubtitleImageInfo"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

.field private imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1954
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    .line 1951
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    .line 1952
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 1955
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1882
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1902
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 1947
    :goto_0
    return-object v0

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 1905
    const/4 v0, 0x0

    goto :goto_0

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v0, v1, :cond_6

    .line 1909
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getWidth()I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getHeight()I
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 1911
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v1

    .line 1912
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    if-ne v0, v2, :cond_4

    .line 1913
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    move v2, v3

    .line 1914
    :goto_1
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B
    invoke-static {v4}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 1915
    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    if-nez v4, :cond_3

    .line 1916
    const/4 v4, 0x0

    aput-byte v4, v0, v2

    .line 1917
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    aput-byte v5, v0, v4

    .line 1918
    add-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    aput-byte v5, v0, v4

    .line 1914
    :goto_2
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 1920
    :cond_3
    aget-byte v4, v1, v2

    aput-byte v4, v0, v2

    .line 1921
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    aput-byte v5, v0, v4

    .line 1922
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    aput-byte v5, v0, v4

    .line 1923
    add-int/lit8 v4, v2, 0x3

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1942
    :catch_0
    move-exception v0

    const-string v0, "@@@ClosedCaptionManager.java"

    const-string v1, "CloseCaption subtitle image create bitmap failed!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 1928
    :cond_5
    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1929
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1945
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method private getImageData()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    return-object v0
.end method

.method private getImageInfoDescriptor()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    return-object v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1959
    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1961
    const/4 v0, 0x0

    .line 1967
    :goto_0
    return v0

    .line 1963
    :cond_0
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    .line 1964
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->access$6500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;Landroid/os/Parcel;)Z

    .line 1965
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    .line 1966
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;->access$6700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoDescriptor;Landroid/os/Parcel;)Z

    .line 1967
    const/4 v0, 0x1

    goto :goto_0
.end method
