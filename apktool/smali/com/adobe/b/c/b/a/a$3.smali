.class final Lcom/adobe/b/c/b/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b/a/a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/b/c/b/a/a$3;->a:Lcom/adobe/b/c/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a$3;->a:Lcom/adobe/b/c/b/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/a;->a(Lcom/adobe/b/c/b/a/a;)Lcom/adobe/b/c/b/a/c;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "reset"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/adobe/b/c/b/a/c;->a(Ljava/lang/String;Z)V

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
