.class public Lcom/cbs/app/androiddata/model/Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Group;->a:J

    return-wide v0
.end method

.method public getPlatformType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Group;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getShowGroupItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Group;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Group;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Group;->a:J

    .line 23
    return-void
.end method

.method public setPlatformType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Group;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setShowGroupItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Group;->c:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Group;->d:Ljava/lang/String;

    .line 47
    return-void
.end method
