.class public Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;
.super Lcom/visualon/OSMPUtils/voOSBufferImpl;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSPCMBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voOSBufferImpl;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(JI[B)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voOSBufferImpl;-><init>(JI[B)V

    .line 29
    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mTimestamp:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mBufferSize:I

    .line 37
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mBufferSize:I

    if-lez v0, :cond_1

    .line 38
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mBuffer:[B

    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->mBuffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 42
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
