.class final Lcom/adobe/b/c/a/b/a/e/a$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/c/a/b/a/e/a$3;->call(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/e/a$3;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/e/a$3;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$2;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3$2;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$2;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method
