.class public Lcom/cbs/app/androiddata/serverrequest/CreateMyShowsListServerRequest;
.super Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;
.source "SourceFile"


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
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
    .line 45
    const-class v0, Lcom/cbs/app/androiddata/model/rest/MyShowEndpointResponse;

    return-object v0
.end method

.method public getPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/CreateMyShowsListServerRequest;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/cbs/app/androiddata/Util;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/CreateMyShowsListServerRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps-api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/CreateMyShowsListServerRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lists/favoriteshows/create.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
