.class final Lcom/adobe/b/c/a/b/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/a/a;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/a$2;->a:Lcom/adobe/b/c/a/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$2;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$2;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$2;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/a;->d:Lcom/adobe/b/a/b/a;

    new-instance v1, Lcom/adobe/b/a/a;

    const-string v2, "clock:check_status.tick"

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 96
    return-object v3
.end method
