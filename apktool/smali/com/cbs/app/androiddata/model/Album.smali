.class public Lcom/cbs/app/androiddata/model/Album;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
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

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keywords"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
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

.field private l:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date_sec"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sub_title"
    .end annotation
.end field

.field private n:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flock"
    .end annotation
.end field

.field private o:Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "albumPhotoCollection"
    .end annotation
.end field

.field private p:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "week_number"
    .end annotation
.end field

.field private q:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gallery_type"
    .end annotation
.end field

.field private r:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_photos"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook"
    .end annotation
.end field

.field private u:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pub_year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Album;->f:J

    return-wide v0
.end method

.method public getAlbumPhotoCollectoin()Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->o:Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryType()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/cbs/app/androiddata/model/Album;->q:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Album;->a:J

    return-wide v0
.end method

.method public getIsFlock()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/cbs/app/androiddata/model/Album;->n:I

    return v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->i:Ljava/lang/String;

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
    .line 138
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDateSec()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Album;->l:J

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
    .line 106
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPubYear()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/cbs/app/androiddata/model/Album;->u:I

    return v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Album;->e:J

    return-wide v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPhotos()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/cbs/app/androiddata/model/Album;->r:I

    return v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Album;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekNumber()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/cbs/app/androiddata/model/Album;->p:I

    return v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Album;->f:J

    .line 103
    return-void
.end method

.method public setAlbumPhotoCollection(Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->o:Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;

    .line 175
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->c:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->t:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->j:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setGalleryType(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/cbs/app/androiddata/model/Album;->q:I

    .line 191
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Album;->a:J

    .line 63
    return-void
.end method

.method public setIsFlock(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/cbs/app/androiddata/model/Album;->n:I

    .line 167
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->i:Ljava/lang/String;

    .line 127
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
    .line 142
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->k:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->h:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLiveDateSec(J)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Album;->l:J

    .line 151
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
    .line 110
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->g:Ljava/util/ArrayList;

    .line 111
    return-void
.end method

.method public setPubYear(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/cbs/app/androiddata/model/Album;->u:I

    .line 223
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Album;->e:J

    .line 95
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->m:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->d:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTotalPhotos(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/cbs/app/androiddata/model/Album;->r:I

    .line 199
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->s:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Album;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setWeekNumber(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/cbs/app/androiddata/model/Album;->p:I

    .line 183
    return-void
.end method
