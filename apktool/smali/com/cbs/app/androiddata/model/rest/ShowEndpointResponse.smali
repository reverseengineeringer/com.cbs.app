.class public Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Lcom/cbs/app/androiddata/model/rest/ShowHolder;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show"
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cbs/app/androiddata/model/rest/ShowConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowAssets()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public getShowConfig()Lcom/cbs/app/androiddata/model/rest/ShowConfig;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->c:Lcom/cbs/app/androiddata/model/rest/ShowConfig;

    return-object v0
.end method

.method public getShowHolder()Lcom/cbs/app/androiddata/model/rest/ShowHolder;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->a:Lcom/cbs/app/androiddata/model/rest/ShowHolder;

    return-object v0
.end method

.method public setShowAssets(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->b:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method public setShowConfig(Lcom/cbs/app/androiddata/model/rest/ShowConfig;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->c:Lcom/cbs/app/androiddata/model/rest/ShowConfig;

    .line 43
    return-void
.end method

.method public setShowHolder(Lcom/cbs/app/androiddata/model/rest/ShowHolder;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowEndpointResponse;->a:Lcom/cbs/app/androiddata/model/rest/ShowHolder;

    .line 27
    return-void
.end method
