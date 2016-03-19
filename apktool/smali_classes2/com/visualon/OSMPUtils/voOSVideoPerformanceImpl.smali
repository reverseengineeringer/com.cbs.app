.class public Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSVideoPerformance;


# instance fields
.field mAverageDecodeTime:I

.field mAverageRenderTime:I

.field mCPULoad:I

.field mCodecDropNum:I

.field mCodecErrors:[I

.field mCodecErrorsNum:I

.field mCodecTimeNum:I

.field mDecodedNum:I

.field mFrequency:I

.field mJitterNum:I

.field mLastTime:I

.field mMaxFrequency:I

.field mRenderDropNum:I

.field mRenderNum:I

.field mRenderTimeNum:I

.field mSourceDropNum:I

.field mSourceTimeNum:I

.field mTotalCPULoad:I

.field mTotalCodecDropNum:I

.field mTotalDecodedNum:I

.field mTotalPlaybackDuration:I

.field mTotalRenderDropNum:I

.field mTotalRenderNum:I

.field mTotalSourceDropNum:I

.field mWorstDecodeTime:I

.field mWorstRenderTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(IIIIIIIIIII[IIIIIIIIIIIIIII)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    .line 140
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    .line 141
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    .line 142
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    .line 143
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    .line 144
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    .line 145
    iput p7, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    .line 146
    iput p8, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    .line 147
    iput p9, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    .line 148
    iput p10, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    .line 149
    iput p11, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    .line 150
    iput-object p12, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    .line 151
    iput p13, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    .line 152
    iput p14, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    .line 153
    move/from16 v0, p15

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    .line 154
    move/from16 v0, p16

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    .line 155
    move/from16 v0, p17

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    .line 156
    move/from16 v0, p18

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    .line 157
    move/from16 v0, p19

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    .line 158
    move/from16 v0, p20

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    .line 159
    return-void
.end method


# virtual methods
.method public AverageDecodeTime()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    return v0
.end method

.method public AverageRenderTime()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    return v0
.end method

.method public CPULoad()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    return v0
.end method

.method public CodecDropNum()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    return v0
.end method

.method public CodecErrors()[I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    return-object v0
.end method

.method public CodecErrorsNum()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    return v0
.end method

.method public CodecTimeNum()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    return v0
.end method

.method public DecodedNum()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    return v0
.end method

.method public Frequency()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    return v0
.end method

.method public JitterNum()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    return v0
.end method

.method public LastTime()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    return v0
.end method

.method public MaxFrequency()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    return v0
.end method

.method public RenderDropNum()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    return v0
.end method

.method public RenderNum()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    return v0
.end method

.method public RenderTimeNum()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    return v0
.end method

.method public SourceDropNum()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    return v0
.end method

.method public SourceTimeNum()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    return v0
.end method

.method public TotalCPULoad()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    return v0
.end method

.method public TotalCodecDropNum()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCodecDropNum:I

    return v0
.end method

.method public TotalDecodedNum()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalDecodedNum:I

    return v0
.end method

.method public TotalPlaybackDuration()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalPlaybackDuration:I

    return v0
.end method

.method public TotalRenderDropNum()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderDropNum:I

    return v0
.end method

.method public TotalRenderNum()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderNum:I

    return v0
.end method

.method public TotalSourceDropNum()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalSourceDropNum:I

    return v0
.end method

.method public WorstDecodeTime()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    return v0
.end method

.method public WorstRenderTime()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    return v0
.end method

.method public parser(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mLastTime:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceDropNum:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecDropNum:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderDropNum:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mDecodedNum:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderNum:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mSourceTimeNum:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecTimeNum:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mRenderTimeNum:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mJitterNum:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    .line 79
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrorsNum:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCodecErrors:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mCPULoad:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mFrequency:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mMaxFrequency:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstDecodeTime:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mWorstRenderTime:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageDecodeTime:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mAverageRenderTime:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCPULoad:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalPlaybackDuration:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalSourceDropNum:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalCodecDropNum:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderDropNum:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalDecodedNum:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->mTotalRenderNum:I

    .line 98
    return-void
.end method
