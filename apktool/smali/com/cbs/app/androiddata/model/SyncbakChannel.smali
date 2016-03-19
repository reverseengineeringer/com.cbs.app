.class public Lcom/cbs/app/androiddata/model/SyncbakChannel;
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
            "Lcom/cbs/app/androiddata/model/SyncbakChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "statusCode"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "statusMessage"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediaId"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "imageId"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stationId"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hasImage"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "supportsClosedCaptions"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/cbs/app/androiddata/model/SyncbakChannel$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/SyncbakChannel$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->a:I

    .line 1148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->b:Ljava/lang/String;

    .line 1149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->c:I

    .line 1150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->e:I

    .line 1151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->f:Ljava/lang/String;

    .line 1152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->g:Ljava/lang/String;

    .line 1153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->h:Z

    .line 1154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->i:Z

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->d:I

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 1153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1154
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->c:I

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
    .line 104
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->d:I

    return v0
.end method

.method public getMediaId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->c:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->e:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->a:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->g:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->h:Z

    .line 117
    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->d:I

    .line 61
    return-void
.end method

.method public setMediaId(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->c:I

    .line 85
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStationId(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->e:I

    .line 93
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->a:I

    .line 69
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setSupportsClosedCaptions(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->i:Z

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->i:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakChannel;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method
