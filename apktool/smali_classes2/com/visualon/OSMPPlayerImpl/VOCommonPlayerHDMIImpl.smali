.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$1;,
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;
    }
.end annotation


# static fields
.field private static m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "@@@VOCommonPlayerHDMIImpl"

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->TAG:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;

    .line 89
    return-void
.end method

.method static synthetic access$100()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;

    return-object v0
.end method


# virtual methods
.method public enableHDMIDetection(Landroid/content/Context;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mContext:Landroid/content/Context;

    .line 41
    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;-><init>(Landroid/content/Context;)V

    .line 44
    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$HDMIListener;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->setOnHDMIStateChangeListener(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;)V

    .line 51
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->Release()V

    .line 48
    :cond_1
    sput-object v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    goto :goto_0
.end method

.method public getHDMIStatus()Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_UNKNOWN:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_CONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;->VO_OSMP_HDMISTATE_DISCONNECT:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$VO_OSMP_HDMI_CONNECTION_STATUS;

    goto :goto_0
.end method

.method public isHDMIDetectionSupported()Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnHDMIConnectionChangeListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerHDMIImpl;->mListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerHDMI$onHDMIConnectionChangeListener;

    .line 86
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0
.end method
