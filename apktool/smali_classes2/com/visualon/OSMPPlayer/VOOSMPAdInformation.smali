.class public Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private strCaptionURL:Ljava/lang/String;

.field private strChannelname:Ljava/lang/String;

.field private strContentTitle:Ljava/lang/String;

.field private strSeriesTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getStrCaptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStrChannelname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    return-object v0
.end method

.method public getStrContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStrSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setStrCaptionURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strCaptionURL:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setStrChannelname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strChannelname:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStrContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strContentTitle:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setStrSeriesTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->strSeriesTitle:Ljava/lang/String;

    .line 24
    return-void
.end method
