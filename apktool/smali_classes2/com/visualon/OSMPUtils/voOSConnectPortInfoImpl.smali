.class public Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSConnectPortInfo;


# instance fields
.field mAudioConnectPortIndex:I

.field mVideoConnectPortIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mAudioConnectPortIndex:I

    .line 12
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mVideoConnectPortIndex:I

    .line 13
    return-void
.end method


# virtual methods
.method public AudioConnectPort()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mAudioConnectPortIndex:I

    return v0
.end method

.method public VideoConnectPort()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mVideoConnectPortIndex:I

    return v0
.end method
