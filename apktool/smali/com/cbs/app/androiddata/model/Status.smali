.class public Lcom/cbs/app/androiddata/model/Status;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upgradeUrl"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upgradeAvailable"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "active"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "versionName"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "versionNote"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "releaseDate"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deployedToStore"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Status;->h:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Status;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Status;->g:J

    return-wide v0
.end method

.method public getUpgradeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Status;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Status;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Status;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/Status;->d:Z

    .line 67
    return-void
.end method

.method public setDeployedToStore(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/Status;->i:Z

    .line 107
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Status;->h:J

    .line 99
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Status;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setReleaseDate(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Status;->g:J

    .line 91
    return-void
.end method

.method public setUpgradeAvailable(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/Status;->c:Z

    .line 59
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Status;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Status;->e:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVersionNote(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Status;->f:Ljava/lang/String;

    .line 83
    return-void
.end method
