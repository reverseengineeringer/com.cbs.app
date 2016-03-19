.class public Lcom/cbs/app/androiddata/DataManagerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->i:Z

    .line 16
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->i:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->g:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->h:Z

    return v0
.end method

.method public getCbsAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCbsHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncbakAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncbakAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncbakHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setCbsAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCbsHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->g:Z

    .line 88
    return-void
.end method

.method public setParallelExcecuationAllowed(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->h:Z

    .line 96
    return-void
.end method

.method public setSyncbakAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSyncbakAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSyncbakHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUseHttps(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->i:Z

    .line 24
    return-void
.end method

.method public setUseResponseCache(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/DataManagerConfiguration;->j:Z

    .line 32
    return-void
.end method
