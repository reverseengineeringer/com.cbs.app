.class public Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLoggedIn"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lastName"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "firstName"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gender"
    .end annotation
.end field

.field private f:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "optIn"
    .end annotation
.end field

.field private g:Lcom/cbs/app/androiddata/model/rest/UserStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userStatus"
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cbsPackageInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userId"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "touVersion"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "touDate"
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTouDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTouVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->i:J

    return-wide v0
.end method

.method public getUserStatus()Lcom/cbs/app/androiddata/model/rest/UserStatus;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->g:Lcom/cbs/app/androiddata/model/rest/UserStatus;

    return-object v0
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->d:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->e:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->c:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->b:Z

    .line 77
    return-void
.end method

.method public setOptIn(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->f:Z

    .line 141
    return-void
.end method

.method public setPackageInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->h:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method public setPpid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->l:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->a:Z

    .line 69
    return-void
.end method

.method public setTouDate(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->k:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTouVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->j:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->i:J

    .line 101
    return-void
.end method

.method public setUserStatus(Lcom/cbs/app/androiddata/model/rest/UserStatus;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AuthStatusEndpointResponse;->g:Lcom/cbs/app/androiddata/model/rest/UserStatus;

    .line 109
    return-void
.end method
