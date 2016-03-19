.class Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPChunkInfo;


# instance fields
.field mDuration:J

.field mErrorCode:I

.field mRootUrl:Ljava/lang/String;

.field mStartTime:J

.field mTimeScale:J

.field mType:I

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJJI)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mType:I

    .line 42
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mUrl:Ljava/lang/String;

    .line 44
    iput-wide p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mStartTime:J

    .line 45
    iput-wide p6, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDuration:J

    .line 46
    iput-wide p8, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mTimeScale:J

    .line 47
    iput p10, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorCode:I

    .line 48
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorCode:I

    return v0
.end method

.method public getRootURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mStartTime:J

    return-wide v0
.end method

.method public getTimeScale()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mTimeScale:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mType:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
