.class public Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_seasons"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_sort_order"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sectionId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_default"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getSeasonSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonsDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->c:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplaySeasons(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->a:Z

    .line 35
    return-void
.end method

.method public setSeasonSortOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSeasonsDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSectionId(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->c:J

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSectionMetadata;->d:Ljava/lang/String;

    .line 59
    return-void
.end method
