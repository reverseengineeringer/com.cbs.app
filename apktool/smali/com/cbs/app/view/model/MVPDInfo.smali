.class public Lcom/cbs/app/view/model/MVPDInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private mvpdIdentifier:Ljava/lang/String;

.field private stationId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMvpdIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/view/model/MVPDInfo;->mvpdIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/cbs/app/view/model/MVPDInfo;->stationId:J

    return-wide v0
.end method

.method public setMvpdIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/view/model/MVPDInfo;->mvpdIdentifier:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setStationId(J)V
    .locals 1

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/cbs/app/view/model/MVPDInfo;->stationId:J

    .line 20
    return-void
.end method
