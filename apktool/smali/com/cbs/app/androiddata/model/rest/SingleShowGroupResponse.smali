.class public Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/cbs/app/androiddata/model/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/cbs/app/androiddata/model/Group;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;->c:Lcom/cbs/app/androiddata/model/Group;

    return-object v0
.end method

.method public getShowGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setGroup(Lcom/cbs/app/androiddata/model/Group;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;->c:Lcom/cbs/app/androiddata/model/Group;

    .line 43
    return-void
.end method

.method public setShowGroups(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;->a:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/SingleShowGroupResponse;->b:Z

    .line 35
    return-void
.end method
