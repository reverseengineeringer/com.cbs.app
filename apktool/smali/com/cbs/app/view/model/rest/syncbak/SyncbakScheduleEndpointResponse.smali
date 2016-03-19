.class public Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;
.super Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private schedule:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "schedule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;-><init>()V

    .line 22
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
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;->schedule:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setSchedule(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;->schedule:Ljava/util/ArrayList;

    .line 30
    return-void
.end method
