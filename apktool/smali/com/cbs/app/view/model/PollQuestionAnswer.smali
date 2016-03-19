.class public Lcom/cbs/app/view/model/PollQuestionAnswer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private answer:Ljava/lang/String;

.field private id:I

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->id:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->answer:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->id:I

    .line 21
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/model/PollQuestionAnswer;->imageUrl:Ljava/lang/String;

    .line 37
    return-void
.end method
