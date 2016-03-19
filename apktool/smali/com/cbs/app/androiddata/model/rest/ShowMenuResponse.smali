.class public Lcom/cbs/app/androiddata/model/rest/ShowMenuResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowMenu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowMenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowMenuResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public setShowMenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowMenuResponse;->a:Ljava/util/List;

    .line 22
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowMenuResponse;->b:Z

    .line 30
    return-void
.end method
