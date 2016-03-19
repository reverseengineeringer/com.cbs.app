.class public Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mProxyHost:Ljava/lang/String;

.field private mProxyPort:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyHost:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyPort:I

    .line 40
    return-void
.end method


# virtual methods
.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyPort:I

    return v0
.end method

.method public setProxyHost(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyHost:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setProxyPort(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 80
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->mProxyPort:I

    .line 81
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method
