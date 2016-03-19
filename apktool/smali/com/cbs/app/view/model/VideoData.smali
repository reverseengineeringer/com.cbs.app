.class public Lcom/cbs/app/view/model/VideoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/view/model/VideoData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2eae1d6a5dca43d1L


# instance fields
.field private _airDate:Ljava/lang/String;

.field private _pubDate:Ljava/lang/String;

.field private airDate:J

.field private category:Ljava/lang/String;

.field private cbsShowId:J

.field private cid:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private duration:J

.field private episodeNum:Ljava/lang/String;

.field private exclusive:Z

.field private fromMyCBS:Z

.field private fullEpisode:Z

.field private genre:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private seasonNum:I

.field private seriesTitle:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private subscriptionLevel:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private thumbnailSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private topLevelCategory:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/cbs/app/view/model/VideoData$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/VideoData$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/VideoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fromMyCBS:Z

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fromMyCBS:Z

    .line 201
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/VideoData;->readFromParcel(Landroid/os/Parcel;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "contentId"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "cbsShowId"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "deviceType"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "genre"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "topLevelCategory"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "category"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "fullEpisode"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "exclusive"
        .end annotation
    .end param
    .param p11    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "airDate"
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "_airDate"
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "url"
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "_pubDate"
        .end annotation
    .end param
    .param p16    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "duration"
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "seriesTitle"
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "description"
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "rating"
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "thumbnail"
        .end annotation
    .end param
    .param p23    # Ljava/util/ArrayList;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "thumbnailSet"
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "status"
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "subscriptionLevel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Thumbnail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cbs/app/view/model/VideoData;->fromMyCBS:Z

    .line 175
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 177
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->pid:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/cbs/app/view/model/VideoData;->cid:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/model/VideoData;->setUrl(Ljava/lang/String;)V

    .line 180
    iput-wide p3, p0, Lcom/cbs/app/view/model/VideoData;->cbsShowId:J

    .line 181
    iput-object p5, p0, Lcom/cbs/app/view/model/VideoData;->deviceType:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/cbs/app/view/model/VideoData;->genre:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/cbs/app/view/model/VideoData;->topLevelCategory:Ljava/lang/String;

    .line 184
    iput-object p8, p0, Lcom/cbs/app/view/model/VideoData;->category:Ljava/lang/String;

    .line 185
    iput-boolean p9, p0, Lcom/cbs/app/view/model/VideoData;->fullEpisode:Z

    .line 186
    iput-boolean p10, p0, Lcom/cbs/app/view/model/VideoData;->exclusive:Z

    .line 187
    iput-wide p11, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    .line 188
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_airDate:Ljava/lang/String;

    .line 189
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_pubDate:Ljava/lang/String;

    .line 190
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->duration:J

    .line 191
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->title:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->description:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->rating:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnail:Ljava/lang/String;

    .line 195
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->status:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->subscriptionLevel:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->seriesTitle:Ljava/lang/String;

    .line 198
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->pid:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->cid:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->url:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/view/model/VideoData;->cbsShowId:J

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->deviceType:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->genre:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->topLevelCategory:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->category:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fullEpisode:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/view/model/VideoData;->exclusive:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_airDate:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_pubDate:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->duration:J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->title:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->seriesTitle:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->description:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->rating:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/VideoData;->seasonNum:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->episodeNum:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnail:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    const-class v1, Lcom/cbs/app/view/model/Thumbnail;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->label:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->status:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->subscriptionLevel:Ljava/lang/String;

    .line 279
    return-void

    :cond_1
    move v0, v2

    .line 259
    goto :goto_0

    :cond_2
    move v1, v2

    .line 260
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/VideoData;)I
    .locals 4

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/view/model/VideoData;->airDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 107
    check-cast p1, Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/VideoData;->compareTo(Lcom/cbs/app/view/model/VideoData;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    instance-of v1, p1, Lcom/cbs/app/view/model/VideoData;

    if-eqz v1, :cond_0

    .line 459
    check-cast p1, Lcom/cbs/app/view/model/VideoData;

    .line 460
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 464
    :cond_0
    return v0
.end method

.method public getAirDate()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    return-wide v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCbsShowId()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->cbsShowId:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->duration:J

    return-wide v0
.end method

.method public getEpisodeNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->episodeNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFullEpisode()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fullEpisode:Z

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonNum()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/cbs/app/view/model/VideoData;->seasonNum:I

    return v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->seriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->subscriptionLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->topLevelCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public get_airDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_airDate:Ljava/lang/String;

    return-object v0
.end method

.method public get_pubDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_pubDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 468
    const/16 v0, 0x33

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->exclusive:Z

    return v0
.end method

.method public isFromMyCBS()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fromMyCBS:Z

    return v0
.end method

.method public setAirDate(J)V
    .locals 1

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    .line 359
    return-void
.end method

.method public setCbsShowId(J)V
    .locals 1

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/cbs/app/view/model/VideoData;->cbsShowId:J

    .line 327
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->cid:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->description:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->deviceType:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setEpisodeNum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->episodeNum:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setFromMyCBS(Z)V
    .locals 0

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/cbs/app/view/model/VideoData;->fromMyCBS:Z

    .line 439
    return-void
.end method

.method public setFullEpisode(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/cbs/app/view/model/VideoData;->fullEpisode:Z

    .line 351
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->label:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->pid:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setSeasonNum(I)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lcom/cbs/app/view/model/VideoData;->seasonNum:I

    .line 295
    return-void
.end method

.method public setSeriesTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->seriesTitle:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->status:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setSubscriptionLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->subscriptionLevel:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->thumbnail:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setThumbnailSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Thumbnail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 407
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->title:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setTopLevelCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->topLevelCategory:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->url:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public set_airDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoData;->_airDate:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-wide v4, p0, Lcom/cbs/app/view/model/VideoData;->cbsShowId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->topLevelCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->fullEpisode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoData;->exclusive:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->airDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_airDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->_pubDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoData;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->seriesTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->rating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/cbs/app/view/model/VideoData;->seasonNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->episodeNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->thumbnailSet:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoData;->subscriptionLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return-void

    :cond_1
    move v0, v2

    .line 228
    goto :goto_0

    :cond_2
    move v1, v2

    .line 229
    goto :goto_1
.end method
