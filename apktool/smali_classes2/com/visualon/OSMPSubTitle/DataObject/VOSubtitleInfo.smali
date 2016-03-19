.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$1;,
        Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;
    }
.end annotation


# instance fields
.field public jsonString:Ljava/lang/String;

.field public maxDuration:I

.field public rectBottom:F

.field public rectLeft:F

.field public rectRight:F

.field public rectTop:F

.field public subtitleEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->jsonString:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->timeStamp:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method private getMaxDuration()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 39
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 53
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    .line 44
    iget v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    if-ne v2, v4, :cond_2

    .line 46
    iput v4, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    .line 53
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    goto :goto_0

    .line 49
    :cond_2
    iget v2, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    iget v3, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    if-le v2, v3, :cond_3

    .line 50
    iget v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->maxDuration:I

    .line 42
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getSubtitleEntryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeStamp()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->timeStamp:I

    return v0
.end method

.method public sortByZIndex()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
