.class Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPBuffer;


# instance fields
.field protected mBuffer:[B

.field protected mBufferSize:I

.field protected mTimestamp:J


# direct methods
.method public constructor <init>(JI[B)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mTimestamp:J

    .line 14
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBufferSize:I

    .line 15
    iput-object p4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBuffer:[B

    .line 16
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBuffer:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mBufferSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPBufferImpl;->mTimestamp:J

    return-wide v0
.end method
