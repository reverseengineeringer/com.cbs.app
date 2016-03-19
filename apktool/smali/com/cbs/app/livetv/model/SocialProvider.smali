.class public Lcom/cbs/app/livetv/model/SocialProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/cbs/app/livetv/model/SocialNames;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/cbs/app/livetv/model/SocialNames;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/cbs/app/livetv/model/SocialProvider;->a:Lcom/cbs/app/livetv/model/SocialNames;

    .line 22
    iput-object p2, p0, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v1, "provider_name"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/SocialProvider;->a:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/SocialNames;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v1, "provider_token"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/SocialProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "provider_secret"

    iget-object v2, p0, Lcom/cbs/app/livetv/model/SocialProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/livetv/model/SocialProvider;->a:Lcom/cbs/app/livetv/model/SocialNames;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/model/SocialProvider;->a:Lcom/cbs/app/livetv/model/SocialNames;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/SocialNames;->getNameString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
