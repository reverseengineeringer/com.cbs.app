.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_AD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_AD_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_BUFFERING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_DOMAIN_BLACKLISTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_UNSTARTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

.field public static final enum VO_OSMP_AD_STATUS_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_UNSTARTED"

    invoke-direct {v0, v1, v4, v8}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_UNSTARTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 622
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_STOPPED"

    invoke-direct {v0, v1, v5, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 624
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_PLAYING"

    invoke-direct {v0, v1, v6, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 626
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_PAUSED"

    invoke-direct {v0, v1, v7, v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 628
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_BUFFERING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_BUFFERING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 630
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_DOMAIN_BLACKLISTED"

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DOMAIN_BLACKLISTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 632
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_VIDEO_NOT_AVAILABLE"

    const/4 v2, 0x6

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 634
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_DATA_LOAD_ERROR"

    const/4 v2, 0x7

    const/16 v3, 0x82

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 636
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_AD_LOAD_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_AD_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 639
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    const-string v1, "VO_OSMP_AD_STATUS_MAX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v8}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    .line 617
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_UNSTARTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_BUFFERING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DOMAIN_BLACKLISTED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_AD_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

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
    .line 644
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 645
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->value:I

    .line 646
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 655
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 657
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->getValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 658
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    move-result-object v1

    aget-object v0, v1, v0

    .line 661
    :goto_1
    return-object v0

    .line 655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    const-string v0, "VOCommonPlayerListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VO_OSMP_AD_STATUS isn\'t match. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;
    .locals 1

    .prologue
    .line 617
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->value:I

    return v0
.end method
