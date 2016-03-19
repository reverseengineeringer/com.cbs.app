.class public Lcom/cbs/app/view/model/rest/Album;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private albumId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private albumPhotoCollection:Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "albumPhotoCollection"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private facebook:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook"
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private galleryType:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gallery_type"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isFlock:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flock"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private keywordList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keywordList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keywords:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keywords"
    .end annotation
.end field

.field private liveDateSec:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date_sec"
    .end annotation
.end field

.field private photoNids:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_nids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pubYear:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pub_year"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sub_title"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private totalPhotos:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_photos"
    .end annotation
.end field

.field private twitter:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private weekNumber:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "week_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/Album;->albumId:J

    return-wide v0
.end method

.method public getAlbumPhotoCollectoin()Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->albumPhotoCollection:Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryType()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/cbs/app/view/model/rest/Album;->galleryType:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/Album;->id:J

    return-wide v0
.end method

.method public getIsFlock()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/cbs/app/view/model/rest/Album;->isFlock:I

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->keywordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDateSec()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/Album;->liveDateSec:J

    return-wide v0
.end method

.method public getPhotoNids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->photoNids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPubYear()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/cbs/app/view/model/rest/Album;->pubYear:I

    return v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/Album;->showId:J

    return-wide v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPhotos()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/cbs/app/view/model/rest/Album;->totalPhotos:I

    return v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/Album;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekNumber()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/cbs/app/view/model/rest/Album;->weekNumber:I

    return v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/Album;->albumId:J

    .line 105
    return-void
.end method

.method public setAlbumPhotoCollection(Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->albumPhotoCollection:Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;

    .line 177
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->description:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->facebook:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->filePath:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setGalleryType(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/cbs/app/view/model/rest/Album;->galleryType:I

    .line 193
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/Album;->id:J

    .line 65
    return-void
.end method

.method public setIsFlock(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/cbs/app/view/model/rest/Album;->isFlock:I

    .line 169
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->k:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setKeywordList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->keywordList:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->keywords:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setLiveDateSec(J)V
    .locals 1

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/Album;->liveDateSec:J

    .line 153
    return-void
.end method

.method public setPhotoNids(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->photoNids:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public setPubYear(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/cbs/app/view/model/rest/Album;->pubYear:I

    .line 225
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/Album;->showId:J

    .line 97
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->subTitle:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->title:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTotalPhotos(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/cbs/app/view/model/rest/Album;->totalPhotos:I

    .line 201
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->twitter:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/Album;->type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setWeekNumber(I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/cbs/app/view/model/rest/Album;->weekNumber:I

    .line 185
    return-void
.end method
