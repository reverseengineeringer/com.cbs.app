.class public Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;
    }
.end annotation


# static fields
.field public static final messageADEventReceived:I = 0x2

.field public static final messageDurationInformationReceived:I = 0x1

.field public static final messageUrlReceived:I


# instance fields
.field protected context:Landroid/content/Context;

.field protected mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

.field protected mDecType:I

.field protected mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field protected mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    .line 20
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 21
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 22
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mDecType:I

    .line 23
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mSettings:Ljava/util/HashMap;

    .line 83
    return-void
.end method


# virtual methods
.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 32
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->context:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public open()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public setDecType(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mDecType:I

    .line 112
    return-void
.end method

.method public setEventListener(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    .line 102
    return-void
.end method

.method public setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 106
    return-void
.end method

.method public setPlayingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setSettings(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mSettings:Ljava/util/HashMap;

    .line 115
    return-void
.end method

.method public setVOEngine(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 109
    return-void
.end method

.method public uninit()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
