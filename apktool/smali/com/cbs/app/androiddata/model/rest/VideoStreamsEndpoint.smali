.class public Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;
.super Lcom/cbs/app/androiddata/ResponseModel;
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
            "Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contentId"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "concurrentStreamCount"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overThreshold"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "mediaTime"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "errors"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLoggedIn"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->c:Z

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->c:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->a:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->b:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->c:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->d:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->e:Z

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getConcurrentStreamCount()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->b:J

    return-wide v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->d:J

    return-wide v0
.end method

.method public setConcurrentStreamCount(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->b:J

    .line 57
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->f:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIsLoggedIn(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->g:Z

    .line 130
    return-void
.end method

.method public setMediaTime(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->d:J

    .line 73
    return-void
.end method

.method public setOverThreshold(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->c:Z

    .line 65
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->e:Z

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget-wide v4, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->d:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoStreamsEndpoint;->e:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method
