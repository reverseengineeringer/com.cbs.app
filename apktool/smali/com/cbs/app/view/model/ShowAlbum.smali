.class public Lcom/cbs/app/view/model/ShowAlbum;
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
        "Lcom/cbs/app/view/model/ShowAlbum;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/ShowAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x180376eae340ba83L


# instance fields
.field private album_id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private created_date:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
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

.field private filepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private gallery_type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gallery_type"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
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

.field private live_date_sec:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date_sec"
    .end annotation
.end field

.field private photo_nids:Ljava/util/ArrayList;
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

.field private pub_year:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pub_year"
    .end annotation
.end field

.field private show_id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private total_photos:I
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

.field private week_number:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "week_number"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/cbs/app/view/model/ShowAlbum$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/ShowAlbum$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/ShowAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/ShowAlbum;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->id:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->type:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->album_id:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->show_id:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->created_date:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->title:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->description:Ljava/lang/String;

    .line 123
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->photo_nids:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->filepath:Ljava/lang/String;

    .line 125
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->keywordList:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->week_number:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->gallery_type:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->total_photos:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->twitter:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->facebook:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->pub_year:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->live_date_sec:J

    .line 133
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/ShowAlbum;)I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowAlbum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/cbs/app/view/model/ShowAlbum;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/ShowAlbum;->compareTo(Lcom/cbs/app/view/model/ShowAlbum;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/cbs/app/view/model/ShowAlbum;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    instance-of v1, p1, Lcom/cbs/app/view/model/ShowAlbum;

    if-eqz v1, :cond_0

    .line 169
    check-cast p1, Lcom/cbs/app/view/model/ShowAlbum;

    .line 170
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowAlbum;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cbs/app/view/model/ShowAlbum;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method public getAlbum_id()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->album_id:J

    return-wide v0
.end method

.method public getCreated_date()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->created_date:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery_type()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->gallery_type:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->id:J

    return-wide v0
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
    .line 222
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->keywordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLive_date_sec()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->live_date_sec:J

    return-wide v0
.end method

.method public getPhoto_nids()Ljava/util/ArrayList;
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
    .line 206
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->photo_nids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPub_year()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->pub_year:I

    return v0
.end method

.method public getShow_id()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->show_id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_photos()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->total_photos:I

    return v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek_number()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->week_number:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x31

    return v0
.end method

.method public setAlbum_id(J)V
    .locals 1

    .prologue
    .line 282
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->album_id:J

    .line 283
    return-void
.end method

.method public setCreated_date(J)V
    .locals 1

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->created_date:J

    .line 291
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->description:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->facebook:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->filepath:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setGallery_type(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->gallery_type:I

    .line 243
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->id:J

    .line 187
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
    .line 226
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->keywordList:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public setLive_date_sec(J)V
    .locals 1

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->live_date_sec:J

    .line 316
    return-void
.end method

.method public setPhoto_nids(Ljava/util/ArrayList;)V
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
    .line 210
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->photo_nids:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method public setPub_year(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->pub_year:I

    .line 275
    return-void
.end method

.method public setShow_id(J)V
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->show_id:J

    .line 203
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->title:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setTotal_photos(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->total_photos:I

    .line 251
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->twitter:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->type:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setWeek_number(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/cbs/app/view/model/ShowAlbum;->week_number:I

    .line 235
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->album_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->show_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->created_date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->photo_nids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->keywordList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 147
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->week_number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->gallery_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->total_photos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->facebook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->pub_year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowAlbum;->live_date_sec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    return-void
.end method
