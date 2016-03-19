.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field public static final enum VO_OSMP_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field public static final enum VO_OSMP_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field public static final enum VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field public static final enum VO_OSMP_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

.field public static final enum VO_OSMP_HTTP_SERVER_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const-string v1, "VO_OSMP_HTTP_CONNECT_FAILED"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 26
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const-string v1, "VO_OSMP_HTTP_INVALID_RESPONSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 29
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const-string v1, "VO_OSMP_HTTP_CLIENT_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 32
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const-string v1, "VO_OSMP_HTTP_SERVER_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_SERVER_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 35
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    const-string v1, "VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_SERVER_ERROR:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 52
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->values()[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 53
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->values()[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    move-result-object v1

    aget-object v0, v1, v0

    .line 56
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "VOCommonPlayerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON_MAX:Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->value:I

    return v0
.end method
