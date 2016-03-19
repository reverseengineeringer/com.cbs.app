.class public Lcom/cbs/app/livetv/model/AsyncResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/model/AsyncResult$Error;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private b:Lcom/cbs/app/livetv/model/AsyncResult$Error;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/cbs/app/livetv/model/AsyncResult$Error;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cbs/app/livetv/model/AsyncResult;->a:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/cbs/app/livetv/model/AsyncResult$Error;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/AsyncResult$Error;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/model/AsyncResult$Error;->setCode(I)V

    .line 27
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/cbs/app/livetv/model/AsyncResult$Error;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/AsyncResult$Error;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/model/AsyncResult;->b:Lcom/cbs/app/livetv/model/AsyncResult$Error;

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/model/AsyncResult$Error;->setMessage(Ljava/lang/String;)V

    .line 34
    return-void
.end method
