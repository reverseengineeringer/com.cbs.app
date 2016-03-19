.class public Lcom/cbs/app/view/model/VideoStreamsEndpoint;
.super Lcom/cbs/app/androiddata/ResponseModel;
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
            "Lcom/cbs/app/view/model/VideoStreamsEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private concurrentStreamCount:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "concurrentStreamCount"
    .end annotation
.end field

.field private contentId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contentId"
    .end annotation
.end field

.field private mediaTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediaTime"
    .end annotation
.end field

.field private overThreshold:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overThreshold"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/cbs/app/view/model/VideoStreamsEndpoint$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/VideoStreamsEndpoint$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->contentId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->concurrentStreamCount:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->mediaTime:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->success:Z

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cbs/app/view/model/VideoStreamsEndpoint$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/VideoStreamsEndpoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getConcurrentStreamCount()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->concurrentStreamCount:J

    return-wide v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->mediaTime:J

    return-wide v0
.end method

.method public isOverThreshold()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->success:Z

    return v0
.end method

.method public setConcurrentStreamCount(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->concurrentStreamCount:J

    .line 47
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->contentId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setMediaTime(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->mediaTime:J

    .line 63
    return-void
.end method

.method public setOverThreshold(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    .line 55
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->success:Z

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v4, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->concurrentStreamCount:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->overThreshold:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget-wide v4, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->mediaTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-boolean v0, p0, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->success:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_1
.end method
