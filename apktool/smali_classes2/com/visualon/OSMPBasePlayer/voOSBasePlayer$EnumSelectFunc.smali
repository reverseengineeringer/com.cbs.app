.class final enum Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnumSelectFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

.field public static final enum SelectProgram:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

.field public static final enum SelectStream:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

.field public static final enum SelectSubtitleLanguage:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

.field public static final enum SelectTrack:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1203
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    const-string v1, "SelectProgram"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectProgram:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    .line 1204
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    const-string v1, "SelectStream"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectStream:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    .line 1205
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    const-string v1, "SelectTrack"

    invoke-direct {v0, v1, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectTrack:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    .line 1206
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    const-string v1, "SelectSubtitleLanguage"

    invoke-direct {v0, v1, v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectSubtitleLanguage:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    .line 1202
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectProgram:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectStream:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectTrack:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectSubtitleLanguage:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

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
    .line 1202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;
    .locals 1

    .prologue
    .line 1202
    const-class v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;
    .locals 1

    .prologue
    .line 1202
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->$VALUES:[Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    invoke-virtual {v0}, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    return-object v0
.end method
