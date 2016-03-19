.class public Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showId"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private c:Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_available_season"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableSeasons()Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;->c:Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;->a:J

    return-wide v0
.end method

.method public setAvailableSeasons(Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;->c:Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityData;

    .line 43
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;->a:J

    .line 27
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowSeasonAvailabilityResponse;->b:Z

    .line 35
    return-void
.end method
