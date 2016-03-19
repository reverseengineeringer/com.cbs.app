.class public Lcom/cbs/app/view/model/PollResults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private answerResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AnswerResult;",
            ">;"
        }
    .end annotation
.end field

.field private pollTitle:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private questionId:I

.field private totalAnswers:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswerResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AnswerResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/view/model/PollResults;->answerResults:Ljava/util/List;

    return-object v0
.end method

.method public getPollTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/PollResults;->pollTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/PollResults;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/cbs/app/view/model/PollResults;->questionId:I

    return v0
.end method

.method public getTotalAnswers()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/cbs/app/view/model/PollResults;->totalAnswers:I

    return v0
.end method

.method public setAnswerResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AnswerResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/view/model/PollResults;->answerResults:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setPollTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/PollResults;->pollTitle:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/PollResults;->question:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setQuestionId(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/cbs/app/view/model/PollResults;->questionId:I

    .line 25
    return-void
.end method

.method public setTotalAnswers(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/cbs/app/view/model/PollResults;->totalAnswers:I

    .line 33
    return-void
.end method
