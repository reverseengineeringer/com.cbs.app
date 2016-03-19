.class public Lcom/cbs/app/view/model/Show;
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
        "Lcom/cbs/app/view/model/Show;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/Show;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5b20203a02ca8144L


# instance fields
.field private about:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "about"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation
.end field

.field private categoryId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category_id"
    .end annotation
.end field

.field private contentTypeShowNid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_type_show_nid"
    .end annotation
.end field

.field private filepathShowConnectImage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_connect_img"
    .end annotation
.end field

.field private filepathShowThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_thumbnail"
    .end annotation
.end field

.field private filepathWin8ShowartLarge:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_win8_showart_large"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private keywordList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keywordlist"
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

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "link"
    .end annotation
.end field

.field private season:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "season"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private showThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_thumbnail"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private tuneInTime:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tune_in_time"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cbs/app/view/model/Show$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/Show$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/Show;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/Show;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/Show;->id:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->type:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->link:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->category:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/Show;->showId:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/Show;->season:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->k:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->showThumbnail:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowThumbnail:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->about:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->categoryId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->tuneInTime:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->contentTypeShowNid:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowConnectImage:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathWin8ShowartLarge:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->keywords:Ljava/lang/String;

    .line 125
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/Show;)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/cbs/app/view/model/Show;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/Show;->compareTo(Lcom/cbs/app/view/model/Show;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    instance-of v1, p1, Lcom/cbs/app/view/model/ShowConfig;

    if-eqz v1, :cond_0

    .line 90
    check-cast p1, Lcom/cbs/app/view/model/ShowConfig;

    .line 91
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowConfig;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cbs/app/view/model/Show;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :cond_0
    return v0
.end method

.method public getAbout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->about:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeShowNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->contentTypeShowNid:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodes(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/cbs/app/view/AbstractFragmentActivity;

    if-eqz v1, :cond_0

    .line 306
    check-cast p1, Lcom/cbs/app/view/AbstractFragmentActivity;

    .line 307
    invoke-virtual {p0}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cbs/app/view/AbstractFragmentActivity;->a(J)Ljava/util/List;

    move-result-object v0

    .line 310
    :cond_0
    return-object v0
.end method

.method public getFilepathShowConnectImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowConnectImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathShowThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathWin8ShowartLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathWin8ShowartLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/cbs/app/view/model/Show;->id:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->k:Ljava/lang/String;

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
    .line 223
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSeason()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/cbs/app/view/model/Show;->season:I

    return v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/cbs/app/view/model/Show;->showId:J

    return-wide v0
.end method

.method public getShowThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->showThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTuneInTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->tuneInTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x30

    return v0
.end method

.method public setAbout(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->about:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->category:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->categoryId:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setContentTypeShowNid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->contentTypeShowNid:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setFilepathShowConnectImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->filepathShowConnectImage:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setFilepathShowThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->filepathShowThumbnail:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setFilepathWin8ShowartLarge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->filepathWin8ShowartLarge:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/cbs/app/view/model/Show;->id:J

    .line 164
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->k:Ljava/lang/String;

    .line 236
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
    .line 227
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    .line 228
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->keywords:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->link:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setSeason(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/cbs/app/view/model/Show;->season:I

    .line 212
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/cbs/app/view/model/Show;->showId:J

    .line 196
    return-void
.end method

.method public setShowThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->showThumbnail:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setTuneInTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->tuneInTime:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cbs/app/view/model/Show;->type:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/cbs/app/view/model/Show;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-wide v0, p0, Lcom/cbs/app/view/model/Show;->showId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/cbs/app/view/model/Show;->season:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->showThumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowThumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->tuneInTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->contentTypeShowNid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathShowConnectImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->filepathWin8ShowartLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/model/Show;->keywordList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 156
    return-void
.end method
