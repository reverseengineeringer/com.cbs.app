.class public Lcom/visualon/OSMPUtils/voOSDeviceData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mModel:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mRenderType:Ljava/lang/String;

.field private mTextureView:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mModel:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mPlatform:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mRenderType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTextureView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mTextureView:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSDeviceData;->mVersion:Ljava/lang/String;

    .line 34
    return-void
.end method
