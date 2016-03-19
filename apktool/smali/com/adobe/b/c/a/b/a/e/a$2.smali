.class final Lcom/adobe/b/c/a/b/a/e/a$2;
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
    .line 126
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 129
    check-cast p1, Lcom/adobe/b/a/a;

    .line 130
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 133
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->d(Lcom/adobe/b/c/a/b/a/e/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-object v8

    .line 139
    :cond_1
    const-string v1, "report"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 140
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->e(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/c/a/b/a/d/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/b/c/a/b/a/d/c/b;->a(Lcom/adobe/b/c/a/b/a/d/b/a;)Ljava/util/HashMap;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/adobe/b/c/a/b/a/e/a$2$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/b/c/a/b/a/e/a$2$1;-><init>(Lcom/adobe/b/c/a/b/a/e/a$2;Ljava/util/HashMap;)V

    .line 153
    new-instance v2, Lcom/adobe/b/c/a/b/a/e/a$2$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/b/c/a/b/a/e/a$2$2;-><init>(Lcom/adobe/b/c/a/b/a/e/a$2;Ljava/util/HashMap;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/e/a;->f(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serializedOutput"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v3, Lcom/adobe/b/a/f$b;

    sget-object v4, Lcom/adobe/b/a/f$a;->a:Lcom/adobe/b/a/f$a;

    invoke-direct {v3, v0, v4}, Lcom/adobe/b/a/f$b;-><init>(Ljava/lang/String;Lcom/adobe/b/a/f$a;)V

    .line 167
    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v5}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_onFilterReportAvailable() > "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->g(Lcom/adobe/b/c/a/b/a/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/adobe/b/a/f;

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/adobe/b/a/f;-><init>(Lcom/adobe/b/a/c;)V

    .line 172
    const-string v4, "success"

    invoke-virtual {v0, v4, v2}, Lcom/adobe/b/a/f;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 173
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/b/a/f;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 174
    invoke-virtual {v0, v3}, Lcom/adobe/b/a/f;->a(Lcom/adobe/b/a/f$b;)V

    goto :goto_0
.end method
