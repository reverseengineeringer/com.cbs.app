.class public Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "section_type"
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/SectionItem;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_seasons"
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "layout_type"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_sort_order"
    .end annotation
.end field

.field private j:J

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasons_default"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->j:J

    return-wide v0
.end method

.method public getLayoutType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonsDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonsSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionItems()Lcom/cbs/app/androiddata/model/SectionItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->b:Lcom/cbs/app/androiddata/model/SectionItem;

    return-object v0
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplaySeasons(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->f:Z

    .line 86
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->j:J

    .line 118
    return-void
.end method

.method public setLayoutType(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->h:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSeasonsDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->k:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSeasonsSortOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->i:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSectionItems(Lcom/cbs/app/androiddata/model/SectionItem;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->b:Lcom/cbs/app/androiddata/model/SectionItem;

    .line 54
    return-void
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSectionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->d:Z

    .line 70
    return-void
.end method

.method public setViewingWindow(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoConfigSectionResponse;->g:Z

    .line 94
    return-void
.end method
