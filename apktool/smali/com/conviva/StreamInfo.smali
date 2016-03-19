.class public Lcom/conviva/StreamInfo;
.super Ljava/lang/Object;


# instance fields
.field private _bitrateKbps:I

.field private _cdnName:Ljava/lang/String;

.field private _resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/conviva/StreamInfo;->_bitrateKbps:I

    iput-object v1, p0, Lcom/conviva/StreamInfo;->_resource:Ljava/lang/String;

    iput-object v1, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    iput p1, p0, Lcom/conviva/StreamInfo;->_bitrateKbps:I

    iput-object p2, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    iget-object v0, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "OTHER"

    iput-object v0, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/conviva/StreamInfo;->_resource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lcom/conviva/StreamInfo;)Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/conviva/StreamInfo;->_bitrateKbps:I

    invoke-virtual {p1}, Lcom/conviva/StreamInfo;->getBitrateKbps()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/conviva/StreamInfo;->_resource:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/conviva/StreamInfo;->getResource()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/conviva/StreamInfo;->getCdnName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitrateKbps()I
    .locals 1

    iget v0, p0, Lcom/conviva/StreamInfo;->_bitrateKbps:I

    return v0
.end method

.method public getCdnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/conviva/StreamInfo;->_cdnName:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/conviva/StreamInfo;->_resource:Ljava/lang/String;

    return-object v0
.end method
