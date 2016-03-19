.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleFontEffect"
.end annotation


# instance fields
.field private EdgeColor:I

.field private EdgeType:I

.field private Italic:I

.field private Offset:I

.field private TextTag:I

.field private Underline:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1270
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->TextTag:I

    .line 1264
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I

    .line 1265
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I

    .line 1266
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I

    .line 1267
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Offset:I

    .line 1268
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I

    .line 1271
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I

    return v0
.end method

.method static synthetic access$2702(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I
    .locals 0

    .prologue
    .line 1206
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I

    return p1
.end method

.method static synthetic access$2800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I

    return v0
.end method

.method static synthetic access$2802(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I
    .locals 0

    .prologue
    .line 1206
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I

    return p1
.end method

.method static synthetic access$2900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I

    return v0
.end method

.method static synthetic access$2902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I
    .locals 0

    .prologue
    .line 1206
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I

    return p1
.end method

.method static synthetic access$3000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;)I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I

    return v0
.end method

.method static synthetic access$3002(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;I)I
    .locals 0

    .prologue
    .line 1206
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I

    return p1
.end method

.method static synthetic access$5100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1206
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1275
    const/16 v1, 0x6c

    if-eq v0, v1, :cond_0

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1277
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    .line 1279
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->TextTag:I

    .line 1281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I

    .line 1283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I

    .line 1285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I

    .line 1287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Offset:I

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I

    .line 1292
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEdgeColor()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeColor:I

    return v0
.end method

.method public getEdgeType()I
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->EdgeType:I

    return v0
.end method

.method public getItalic()I
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Italic:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Offset:I

    return v0
.end method

.method public getTextTag()I
    .locals 1

    .prologue
    .line 1213
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->TextTag:I

    return v0
.end method

.method public getUnderline()I
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->Underline:I

    return v0
.end method
