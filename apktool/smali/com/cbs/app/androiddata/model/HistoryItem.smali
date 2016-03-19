.class public Lcom/cbs/app/androiddata/model/HistoryItem;
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
            "Lcom/cbs/app/androiddata/model/HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/cbs/app/androiddata/model/VideoData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/cbs/app/androiddata/model/HistoryItem$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/HistoryItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/HistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->a:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->c:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->d:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->e:Ljava/lang/String;

    .line 93
    const-class v0, Lcom/cbs/app/androiddata/model/VideoData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->f:Lcom/cbs/app/androiddata/model/VideoData;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getCanModel()Lcom/cbs/app/androiddata/model/VideoData;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->f:Lcom/cbs/app/androiddata/model/VideoData;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMedTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->d:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->c:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->a:J

    return-wide v0
.end method

.method public setCanModel(Lcom/cbs/app/androiddata/model/VideoData;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->f:Lcom/cbs/app/androiddata/model/VideoData;

    .line 66
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->e:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMedTime(J)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->d:J

    .line 50
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->c:J

    .line 42
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->a:J

    .line 26
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/HistoryItem;->f:Lcom/cbs/app/androiddata/model/VideoData;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    return-void
.end method
