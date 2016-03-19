.class public Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCodec:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

.field mEnable:Z


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->mCodec:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    .line 18
    iput-boolean p2, p0, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->mEnable:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getCodec()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->mCodec:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->mEnable:Z

    return v0
.end method
