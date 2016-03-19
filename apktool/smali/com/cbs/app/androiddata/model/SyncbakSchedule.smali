.class public Lcom/cbs/app/androiddata/model/SyncbakSchedule;
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
            "Lcom/cbs/app/androiddata/model/SyncbakSchedule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "episodeTitle"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "startTime"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/cbs/app/androiddata/model/SyncbakSchedule$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/SyncbakSchedule$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->a:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->b:Ljava/lang/String;

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->c:Ljava/lang/String;

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->d:J

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->e:J

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->d:J

    return-wide v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->e:J

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->d:J

    .line 77
    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->e:J

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SyncbakSchedule;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    return-void
.end method
