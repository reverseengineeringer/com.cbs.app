.class public Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sectionIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "videoSectionMetadata"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "videoConfigURL"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "section_display_seasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->a:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public getNumFound()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->b:J

    return-wide v0
.end method

.method public getSectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectiondDisplaySeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->f:Ljava/util/List;

    return-object v0
.end method

.method public getVideoConfigURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->g:Ljava/util/List;

    return-object v0
.end method

.method public getVideoSectionMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->d:Ljava/util/List;

    return-object v0
.end method

.method public setNumFound(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->b:J

    .line 57
    return-void
.end method

.method public setSectionIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->a:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setSectiondDisplaySeasons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->f:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->c:Z

    .line 65
    return-void
.end method

.method public setVideoConfigURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setVideoGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->g:Ljava/util/List;

    .line 97
    return-void
.end method

.method public setVideoSectionMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigResponse;->d:Ljava/util/List;

    .line 73
    return-void
.end method
