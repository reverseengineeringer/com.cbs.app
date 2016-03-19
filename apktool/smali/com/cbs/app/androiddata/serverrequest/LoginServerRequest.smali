.class public Lcom/cbs/app/androiddata/serverrequest/LoginServerRequest;
.super Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ServerRequest;


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "POST"

    return-object v0
.end method

.method public getMappingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lcom/cbs/app/androiddata/model/rest/AuthEndpointResponse;

    return-object v0
.end method

.method public getPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/LoginServerRequest;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/cbs/app/androiddata/Util;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/LoginServerRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps-api/v2.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/LoginServerRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/auth/login.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
