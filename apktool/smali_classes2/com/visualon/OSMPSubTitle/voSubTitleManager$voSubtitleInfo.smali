.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;
    }
.end annotation


# instance fields
.field private maxDuration:I

.field private subtitleEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

.field private timeStamp:I


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2210
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I

    .line 2211
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    .line 2215
    return-void
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I
    .locals 1

    .prologue
    .line 2149
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    return v0
.end method

.method static synthetic access$802(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;I)I
    .locals 0

    .prologue
    .line 2149
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    return p1
.end method

.method static synthetic access$900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)I
    .locals 1

    .prologue
    .line 2149
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I

    return v0
.end method

.method static synthetic access$902(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;I)I
    .locals 0

    .prologue
    .line 2149
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I

    return p1
.end method

.method private getMaxDuration()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 2165
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2179
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 2168
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 2170
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 2172
    iput v4, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    .line 2179
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    goto :goto_0

    .line 2175
    :cond_2
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v2

    iget v3, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    if-le v2, v3, :cond_3

    .line 2176
    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->duration:I
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$3200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->maxDuration:I

    .line 2168
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getSubtitleEntry()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeStamp()I
    .locals 1

    .prologue
    .line 2156
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2219
    if-ne v2, v1, :cond_0

    .line 2220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->timeStamp:I

    .line 2221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2222
    const/16 v3, 0x64

    if-eq v2, v3, :cond_1

    .line 2260
    :cond_0
    :goto_0
    return v0

    .line 2225
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_3

    .line 2228
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    .line 2229
    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->parse(Landroid/os/Parcel;)Z
    invoke-static {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->access$7700(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;Landroid/os/Parcel;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2230
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 2231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    .line 2232
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2243
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v0, v1

    .line 2244
    goto :goto_0

    .line 2246
    :cond_4
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getMaxDuration()I

    move v0, v1

    .line 2260
    goto :goto_0
.end method

.method public sortByZIndex()V
    .locals 3

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2200
    :goto_0
    return-void

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->subtitleEntry:Ljava/util/ArrayList;

    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo$SortByZOrder;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
