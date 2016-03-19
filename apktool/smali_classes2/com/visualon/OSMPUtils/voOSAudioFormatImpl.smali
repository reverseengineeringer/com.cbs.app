.class public Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSAudioFormat;


# instance fields
.field private mChannels:I

.field private mSampleBits:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleRate:I

    .line 41
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mChannels:I

    .line 42
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleBits:I

    .line 43
    return-void
.end method


# virtual methods
.method public Channels()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mChannels:I

    return v0
.end method

.method public SampleBits()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleBits:I

    return v0
.end method

.method public SampleRate()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleRate:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleRate:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mChannels:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;->mSampleBits:I

    .line 61
    const/4 v0, 0x1

    return v0
.end method
