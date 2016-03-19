.class public Lcom/cbs/app/view/model/AnswerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private answer:Ljava/lang/String;

.field private answerId:I

.field private resultCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/model/AnswerResult;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/cbs/app/view/model/AnswerResult;->answerId:I

    return v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cbs/app/view/model/AnswerResult;->resultCount:I

    return v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/model/AnswerResult;->answer:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAnswerId(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/cbs/app/view/model/AnswerResult;->answerId:I

    .line 24
    return-void
.end method

.method public setResultCount(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/cbs/app/view/model/AnswerResult;->resultCount:I

    .line 32
    return-void
.end method
