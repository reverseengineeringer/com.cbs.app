.class public Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x522622a23c0b0f4fL


# instance fields
.field private availableSeasons:Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "video_available_season"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showId"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableSeasons()Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->availableSeasons:Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->showId:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->success:Z

    return v0
.end method

.method public setAvailableSeasons(Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->availableSeasons:Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityData;

    .line 49
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->showId:J

    .line 33
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityResponse;->success:Z

    .line 41
    return-void
.end method
