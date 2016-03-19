.class Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public displayType:I

.field public displayValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayType:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;-><init>()V

    return-void
.end method
