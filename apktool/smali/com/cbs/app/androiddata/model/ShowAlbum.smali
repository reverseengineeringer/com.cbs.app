.class public Lcom/cbs/app/androiddata/model/ShowAlbum;
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
        "Lcom/cbs/app/androiddata/model/ShowAlbum;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowAlbum;",
            ">;"
        }
    .end annotation
.end field


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

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
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

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
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

.field private k:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "week_number"
    .end annotation
.end field

.field private l:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gallery_type"
    .end annotation
.end field

.field private m:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_photos"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "facebook"
    .end annotation
.end field

.field private p:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pub_year"
    .end annotation
.end field

.field private q:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date_sec"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowAlbum$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowAlbum$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->a:J

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->b:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->c:J

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->d:J

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->e:J

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->f:Ljava/lang/String;

    .line 1098
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->g:Ljava/lang/String;

    .line 1099
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->h:Ljava/util/ArrayList;

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->i:Ljava/lang/String;

    .line 1101
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->j:Ljava/util/ArrayList;

    .line 1102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->k:I

    .line 1103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->l:I

    .line 1104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->m:I

    .line 1105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->n:Ljava/lang/String;

    .line 1106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->o:Ljava/lang/String;

    .line 1107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->p:I

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->q:J

    .line 75
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/cbs/app/androiddata/model/ShowAlbum;

    .line 1139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/ShowAlbum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 12
    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/ShowAlbum;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/ShowAlbum;

    if-eqz v1, :cond_0

    .line 145
    check-cast p1, Lcom/cbs/app/androiddata/model/ShowAlbum;

    .line 146
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/ShowAlbum;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 150
    :cond_0
    return v0
.end method

.method public getAlbum_id()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->c:J

    return-wide v0
.end method

.method public getCreated_date()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->e:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery_type()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->l:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->a:J

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
    .line 198
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLive_date_sec()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->q:J

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
    .line 182
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPub_year()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->p:I

    return v0
.end method

.method public getShow_id()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->d:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_photos()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->m:I

    return v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek_number()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->k:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x31

    return v0
.end method

.method public setAlbum_id(J)V
    .locals 1

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->c:J

    .line 259
    return-void
.end method

.method public setCreated_date(J)V
    .locals 1

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->e:J

    .line 267
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->g:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->o:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->i:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setGallery_type(I)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->l:I

    .line 219
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->a:J

    .line 163
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
    .line 202
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->j:Ljava/util/ArrayList;

    .line 203
    return-void
.end method

.method public setLive_date_sec(J)V
    .locals 1

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->q:J

    .line 287
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
    .line 186
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->h:Ljava/util/ArrayList;

    .line 187
    return-void
.end method

.method public setPub_year(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->p:I

    .line 251
    return-void
.end method

.method public setShow_id(J)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->d:J

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->f:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setTotal_photos(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->m:I

    .line 227
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->n:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->b:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setWeek_number(I)V
    .locals 0

    .prologue
    .line 210
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->k:I

    .line 211
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 121
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 123
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/ShowAlbum;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    return-void
.end method
