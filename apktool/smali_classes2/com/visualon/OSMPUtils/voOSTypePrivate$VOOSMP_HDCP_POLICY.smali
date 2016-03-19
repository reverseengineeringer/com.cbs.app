.class public final enum Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSTypePrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_HDCP_POLICY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

.field public static final enum VOOSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 125
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v1, "VOOSMP_HDCP_NO_CHECK"

    invoke-direct {v0, v1, v6, v3}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 127
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v1, "VOOSMP_HDCP_NON_COMPLIANT_DOWNRES"

    invoke-direct {v0, v1, v3, v4}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 129
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v1, "VOOSMP_HDCP_NON_COMPLIANT_BLOCK"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 131
    new-instance v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    const-string v1, "VOOSMP_HDCP_MAX"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v5, v2}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NO_CHECK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_DOWNRES:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_NON_COMPLIANT_BLOCK:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    aput-object v1, v0, v5

    sput-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->value:I

    .line 138
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 149
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 150
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    move-result-object v1

    aget-object v0, v1, v0

    .line 152
    :goto_1
    return-object v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->VOOSMP_HDCP_MAX:Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->$VALUES:[Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOOSMP_HDCP_POLICY;->value:I

    return v0
.end method
