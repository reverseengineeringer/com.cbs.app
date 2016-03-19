.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voSubtitleImageInfoData"
.end annotation


# instance fields
.field private height:I

.field private imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field private picData:[B

.field private size:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1809
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->size:I

    .line 1810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B

    .line 1813
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1805
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getPicData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)[B
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B

    return-object v0
.end method

.method static synthetic access$6100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)I
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;)I
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private getHeight()I
    .locals 1

    .prologue
    .line 1838
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->height:I

    return v0
.end method

.method private getImageType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method

.method private getPicData()[B
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B

    return-object v0
.end method

.method private getSize()I
    .locals 1

    .prologue
    .line 1821
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->size:I

    return v0
.end method

.method private getWidth()I
    .locals 1

    .prologue
    .line 1834
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->width:I

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 1846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1847
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1849
    const/4 v0, 0x0

    .line 1878
    :goto_0
    return v0

    .line 1851
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->width:I

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->height:I

    .line 1859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->size:I

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1863
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->size:I

    if-lez v0, :cond_1

    .line 1864
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B

    .line 1865
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleImageInfoData;->picData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1878
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
