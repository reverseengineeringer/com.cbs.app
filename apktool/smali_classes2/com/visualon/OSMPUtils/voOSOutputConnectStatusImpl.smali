.class public Lcom/visualon/OSMPUtils/voOSOutputConnectStatusImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSOutputConnectStatus;


# instance fields
.field mConnect:Z

.field mType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSOutputConnectStatusImpl;->mType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 16
    iput-boolean p2, p0, Lcom/visualon/OSMPUtils/voOSOutputConnectStatusImpl;->mConnect:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getOutputConnectType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
