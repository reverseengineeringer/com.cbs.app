.class public Lcom/cbs/app/view/model/Poll;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private endDate:Ljava/lang/String;

.field private id:I

.field private pollQuestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/Poll;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/cbs/app/view/model/Poll;->id:I

    return v0
.end method

.method public getPollQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cbs/app/view/model/Poll;->pollQuestions:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/Poll;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/view/model/Poll;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/Poll;->endDate:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/cbs/app/view/model/Poll;->id:I

    .line 25
    return-void
.end method

.method public setPollQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/PollQuestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cbs/app/view/model/Poll;->pollQuestions:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/Poll;->startDate:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cbs/app/view/model/Poll;->title:Ljava/lang/String;

    .line 33
    return-void
.end method
