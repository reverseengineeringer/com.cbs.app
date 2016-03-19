.class public final enum Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSIOFailedDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_SERVER_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;


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

    .line 14
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_CONNECT_FAILED"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 17
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_INVALID_RESPONSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 20
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_CLIENT_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 23
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_SERVER_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_SERVER_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 26
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_SERVER_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->$VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->value:I

    .line 33
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 44
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 45
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v1

    aget-object v0, v1, v0

    .line 49
    :goto_1
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "@@@voOSIOFailedDesc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VO_OSMP_CB_EVENT_ID isn\'t match. id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->$VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->value:I

    return v0
.end method
