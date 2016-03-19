.class public Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDRMData:[B

.field private mDRMDataHandle:J

.field private mThirdPartyFuncSet:I


# direct methods
.method public constructor <init>(J[B)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:I

    .line 26
    iput-object p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    .line 27
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    .line 28
    return-void
.end method


# virtual methods
.method public getDRMInitData()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    return-object v0
.end method

.method public getDRMInitDataHandle()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMDataHandle:J

    return-wide v0
.end method

.method public getDRMInitSize()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mDRMData:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThirdPartyFunctionSet()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:I

    return v0
.end method

.method public setThirdPartyFunctionSet(I)Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->mThirdPartyFuncSet:I

    .line 44
    return-object p0
.end method
