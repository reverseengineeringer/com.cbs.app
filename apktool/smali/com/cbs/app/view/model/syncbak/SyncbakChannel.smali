.class public Lcom/cbs/app/view/model/syncbak/SyncbakChannel;
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
            "Lcom/cbs/app/view/model/syncbak/SyncbakChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private hasImage:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hasImage"
    .end annotation
.end field

.field private imageId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "imageId"
    .end annotation
.end field

.field private mediaId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediaId"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private stationId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stationId"
    .end annotation
.end field

.field private statusCode:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "statusCode"
    .end annotation
.end field

.field private statusMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "statusMessage"
    .end annotation
.end field

.field private supportsClosedCaptions:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "supportsClosedCaptions"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusCode:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusMessage:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->mediaId:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->stationId:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->name:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->description:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->hasImage:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->supportsClosedCaptions:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->imageId:I

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->mediaId:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->imageId:I

    return v0
.end method

.method public getMediaId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->mediaId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->stationId:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isHasImage()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->hasImage:Z

    return v0
.end method

.method public isSupportsClosedCaptions()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->supportsClosedCaptions:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->description:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->hasImage:Z

    .line 119
    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->imageId:I

    .line 63
    return-void
.end method

.method public setMediaId(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->mediaId:I

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setStationId(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->stationId:I

    .line 95
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusCode:I

    .line 71
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusMessage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSupportsClosedCaptions(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->supportsClosedCaptions:Z

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->statusMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->mediaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->stationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->hasImage:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->supportsClosedCaptions:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->imageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v1, v2

    .line 143
    goto :goto_1
.end method
