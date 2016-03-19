.class public Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSDVRInfo;


# instance fields
.field mEndTime:J

.field mLiveTime:J

.field mPlayingTime:J

.field mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mStartTime:J

    .line 52
    iput-wide p3, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mEndTime:J

    .line 53
    iput-wide p5, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mPlayingTime:J

    .line 54
    iput-wide p7, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mLiveTime:J

    .line 55
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mEndTime:J

    return-wide v0
.end method

.method public getLiveTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mLiveTime:J

    return-wide v0
.end method

.method public getPlayingTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mPlayingTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;->mStartTime:J

    return-wide v0
.end method
