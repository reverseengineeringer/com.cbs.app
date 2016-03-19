.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_PREFERENCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_NO_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_NO_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

.field public static final enum VO_OSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1561
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_STOP_KEEP_LAST_FRAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1563
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_NO_STOP_KEEP_LAST_FRAME"

    invoke-direct {v0, v1, v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1565
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_SEEK_PRECISE"

    invoke-direct {v0, v1, v5, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1567
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_NO_SEEK_PRECISE"

    invoke-direct {v0, v1, v6, v7}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1569
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_NO_SELECT_AUDIO_SWITCH_IMMEDIATELY"

    invoke-direct {v0, v1, v7, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1571
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_SELECT_AUDIO_SWITCH_IMMEDIATELY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1573
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_BA_START_DEFAULT"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1575
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_BA_START_FAST"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1577
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const-string v1, "VO_OSMP_PREF_MAX"

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    .line 1558
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    const/4 v1, 0x0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SEEK_PRECISE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_NO_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_SELECT_AUDIO_SWITCH_IMMEDIATELY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

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
    .line 1582
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1583
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->value:I

    .line 1584
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1593
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1595
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->getValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 1596
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1600
    :goto_1
    return-object v0

    .line 1593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1599
    :cond_1
    const-string v0, "@@@VOOSMPType"

    const-string v2, "VO_OSMP_PREFERENCE does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->VO_OSMP_PREF_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;
    .locals 1

    .prologue
    .line 1558
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;
    .locals 1

    .prologue
    .line 1558
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1588
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->value:I

    return v0
.end method
