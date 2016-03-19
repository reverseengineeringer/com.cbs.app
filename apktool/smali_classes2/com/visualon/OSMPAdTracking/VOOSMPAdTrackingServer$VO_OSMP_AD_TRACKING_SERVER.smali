.class public final enum Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_TRACKING_SERVER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_COMSCORE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_COMSCORE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_CONVIVA:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_DATAWARE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_DOUBLECLICK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_NIELSEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_NIELSEN_DPR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_NIELSEN_MTVR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_OMNITURE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_OMNITURE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

.field public static final enum VO_OSMP_AD_TRACKING_OMNITURE_HB:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;


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

    .line 37
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_OMNITURE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 38
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_NIELSEN"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 39
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_COMSCORE"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_COMSCORE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 40
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_DATAWARE"

    invoke-direct {v0, v1, v7, v7}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 41
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_DOUBLECLICK"

    invoke-direct {v0, v1, v8, v8}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DOUBLECLICK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 42
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_CONVIVA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_CONVIVA:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 43
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_NIELSEN_MTVR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_MTVR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 44
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_NIELSEN_DPR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_DPR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 45
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 46
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_OMNITURE_2"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 47
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_DATAWARE_2"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 48
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_COMSCORE_2"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_COMSCORE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 49
    new-instance v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v1, "VO_OSMP_AD_TRACKING_OMNITURE_HB"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE_HB:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_COMSCORE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v1, v0, v7

    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DOUBLECLICK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_CONVIVA:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_MTVR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_DPR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_COMSCORE_2:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE_HB:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->$VALUES:[Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->value:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->$VALUES:[Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->value:I

    return v0
.end method
