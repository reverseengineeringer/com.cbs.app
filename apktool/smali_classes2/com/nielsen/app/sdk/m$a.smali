.class public final Lcom/nielsen/app/sdk/m$a;
.super Lcom/nielsen/app/sdk/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/nielsen/app/sdk/h$c;

.field c:Ljava/lang/String;

.field final synthetic e:Lcom/nielsen/app/sdk/m;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/m;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iput-object p1, p0, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    .line 177
    iget-object v0, p1, Lcom/nielsen/app/sdk/m;->c:Lcom/nielsen/app/sdk/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AppTaskUploader"

    invoke-direct {p0, v0, v1}, Lcom/nielsen/app/sdk/h$d;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;)V

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/nielsen/app/sdk/m$a;->b:Lcom/nielsen/app/sdk/h$c;

    .line 188
    iput-object v2, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/nielsen/app/sdk/h$c;

    iget-object v1, p1, Lcom/nielsen/app/sdk/m;->c:Lcom/nielsen/app/sdk/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "AppTaskUploader"

    invoke-direct {v0, v1, v2, p0}, Lcom/nielsen/app/sdk/h$c;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/m$a;->b:Lcom/nielsen/app/sdk/h$c;

    .line 181
    iput-object p2, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppTaskUploader_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/nielsen/app/sdk/m;->a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    const/16 v0, 0x49

    const-string v1, "UPLOAD ended successfully"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/nielsen/app/sdk/l;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: Sent data ping successfully - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    invoke-static {v0}, Lcom/nielsen/app/sdk/m;->a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    invoke-static {v0}, Lcom/nielsen/app/sdk/m;->a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    return-void

    .line 150
    :cond_2
    const-string v0, "EMPTY"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/nielsen/app/sdk/l;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Nielsen AppSDK: Failed sending data ping - "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    invoke-static {v0}, Lcom/nielsen/app/sdk/m;->a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/nielsen/app/sdk/m$a;->e:Lcom/nielsen/app/sdk/m;

    invoke-static {v0}, Lcom/nielsen/app/sdk/m;->a(Lcom/nielsen/app/sdk/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nielsen/app/sdk/m$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    return-void

    .line 122
    :cond_2
    const-string v0, "EMPTY"

    goto :goto_0
.end method
