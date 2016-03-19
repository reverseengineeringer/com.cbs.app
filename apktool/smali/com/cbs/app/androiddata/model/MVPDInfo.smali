.class public Lcom/cbs/app/androiddata/model/MVPDInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMvpdIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/MVPDInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/MVPDInfo;->a:J

    return-wide v0
.end method

.method public setMvpdIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/MVPDInfo;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setStationId(J)V
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/MVPDInfo;->a:J

    .line 21
    return-void
.end method
