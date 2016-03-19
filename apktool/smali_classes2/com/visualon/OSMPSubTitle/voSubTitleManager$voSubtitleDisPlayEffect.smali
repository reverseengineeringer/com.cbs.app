.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleDisPlayEffect"
.end annotation


# instance fields
.field private effectDirection:I

.field private effectSpeed:I

.field private effectType:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1335
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I

    .line 1332
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I

    .line 1333
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I

    .line 1336
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I

    return v0
.end method

.method static synthetic access$4200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I

    return v0
.end method

.method static synthetic access$4300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;)I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I

    return v0
.end method

.method static synthetic access$4700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 1339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1340
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1341
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1342
    const/4 v0, 0x0

    .line 1349
    :goto_0
    return v0

    .line 1344
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I

    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I

    .line 1349
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEffectDirection()I
    .locals 1

    .prologue
    .line 1319
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectDirection:I

    return v0
.end method

.method public getEffectSpeed()I
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectSpeed:I

    return v0
.end method

.method public getEffectType()I
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisPlayEffect;->effectType:I

    return v0
.end method
