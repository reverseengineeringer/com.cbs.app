.class public Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$1;,
        Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSAnalyticsDisplay"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public static parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v1, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;-><init>()V

    .line 68
    invoke-virtual {p0, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 72
    new-instance v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;

    invoke-direct {v2, v0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;-><init>(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$1;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayType:I

    .line 74
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayName:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayValue:Ljava/lang/String;

    .line 83
    iget-object v3, v1, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v3, "@@@voOSAnalyticsDisplay"

    const-string v4, "voOSAnalyticsDisplay type is %x, name = %s, value = %s. Parse position %d %d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v2, v2, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayValue:Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 88
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 44
    const-string v0, ""

    .line 47
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;

    .line 47
    iget-object v0, v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayType(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 35
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;

    .line 38
    iget v0, v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayType:I

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 53
    const-string v0, ""

    .line 56
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;

    .line 56
    iget-object v0, v0, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl$Item;->displayValue:Ljava/lang/String;

    goto :goto_0
.end method
