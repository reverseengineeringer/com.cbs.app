.class final Lcom/adobe/b/c/a/b/a/e/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/e/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/e/a;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 186
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->d(Lcom/adobe/b/c/a/b/a/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-object v7

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->h(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Lcom/adobe/b/c/a/b/a/e/a$3$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/e/a$3$1;-><init>(Lcom/adobe/b/c/a/b/a/e/a$3;)V

    .line 222
    new-instance v1, Lcom/adobe/b/c/a/b/a/e/a$3$2;

    invoke-direct {v1, p0}, Lcom/adobe/b/c/a/b/a/e/a$3$2;-><init>(Lcom/adobe/b/c/a/b/a/e/a$3;)V

    .line 231
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/e/a;->h(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^a-zA-Z0-9]+"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/e/a;->j(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml?r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    new-instance v3, Lcom/adobe/b/a/f$b;

    sget-object v4, Lcom/adobe/b/a/f$a;->a:Lcom/adobe/b/a/f$a;

    invoke-direct {v3, v2, v4}, Lcom/adobe/b/a/f$b;-><init>(Ljava/lang/String;Lcom/adobe/b/a/f$a;)V

    .line 235
    new-instance v4, Lcom/adobe/b/a/f;

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v5}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/adobe/b/a/f;-><init>(Lcom/adobe/b/a/c;)V

    .line 237
    const-string v5, "success"

    invoke-virtual {v4, v5, v0}, Lcom/adobe/b/a/f;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 238
    const-string v0, "error"

    invoke-virtual {v4, v0, v1}, Lcom/adobe/b/a/f;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 240
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#_onClockCheckStatusTick() - Get new settings from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4, v3}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f$b;)V

    goto/16 :goto_0
.end method
