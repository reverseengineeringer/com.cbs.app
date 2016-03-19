.class Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voRect"
.end annotation


# instance fields
.field private rectBorderColor:I

.field private rectBorderType:I

.field rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

.field private rectDraw:Landroid/graphics/Rect;

.field private rectFillColor:I

.field private rectZOrder:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1431
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    .line 1425
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderType:I

    .line 1426
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderColor:I

    .line 1427
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    .line 1428
    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I

    .line 1429
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    .line 1432
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    return v0
.end method

.method static synthetic access$1902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;I)I
    .locals 0

    .prologue
    .line 1359
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    return p1
.end method

.method static synthetic access$3800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderType:I

    return v0
.end method

.method static synthetic access$3900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderColor:I

    return v0
.end method

.method static synthetic access$5500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;I)V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->setRectFillColor(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;)I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x64

    const/16 v3, 0x5f

    .line 1435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1436
    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    .line 1437
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1474
    :cond_0
    :goto_0
    return v0

    .line 1440
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1441
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1445
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1446
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1447
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderType:I

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderColor:I

    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I

    .line 1460
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->access$4700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;Landroid/os/Parcel;)Z

    .line 1463
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1465
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v4, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1466
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1474
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setRectFillColor(I)V
    .locals 0

    .prologue
    .line 1403
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    .line 1404
    return-void
.end method


# virtual methods
.method public getRectBorderColor()I
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderColor:I

    return v0
.end method

.method public getRectBorderType()I
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectBorderType:I

    return v0
.end method

.method public getRectDisplayEffect()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDisplayEffct:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;

    return-object v0
.end method

.method public getRectDraw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectDraw:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRectFillColor()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectFillColor:I

    return v0
.end method

.method public getRectZOrder()I
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->rectZOrder:I

    return v0
.end method
