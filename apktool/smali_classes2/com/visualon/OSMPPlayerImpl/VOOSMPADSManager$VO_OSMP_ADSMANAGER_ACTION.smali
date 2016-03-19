.class public final enum Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_ADSMANAGER_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_BUFEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_BUFSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_CLICK:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_CLOSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_DRAGSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_FORCESTOP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_FULLSCREENOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_FULLSCREENON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_MUTEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_MUTEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_PLAYBACKSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_RESUME:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SEEKEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SEEKS:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SEGMENTSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SKIP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SUBTITLEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_ADSMANAGER_ACTION_SUBTITLEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

.field public static final enum VO_OSMP_ADSMANAGER_ACTION_MAX:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;


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

    .line 78
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_CLICK"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLICK:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 80
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_PLAYBACKSTART"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 82
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 84
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_PAUSE"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 86
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SEEKS"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKS:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 88
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_DRAGSTART"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_DRAGSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 90
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_RESUME"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_RESUME:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 92
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_FORCESTOP"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FORCESTOP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 94
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_FULLSCREENON"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 96
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_FULLSCREENOFF"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 98
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SUBTITLEON"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 100
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SUBTITLEOFF"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 102
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_MUTEON"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 104
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_MUTEOFF"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 105
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SKIP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SKIP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 106
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SEGMENTSTART"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEGMENTSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 107
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_CLOSE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLOSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 109
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_BUFSTART"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 110
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_BUFEND"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 111
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_ADSMANAGER_ACTION_SEEKEND"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 114
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    const-string v1, "VO_OSMP_ADSMANAGER_ACTION_MAX"

    const/16 v2, 0x14

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_OSMP_ADSMANAGER_ACTION_MAX:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    .line 75
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLICK:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKS:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_DRAGSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_RESUME:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FORCESTOP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SKIP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEGMENTSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLOSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_OSMP_ADSMANAGER_ACTION_MAX:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->value:I

    .line 121
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->values()[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->values()[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 133
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->values()[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    move-result-object v1

    aget-object v0, v1, v0

    .line 136
    :goto_1
    return-object v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_OSMP_ADSMANAGER_ACTION_MAX:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->value:I

    return v0
.end method
