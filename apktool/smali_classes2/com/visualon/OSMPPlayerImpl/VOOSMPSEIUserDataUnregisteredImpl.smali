.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIUserDataUnregistered;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "@@@VOOSMPSEIUserDataUnregisteredImpl"

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    return-void
.end method


# virtual methods
.method public getDataBuffer()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getDataBuffer()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getFieldCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFieldLength(I)I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getFieldLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public setData(Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    .line 57
    return-void
.end method
