.class public Lcom/visualon/OSMPUtils/voOSBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSBuffer;


# instance fields
.field mBuffer:[B

.field mBufferSize:I

.field mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(JI[B)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mBuffer:[B

    .line 32
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mBufferSize:I

    .line 33
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mTimestamp:J

    .line 34
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mBuffer:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mBufferSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSBufferImpl;->mTimestamp:J

    return-wide v0
.end method
