.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleInfoEntry"
.end annotation


# instance fields
.field private duration:I

.field private subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

.field private subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2123
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2118
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I

    .line 2119
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 2120
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    .line 2124
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 2089
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I
    .locals 1

    .prologue
    .line 2089
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I

    return v0
.end method

.method static synthetic access$7700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 2089
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2128
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return v0

    .line 2131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 2134
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I

    .line 2135
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    .line 2136
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;->access$5700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2138
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    .line 2139
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->access$7400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2141
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I

    return v0
.end method

.method public getSubtitleDispInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    return-object v0
.end method

.method public getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voRect;

    return-object v0
.end method
