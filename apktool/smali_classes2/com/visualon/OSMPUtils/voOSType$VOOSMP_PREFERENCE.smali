.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_PREFERENCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

.field public static final enum VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2019
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_STOP_KEEP_LAST_FRAME"

    invoke-direct {v0, v1, v5, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2021
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME"

    invoke-direct {v0, v1, v3, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2023
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_BA_START_DEFAULT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2025
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_BA_START_FAST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2027
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    const-string v1, "VOOSMP_PREF_MAX"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    .line 2016
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

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
    .line 2032
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2033
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->value:I

    .line 2034
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2043
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2045
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 2050
    :goto_1
    return-object v0

    .line 2043
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2049
    :cond_1
    const-string v0, "@@@voOSType"

    const-string v1, "VOOSMP_PREFERENCE does not match. id = 0x%X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2050
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 1

    .prologue
    .line 2016
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;
    .locals 1

    .prologue
    .line 2016
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 2038
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->value:I

    return v0
.end method
