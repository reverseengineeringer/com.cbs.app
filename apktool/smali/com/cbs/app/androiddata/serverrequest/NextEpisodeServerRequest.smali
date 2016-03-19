.class public Lcom/cbs/app/androiddata/serverrequest/NextEpisodeServerRequest;
.super Lcom/cbs/app/androiddata/serverrequest/BaseServerRequest;
.source "SourceFile"


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "GET"

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
    .line 43
    const-class v0, Lcom/cbs/app/androiddata/model/rest/NextEpisodeResponse;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/NextEpisodeServerRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps-api/v3.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/serverrequest/NextEpisodeServerRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shows/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/NextEpisodeServerRequest;->b:Ljava/util/HashMap;

    const-string v2, "showId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/autoplay/nextEpisode.json?contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/cbs/app/androiddata/serverrequest/NextEpisodeServerRequest;->b:Ljava/util/HashMap;

    const-string v2, "contentId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
