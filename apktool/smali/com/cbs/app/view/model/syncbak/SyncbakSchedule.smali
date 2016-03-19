.class public Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;
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
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
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

.field private duration:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private episodeTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "episodeTitle"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "startTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->description:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->episodeTitle:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->duration:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->startTime:J

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->duration:J

    return-wide v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->episodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->startTime:J

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->description:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->duration:J

    .line 79
    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->episodeTitle:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->startTime:J

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->episodeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    return-void
.end method
