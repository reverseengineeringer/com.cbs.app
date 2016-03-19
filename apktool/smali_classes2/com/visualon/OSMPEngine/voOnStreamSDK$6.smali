.class synthetic Lcom/visualon/OSMPEngine/voOnStreamSDK$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2414
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$6;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$6;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$6;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
