.class public Lcom/cbs/app/service/CBSRequestTypeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 21
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->e:J

    .line 23
    iput-boolean v2, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->f:Z

    .line 25
    iput-boolean v2, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->g:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->h:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/cbs/app/androiddata/ResponseModelListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->e:J

    return-wide v0
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->d:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setListener(Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->c:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 56
    return-void
.end method

.method public setLog(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->h:Z

    .line 88
    return-void
.end method

.method public setStaleOk(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->g:Z

    .line 80
    return-void
.end method

.method public setTtl(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->e:J

    .line 72
    return-void
.end method

.method public setUseCache(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/cbs/app/service/CBSRequestTypeInfo;->f:Z

    .line 96
    return-void
.end method
