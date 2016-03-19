.class public Lcom/cbs/app/androiddata/model/rest/SyncbakMvpdLocationEndpointResponse;
.super Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/MVPDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMvpds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/MVPDInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakMvpdLocationEndpointResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public setMvpds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/MVPDInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakMvpdLocationEndpointResponse;->a:Ljava/util/List;

    .line 20
    return-void
.end method
