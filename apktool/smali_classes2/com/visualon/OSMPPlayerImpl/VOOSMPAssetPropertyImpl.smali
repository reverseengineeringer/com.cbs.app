.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAssetPropertyImpl"


# instance fields
.field private m_lstProperty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    .line 47
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 49
    :cond_0
    const-string v1, "@@@VOOSMPAssetPropertyImpl"

    const-string v2, "VOOSMPAssetProperty info is invalid."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_1
    return-void

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 54
    :goto_0
    add-int/lit8 v1, v0, 0x1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    aget-object v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-direct {v2, p0, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public fillAssetsProperty(Lcom/visualon/OSMPDataSource/voOSDataSource;II)V
    .locals 6

    .prologue
    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetPropertyCount(II)I

    move-result v1

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    invoke-virtual {p1, p2, p3, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetPropertyKeyName(III)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1, p2, p3, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetPropertyValue(III)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    new-instance v5, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    invoke-direct {v5, p0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getPropertyCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getPropertyCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strValue:Ljava/lang/String;

    goto :goto_0
.end method
