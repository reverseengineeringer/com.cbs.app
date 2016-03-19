.class public Lcom/cbs/app/view/model/PollQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private pollQuestionAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestionAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private question:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/cbs/app/view/model/PollQuestion;->id:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/view/model/PollQuestion;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPollQuestionAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestionAnswer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/PollQuestion;->pollQuestionAnswers:Ljava/util/List;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/model/PollQuestion;->question:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/cbs/app/view/model/PollQuestion;->id:I

    .line 24
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cbs/app/view/model/PollQuestion;->imageUrl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setPollQuestionAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestionAnswer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/PollQuestion;->pollQuestionAnswers:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/model/PollQuestion;->question:Ljava/lang/String;

    .line 40
    return-void
.end method
