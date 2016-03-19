.class public Lcom/cbs/app/androiddata/model/AlbumPhoto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/AlbumPhoto;",
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

.field private b:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_caption"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_thumb"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private j:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flock"
    .end annotation
.end field

.field private k:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/cbs/app/androiddata/model/AlbumPhoto$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/AlbumPhoto$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->a:J

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->b:J

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->c:J

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->d:Ljava/lang/String;

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->e:Ljava/lang/String;

    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->f:Ljava/lang/String;

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->g:Ljava/lang/String;

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->h:Ljava/lang/String;

    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->i:Ljava/lang/String;

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->j:J

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->k:J

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->c:J

    return-wide v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->b:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->a:J

    return-wide v0
.end method

.method public getIsFlock()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->j:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->k:J

    return-wide v0
.end method

.method public getPhotoCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->c:J

    .line 56
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->b:J

    .line 48
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->g:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setFilepathThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->h:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->a:J

    .line 88
    return-void
.end method

.method public setIsFlock(J)V
    .locals 1

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->j:J

    .line 120
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->i:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->k:J

    .line 128
    return-void
.end method

.method public setPhotoCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->f:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->d:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/AlbumPhoto;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    return-void
.end method
