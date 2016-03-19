.class final Lcom/adobe/b/c/a/b/a/e/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/c/a/b/a/e/a$2;->call(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/adobe/b/c/a/b/a/e/a$2;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/e/a$2;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->b:Lcom/adobe/b/c/a/b/a/e/a$2;

    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->b:Lcom/adobe/b/c/a/b/a/e/a$2;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->b:Lcom/adobe/b/c/a/b/a/e/a$2;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/e/a$2;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->a:Ljava/util/HashMap;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$2$1;->a:Ljava/util/HashMap;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b;

    invoke-interface {v0, v2}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-object v2
.end method
