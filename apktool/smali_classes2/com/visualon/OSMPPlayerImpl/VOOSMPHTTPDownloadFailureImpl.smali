.class Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure;


# instance fields
.field private mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field private mResponse:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 28
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 35
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getReason()Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mReason:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
