.class public Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSChunkInfo;


# static fields
.field private static final uSize:I = 0x800


# instance fields
.field private datablock:[B

.field mDuration:J

.field mPeriodSequenceNumber:I

.field mReserved1:I

.field mReserved2:I

.field mRootUrl:Ljava/lang/String;

.field mStartTime:J

.field mTimeScale:J

.field mType:I

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JIJJII)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    .line 63
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    .line 64
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    .line 66
    iput-wide p4, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    .line 67
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    .line 68
    iput-wide p7, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    .line 69
    iput-wide p9, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    .line 70
    iput p11, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved1:I

    .line 71
    iput p12, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved2:I

    .line 72
    return-void
.end method


# virtual methods
.method public Duration()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public PeriodSequenceNumber()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    return v0
.end method

.method public Reserved1()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved1:I

    return v0
.end method

.method public Reserved2()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved2:I

    return v0
.end method

.method public RootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public StartTime()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    return-wide v0
.end method

.method public TimeScale()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    return-wide v0
.end method

.method public Type()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    return v0
.end method

.method public Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/16 v1, 0x800

    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    move v0, v2

    .line 162
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move v0, v2

    .line 137
    :goto_1
    if-ge v0, v1, :cond_4

    .line 138
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_2

    .line 143
    :goto_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move v0, v2

    .line 147
    :goto_3
    if-ge v0, v1, :cond_1

    .line 148
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_3

    move v1, v0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved1:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mReserved2:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method
