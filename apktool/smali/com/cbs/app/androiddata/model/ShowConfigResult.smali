.class public Lcom/cbs/app/androiddata/model/ShowConfigResult;
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
        "Lcom/cbs/app/androiddata/model/ShowConfigResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowConfigResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "items_per_page"
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter_hash_tag"
    .end annotation
.end field

.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "massrelevance_url"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tvplus"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tvplus_id"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook_link"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter_link"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "google_plus_one"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "massrelevance_keyword"
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "massrelevance_keyword_array"
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

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "vudu_buy_link"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amazon_buy_link"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itunes_buy_link"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "eyecon_show_title"
    .end annotation
.end field

.field private r:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photos_per_page"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_sort_direction"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_browse"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_sort_order"
    .end annotation
.end field

.field private v:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_category"
    .end annotation
.end field

.field private w:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "promos_per_page"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_playlist_type"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cachup_grey_filepath"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "catchup_filepath"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowConfigResult$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowConfigResult$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->b:Ljava/lang/String;

    .line 1101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->c:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->d:Ljava/lang/String;

    .line 1103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->e:Ljava/lang/String;

    .line 1104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    .line 1105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->g:J

    .line 1106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->h:Ljava/lang/String;

    .line 1107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->i:Ljava/lang/String;

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->j:Ljava/lang/String;

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->k:Ljava/lang/String;

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->l:Ljava/lang/String;

    .line 1111
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->m:Ljava/util/ArrayList;

    .line 1112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->n:Ljava/lang/String;

    .line 1113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->o:Ljava/lang/String;

    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->p:Ljava/lang/String;

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->q:Ljava/lang/String;

    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->r:J

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->s:Ljava/lang/String;

    .line 1118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->t:Ljava/lang/String;

    .line 1119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->u:Ljava/lang/String;

    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->v:J

    .line 1121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->w:J

    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->x:Ljava/lang/String;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->z:Ljava/lang/String;

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->y:Ljava/lang/String;

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->A:J

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->B:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 14
    check-cast p1, Lcom/cbs/app/androiddata/model/ShowConfigResult;

    .line 1168
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 14
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/ShowConfigResult;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Lcom/cbs/app/androiddata/model/ShowConfigResult;

    .line 175
    iget-wide v2, p1, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method public getAmazonBuyLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCachupFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getCachupGreyFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    return-wide v0
.end method

.method public getEyeconShowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlusOne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    return-wide v0
.end method

.method public getItemsPerPage()J
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->A:J

    return-wide v0
.end method

.method public getItunesBuyLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMassRelevanceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMassrelevanceKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMassrelevanceKeywordArray()Ljava/util/ArrayList;
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
    .line 275
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhotoBrowse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotosPerPage()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->r:J

    return-wide v0
.end method

.method public getPromosPerPage()J
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->w:J

    return-wide v0
.end method

.method public getShowCategory()J
    .locals 2

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->v:J

    return-wide v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTvPlus()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->g:J

    return-wide v0
.end method

.method public getTvPlusId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterHashTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPlaylistType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSortDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getVuduBuyLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->n:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x32

    return v0
.end method

.method public setAmazonBuyLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->o:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setCachupFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->z:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setCachupGreyFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->y:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setDisplayOrder(J)V
    .locals 1

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    .line 232
    return-void
.end method

.method public setEyeconShowTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->q:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setFacebookLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->i:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setGooglePlusOne(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->k:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    .line 192
    return-void
.end method

.method public setItemsPerPage(J)V
    .locals 1

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->A:J

    .line 392
    return-void
.end method

.method public setItunesBuyLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->p:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->e:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setMassRelevanceUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->d:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setMassrelevanceKeyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->l:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setMassrelevanceKeywordArray(Ljava/util/ArrayList;)V
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
    .line 279
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->m:Ljava/util/ArrayList;

    .line 280
    return-void
.end method

.method public setPhotoBrowse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->t:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setPhotosPerPage(J)V
    .locals 1

    .prologue
    .line 319
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->r:J

    .line 320
    return-void
.end method

.method public setPromosPerPage(J)V
    .locals 1

    .prologue
    .line 359
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->w:J

    .line 360
    return-void
.end method

.method public setShowCategory(J)V
    .locals 1

    .prologue
    .line 351
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->v:J

    .line 352
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->b:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->c:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setTvPlus(J)V
    .locals 1

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->g:J

    .line 240
    return-void
.end method

.method public setTvPlusId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->h:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setTwitterHashTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->B:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setTwitterLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->j:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setVideoPlaylistType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->x:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setVideoSortDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->s:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setVideoSortOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->u:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setVuduBuyLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->n:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->v:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->w:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->A:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowConfigResult;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method
