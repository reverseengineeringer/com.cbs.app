.class public Lcom/cbs/app/view/model/FavoriteShowList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private showList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/cbs/app/view/model/FavoriteShowList;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cbs/app/view/model/FavoriteShowList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShowList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/FavoriteShowList;->showList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/FavoriteShowList;->uniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/cbs/app/view/model/FavoriteShowList;->id:J

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cbs/app/view/model/FavoriteShowList;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setShowList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/FavoriteShowList;->showList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setUniqueName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/FavoriteShowList;->uniqueName:Ljava/lang/String;

    .line 41
    return-void
.end method
