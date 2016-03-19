.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

.field public static final enum VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1778
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN"

    const/high16 v2, 0x10000000

    invoke-direct {v0, v1, v4, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1779
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED"

    const v2, 0x10000001

    invoke-direct {v0, v1, v5, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1780
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED"

    const v2, 0x10000002

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1781
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND"

    const v2, 0x10000003

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1782
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED"

    const v2, 0x10000004

    invoke-direct {v0, v1, v8, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1783
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED"

    const/4 v2, 0x5

    const v3, 0x10000005

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1784
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO"

    const/4 v2, 0x6

    const/high16 v3, 0x20000000

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1786
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    const-string v1, "VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX"

    const/4 v2, 0x7

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    .line 1776
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_BEGIN:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_SOCKET_CONNECTED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_PREPARED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_REQUEST_SEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_RECVED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_HTTP_RESPONSE_ANALYSED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

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
    .line 1791
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1792
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->value:I

    .line 1793
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 2

    .prologue
    .line 1802
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1804
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 1805
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1808
    :goto_1
    return-object v0

    .line 1802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1808
    :cond_1
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 1776
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 1776
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1797
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->value:I

    return v0
.end method
