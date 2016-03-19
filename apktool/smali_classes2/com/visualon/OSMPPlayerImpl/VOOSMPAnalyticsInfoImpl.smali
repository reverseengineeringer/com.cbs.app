.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;


# instance fields
.field private mAverageDecodeTime:I

.field private mAverageRenderTime:I

.field private mCPULoad:I

.field private mCodecDropNum:I

.field private mCodecErrors:[I

.field private mCodecErrorsNum:I

.field private mCodecTimeNum:I

.field private mDecodedNum:I

.field private mFrequency:I

.field private mJitterNum:I

.field private mLastTime:I

.field private mMaxFrequency:I

.field private mRenderDropNum:I

.field private mRenderNum:I

.field private mRenderTimeNum:I

.field private mSourceDropNum:I

.field private mSourceTimeNum:I

.field private mTotalCPULoad:I

.field private mWorstDecodeTime:I

.field private mWorstRenderTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    .line 46
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    .line 47
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    .line 48
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    .line 49
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    .line 50
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    .line 51
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    .line 52
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    .line 53
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    .line 54
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    .line 55
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    .line 57
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    .line 58
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    .line 59
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    .line 60
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    .line 61
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    .line 62
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    .line 63
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    .line 64
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    .line 65
    return-void
.end method


# virtual methods
.method public getAverageDecodeTime()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    return v0
.end method

.method public getAverageRenderTime()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    return v0
.end method

.method public getCPULoad()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    return v0
.end method

.method public getCodecDropNum()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    return v0
.end method

.method public getCodecErrors()[I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    return-object v0
.end method

.method public getCodecErrorsNum()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    return v0
.end method

.method public getCodecTimeNum()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    return v0
.end method

.method public getDecodedNum()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    return v0
.end method

.method public getJitterNum()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    return v0
.end method

.method public getLastTime()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    return v0
.end method

.method public getMaxFrequency()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    return v0
.end method

.method public getRenderDropNum()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    return v0
.end method

.method public getRenderNum()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    return v0
.end method

.method public getRenderTimeNum()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    return v0
.end method

.method public getSourceDropNum()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    return v0
.end method

.method public getSourceTimeNum()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    return v0
.end method

.method public getTotalCPULoad()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    return v0
.end method

.method public getWorstDecodeTime()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    return v0
.end method

.method public getWorstRenderTime()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    return v0
.end method

.method public setAverageDecodeTime(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageDecodeTime:I

    .line 329
    return-void
.end method

.method public setAverageRenderTime(I)V
    .locals 0

    .prologue
    .line 336
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mAverageRenderTime:I

    .line 337
    return-void
.end method

.method public setCPULoad(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCPULoad:I

    .line 289
    return-void
.end method

.method public setCodecDropNum(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecDropNum:I

    .line 209
    return-void
.end method

.method public setCodecErrors([I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrors:[I

    .line 281
    return-void
.end method

.method public setCodecErrorsNum(I)V
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecErrorsNum:I

    .line 273
    return-void
.end method

.method public setCodecTimeNum(I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mCodecTimeNum:I

    .line 249
    return-void
.end method

.method public setDecodedNum(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mDecodedNum:I

    .line 225
    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    .prologue
    .line 296
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mFrequency:I

    .line 297
    return-void
.end method

.method public setJitterNum(I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mJitterNum:I

    .line 265
    return-void
.end method

.method public setLastTime(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mLastTime:I

    .line 193
    return-void
.end method

.method public setMaxFrequency(I)V
    .locals 0

    .prologue
    .line 304
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mMaxFrequency:I

    .line 305
    return-void
.end method

.method public setRenderDropNum(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderDropNum:I

    .line 217
    return-void
.end method

.method public setRenderNum(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderNum:I

    .line 233
    return-void
.end method

.method public setRenderTimeNum(I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mRenderTimeNum:I

    .line 257
    return-void
.end method

.method public setSourceDropNum(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceDropNum:I

    .line 201
    return-void
.end method

.method public setSourceTimeNum(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mSourceTimeNum:I

    .line 241
    return-void
.end method

.method public setTotalCPULoad(I)V
    .locals 0

    .prologue
    .line 344
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mTotalCPULoad:I

    .line 345
    return-void
.end method

.method public setWorstDecodeTime(I)V
    .locals 0

    .prologue
    .line 312
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstDecodeTime:I

    .line 313
    return-void
.end method

.method public setWorstRenderTime(I)V
    .locals 0

    .prologue
    .line 320
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->mWorstRenderTime:I

    .line 321
    return-void
.end method
