.class public Lcom/cbs/app/androiddata/model/rest/SyncbakScheduleEndpointResponse;
.super Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "schedule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakSchedule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getSchedule()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakScheduleEndpointResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setSchedule(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakScheduleEndpointResponse;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
