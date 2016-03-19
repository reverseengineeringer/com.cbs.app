.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleStringInfo"
.end annotation


# instance fields
.field private charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

.field private fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1506
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1503
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    .line 1504
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    .line 1507
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1511
    const/16 v2, 0x6a

    if-eq v1, v2, :cond_1

    .line 1512
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1516
    :cond_1
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    .line 1517
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->access$5000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1519
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    .line 1520
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;->access$5100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCharEffect()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontEffect;

    return-object v0
.end method

.method public getFontInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;

    return-object v0
.end method
