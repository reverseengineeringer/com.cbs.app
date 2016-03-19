.class public Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59e48a8b349cef4dL


# instance fields
.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "firstName"
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gender"
    .end annotation
.end field

.field private isLoggedIn:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isLoggedIn"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lastName"
    .end annotation
.end field

.field private optIn:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "optIn"
    .end annotation
.end field

.field private packageInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cbsPackageInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/registration/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ppid:Ljava/lang/String;

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private touDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "touDate"
    .end annotation
.end field

.field private touVersion:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "touVersion"
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userId"
    .end annotation
.end field

.field private userStatus:Lcom/cbs/app/view/model/registration/UserStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/registration/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->packageInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->ppid:Ljava/lang/String;

    return-object v0
.end method

.method public getTouDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->touDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTouVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->touVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->userId:J

    return-wide v0
.end method

.method public getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->userStatus:Lcom/cbs/app/view/model/registration/UserStatus;

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn:Z

    return v0
.end method

.method public isOptIn()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->optIn:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->success:Z

    return v0
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->firstName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->gender:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->lastName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn:Z

    .line 80
    return-void
.end method

.method public setOptIn(Z)V
    .locals 0

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->optIn:Z

    .line 144
    return-void
.end method

.method public setPackageInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/registration/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->packageInfo:Ljava/util/ArrayList;

    .line 152
    return-void
.end method

.method public setPpid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->ppid:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->success:Z

    .line 72
    return-void
.end method

.method public setTouDate(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->touVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->touDate:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTouVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->touVersion:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->userId:J

    .line 104
    return-void
.end method

.method public setUserStatus(Lcom/cbs/app/view/model/registration/UserStatus;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->userStatus:Lcom/cbs/app/view/model/registration/UserStatus;

    .line 112
    return-void
.end method
