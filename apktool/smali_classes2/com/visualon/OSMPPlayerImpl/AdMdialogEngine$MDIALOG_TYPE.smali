.class public final enum Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MDIALOG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

.field public static final enum MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

.field public static final enum MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    const-string v1, "MDIALOG_LIVE"

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    const-string v1, "MDIALOG_VOD"

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    return-object v0
.end method
