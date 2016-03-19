.class public Lcom/visualon/OSMPUtils/voOSSuspendInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field APILevel:I

.field bPaused:Z

.field bSuspend:Z

.field suspendTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    .line 13
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    .line 16
    return-void
.end method


# virtual methods
.method public getAPILevel()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    return v0
.end method

.method public getSuspendTimeStamp()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    return v0
.end method

.method public setAPILevel(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    .line 24
    return-void
.end method

.method public setPausedStatus(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    .line 40
    return-void
.end method

.method public setSuspendStatus(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    .line 32
    return-void
.end method

.method public setSuspendTimeStamp(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    .line 47
    return-void
.end method
