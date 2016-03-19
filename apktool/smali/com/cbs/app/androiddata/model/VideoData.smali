.class public Lcom/cbs/app/androiddata/model/VideoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/androiddata/model/VideoData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pid"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contentId"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cbsShowId"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deviceType"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "genre"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "topLevelCategory"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fullEpisode"
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "exclusive"
    .end annotation
.end field

.field private k:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "airDate"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_airDate"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_pubDate"
    .end annotation
.end field

.field private n:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation
.end field

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subscriptionLevel"
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnailSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/androiddata/model/VideoData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/androiddata/model/VideoData;->a:Ljava/lang/String;

    .line 435
    new-instance v0, Lcom/cbs/app/androiddata/model/VideoData$2;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/VideoData$2;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/VideoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->A:Z

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    .line 97
    iput-boolean v2, p0, Lcom/cbs/app/androiddata/model/VideoData;->A:Z

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->b:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->c:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->d:J

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->e:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->f:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->g:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->h:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->i:Z

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->j:Z

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->l:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->m:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->n:J

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->o:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->p:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->q:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->r:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->s:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->t:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->u:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->v:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->w:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->x:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->y:Ljava/lang/String;

    .line 431
    sget-object v0, Lcom/cbs/app/androiddata/model/Thumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/VideoData;->A:Z

    .line 433
    return-void

    :cond_0
    move v0, v2

    .line 414
    goto :goto_0

    :cond_1
    move v0, v2

    .line 415
    goto :goto_1

    :cond_2
    move v1, v2

    .line 432
    goto :goto_2
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 17
    check-cast p1, Lcom/cbs/app/androiddata/model/VideoData;

    .line 1292
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 17
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/VideoData;

    if-eqz v1, :cond_0

    .line 351
    check-cast p1, Lcom/cbs/app/androiddata/model/VideoData;

    .line 352
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 356
    :cond_0
    return v0
.end method

.method public getAirDate()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    return-wide v0
.end method

.method public getAirDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCbsShowId()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->d:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getTopLevelCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getTopLevelCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "News"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->n:J

    return-wide v0
.end method

.method public getEpisodeNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getSeasonNum()I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getSeasonNum()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Ep"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    return-object v0

    .line 299
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 301
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getFullEpisode()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->i:Z

    return v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonNum()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->u:I

    return v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbnailUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/VideoData;->getThumbnailSet()Ljava/util/List;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 328
    new-instance v0, Lcom/cbs/app/androiddata/model/VideoData$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/androiddata/model/VideoData$1;-><init>(Lcom/cbs/app/androiddata/model/VideoData;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/Thumbnail;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/model/Thumbnail;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 345
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0x33

    return v0
.end method

.method public setAirDate(J)V
    .locals 1

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    .line 199
    return-void
.end method

.method public setAirDateStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->l:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setCbsShowId(J)V
    .locals 1

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->d:J

    .line 167
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->c:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->s:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->e:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setEpisodeNum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->v:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setFromMyCBS(Z)V
    .locals 0

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->A:Z

    .line 279
    return-void
.end method

.method public setFullEpisode(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->i:Z

    .line 191
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->p:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSeasonNum(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->u:I

    .line 131
    return-void
.end method

.method public setSeriesTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->o:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->x:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setSubscriptionLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->y:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->w:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setThumbnailSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/Thumbnail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    .line 247
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->q:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setTopLevelCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->g:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData;->r:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->d:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->k:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 388
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/VideoData;->n:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 403
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/VideoData;->A:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 404
    return-void

    :cond_0
    move v0, v2

    .line 385
    goto :goto_0

    :cond_1
    move v0, v2

    .line 386
    goto :goto_1

    :cond_2
    move v1, v2

    .line 403
    goto :goto_2
.end method
