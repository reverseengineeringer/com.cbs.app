.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AssetProperty"
.end annotation


# instance fields
.field m_strKey:Ljava/lang/String;

.field m_strValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strKey:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strValue:Ljava/lang/String;

    .line 35
    return-void
.end method
