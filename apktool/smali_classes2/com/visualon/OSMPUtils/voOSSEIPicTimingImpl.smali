.class public Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSEIPicTiming;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCpbDpbDelaysPresentFlag:I

.field private mCpbRemovalDelay:I

.field private mDpbOutputDelay:I

.field private mNumClockTs:I

.field private mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

.field private mPictureStructure:I

.field private mPictureStructurePresentFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "@@@voOSSEIPicTimingImpl"

    sput-object v0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIII[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    .line 49
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    .line 50
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbRemovalDelay:I

    .line 51
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mDpbOutputDelay:I

    .line 52
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    .line 53
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructure:I

    .line 54
    iput p6, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mNumClockTs:I

    .line 55
    iput-object p7, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    .line 56
    return-void
.end method

.method public static parse([I)Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;
    .locals 19

    .prologue
    .line 96
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x33

    if-ge v1, v2, :cond_1

    .line 98
    :cond_0
    sget-object v1, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voOSSEIPicTimingImpl parse failed, data is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 101
    :cond_1
    new-instance v1, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p0, v4

    const/16 v5, 0x9

    aget v5, p0, v5

    const/16 v6, 0xa

    aget v6, p0, v6

    const/16 v7, 0xb

    aget v7, p0, v7

    const/16 v8, 0xc

    aget v8, p0, v8

    const/16 v9, 0xd

    aget v9, p0, v9

    const/16 v10, 0xe

    aget v10, p0, v10

    const/16 v11, 0xf

    aget v11, p0, v11

    const/16 v12, 0x10

    aget v12, p0, v12

    const/16 v13, 0x11

    aget v13, p0, v13

    const/16 v14, 0x12

    aget v14, p0, v14

    const/16 v15, 0x13

    aget v15, p0, v15

    const/16 v16, 0x14

    aget v16, p0, v16

    invoke-direct/range {v1 .. v16}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    .line 105
    new-instance v2, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/16 v3, 0x15

    aget v3, p0, v3

    const/16 v4, 0x16

    aget v4, p0, v4

    const/16 v5, 0x17

    aget v5, p0, v5

    const/16 v6, 0x18

    aget v6, p0, v6

    const/16 v7, 0x19

    aget v7, p0, v7

    const/16 v8, 0x1a

    aget v8, p0, v8

    const/16 v9, 0x1b

    aget v9, p0, v9

    const/16 v10, 0x1c

    aget v10, p0, v10

    const/16 v11, 0x1d

    aget v11, p0, v11

    const/16 v12, 0x1e

    aget v12, p0, v12

    const/16 v13, 0x1f

    aget v13, p0, v13

    const/16 v14, 0x20

    aget v14, p0, v14

    const/16 v15, 0x21

    aget v15, p0, v15

    const/16 v16, 0x22

    aget v16, p0, v16

    const/16 v17, 0x23

    aget v17, p0, v17

    invoke-direct/range {v2 .. v17}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    .line 109
    new-instance v3, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/16 v4, 0x24

    aget v4, p0, v4

    const/16 v5, 0x25

    aget v5, p0, v5

    const/16 v6, 0x26

    aget v6, p0, v6

    const/16 v7, 0x27

    aget v7, p0, v7

    const/16 v8, 0x28

    aget v8, p0, v8

    const/16 v9, 0x29

    aget v9, p0, v9

    const/16 v10, 0x2a

    aget v10, p0, v10

    const/16 v11, 0x2b

    aget v11, p0, v11

    const/16 v12, 0x2c

    aget v12, p0, v12

    const/16 v13, 0x2d

    aget v13, p0, v13

    const/16 v14, 0x2e

    aget v14, p0, v14

    const/16 v15, 0x2f

    aget v15, p0, v15

    const/16 v16, 0x30

    aget v16, p0, v16

    const/16 v17, 0x31

    aget v17, p0, v17

    const/16 v18, 0x32

    aget v18, p0, v18

    invoke-direct/range {v3 .. v18}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;-><init>(IIIIIIIIIIIIIII)V

    .line 113
    const/4 v4, 0x3

    new-array v8, v4, [Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    const/4 v4, 0x0

    aput-object v1, v8, v4

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    .line 114
    new-instance v1, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;-><init>(IIIIII[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStampImpl;

    return-object v0
.end method

.method public getCpbDpbDelaysPresentFlag()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    return v0
.end method

.method public getCpbRemovalDelay()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mCpbRemovalDelay:I

    return v0
.end method

.method public getDpbOutputDelay()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mDpbOutputDelay:I

    return v0
.end method

.method public getNumClockTs()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mNumClockTs:I

    return v0
.end method

.method public getPictureStructure()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructure:I

    return v0
.end method

.method public getPictureStructurePresentFlag()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    return v0
.end method
