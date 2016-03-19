.class public Lcom/cbs/app/androiddata/model/SectionItem;
.super Ljava/lang/Object;
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
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SectionItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SectionItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SectionItem;->b:J

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SectionItem;->a:Ljava/util/List;

    return-object v0
.end method

.method public getResultSize()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/SectionItem;->d:J

    return-wide v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SectionItem;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SectionItem;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setItemCount(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/SectionItem;->b:J

    .line 36
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SectionItem;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setResultSize(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/SectionItem;->d:J

    .line 52
    return-void
.end method
