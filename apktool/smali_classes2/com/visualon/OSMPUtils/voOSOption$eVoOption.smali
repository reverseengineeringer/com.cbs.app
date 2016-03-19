.class public final enum Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eVoOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSOption$eVoOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoAudioAnimation:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoAudioDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoHLSBitrate:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoLoop:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoNotLoadLibrary:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoSocketType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoThirdLibOp:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoThreadCount:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoCloseCaption:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoColor:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoEffect:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field public static final enum eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoNone"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 39
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoVideoColor"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoColor:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 40
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoVideoRender"

    invoke-direct {v0, v1, v5}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 41
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoVideoDecode"

    invoke-direct {v0, v1, v6}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 42
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoAudioDecode"

    invoke-direct {v0, v1, v7}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 43
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoVideoEffect"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoEffect:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 44
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoVideoCloseCaption"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoCloseCaption:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 45
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoThreadCount"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThreadCount:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 46
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoAudioAnimation"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioAnimation:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 47
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoSocketType"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoSocketType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 48
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoThirdLibOp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThirdLibOp:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 49
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoNotLoadLibrary"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNotLoadLibrary:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 50
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoHLSBitrate"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoHLSBitrate:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 51
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    const-string v1, "eoLoop"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoLoop:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 37
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoColor:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioDecode:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoEffect:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoCloseCaption:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThreadCount:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoAudioAnimation:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoSocketType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoThirdLibOp:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNotLoadLibrary:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoHLSBitrate:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoLoop:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->$VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->$VALUES:[Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-object v0
.end method
