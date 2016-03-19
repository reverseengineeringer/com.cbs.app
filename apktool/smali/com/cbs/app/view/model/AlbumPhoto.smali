.class public Lcom/cbs/app/view/model/AlbumPhoto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


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
            "Lcom/cbs/app/view/model/AlbumPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x4c1ca66c0298b338L


# instance fields
.field private albumId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "album_id"
    .end annotation
.end field

.field private createdDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
    .end annotation
.end field

.field private filepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private filepathThumb:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_thumb"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isFlock:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flock"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private liveDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date"
    .end annotation
.end field

.field private photoCaption:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_caption"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
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
    .line 36
    new-instance v0, Lcom/cbs/app/view/model/AlbumPhoto$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/AlbumPhoto$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/AlbumPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/AlbumPhoto;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->id:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->createdDate:J

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->albumId:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->type:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->photoCaption:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->title:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepath:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepathThumb:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->k:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->isFlock:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->liveDate:J

    .line 212
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->albumId:J

    return-wide v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->createdDate:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepathThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->id:J

    return-wide v0
.end method

.method public getIsFlock()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->isFlock:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->liveDate:J

    return-wide v0
.end method

.method public getPhotoCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->photoCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->albumId:J

    .line 96
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->createdDate:J

    .line 88
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepath:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setFilepathThumb(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepathThumb:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->id:J

    .line 138
    return-void
.end method

.method public setIsFlock(J)V
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->isFlock:J

    .line 170
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->k:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->liveDate:J

    .line 178
    return-void
.end method

.method public setPhotoCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->photoCaption:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->title:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cbs/app/view/model/AlbumPhoto;->type:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->createdDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->albumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->photoCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->filepathThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->isFlock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Lcom/cbs/app/view/model/AlbumPhoto;->liveDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    return-void
.end method
