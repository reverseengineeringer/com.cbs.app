.class public Lcom/cbs/app/androiddata/model/FavoriteShowList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/FavoriteShow;",
            ">;"
        }
    .end annotation
.end field


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
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->a:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getShowList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/FavoriteShow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->a:J

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setShowList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/FavoriteShow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->d:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/FavoriteShowList;->c:Ljava/lang/String;

    .line 39
    return-void
.end method
