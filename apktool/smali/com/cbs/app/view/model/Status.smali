.class public Lcom/cbs/app/view/model/Status;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64665ff5dbc452eeL


# instance fields
.field private deployedToStore:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deployedToStore"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isActive:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "active"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation
.end field

.field private releaseDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "releaseDate"
    .end annotation
.end field

.field private upgradeAvailable:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upgradeAvailable"
    .end annotation
.end field

.field private upgradeUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upgradeUrl"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "versionName"
    .end annotation
.end field

.field private versionNote:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "versionNote"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/cbs/app/view/model/Status;->id:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cbs/app/view/model/Status;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/cbs/app/view/model/Status;->releaseDate:J

    return-wide v0
.end method

.method public getUpgradeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cbs/app/view/model/Status;->upgradeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/model/Status;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/model/Status;->versionNote:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/cbs/app/view/model/Status;->isActive:Z

    return v0
.end method

.method public isDeployedToStore()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/cbs/app/view/model/Status;->deployedToStore:Z

    return v0
.end method

.method public isUpgradeAvailable()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/cbs/app/view/model/Status;->upgradeAvailable:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/cbs/app/view/model/Status;->isActive:Z

    .line 94
    return-void
.end method

.method public setDeployedToStore(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/cbs/app/view/model/Status;->deployedToStore:Z

    .line 134
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/cbs/app/view/model/Status;->id:J

    .line 126
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cbs/app/view/model/Status;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setReleaseDate(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/cbs/app/view/model/Status;->releaseDate:J

    .line 118
    return-void
.end method

.method public setUpgradeAvailable(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/cbs/app/view/model/Status;->upgradeAvailable:Z

    .line 86
    return-void
.end method

.method public setUpgradeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cbs/app/view/model/Status;->upgradeUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cbs/app/view/model/Status;->versionName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVersionNote(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cbs/app/view/model/Status;->versionNote:Ljava/lang/String;

    .line 110
    return-void
.end method
