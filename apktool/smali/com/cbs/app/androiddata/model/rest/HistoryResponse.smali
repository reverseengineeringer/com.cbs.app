.class public Lcom/cbs/app/androiddata/model/rest/HistoryResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/HistoryItem;",
            ">;"
        }
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
.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/HistoryResponse;->a:I

    return v0
.end method

.method public getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/HistoryResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/HistoryResponse;->a:I

    .line 25
    return-void
.end method

.method public setHistory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/HistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/HistoryResponse;->c:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/HistoryResponse;->b:Z

    .line 33
    return-void
.end method
