.class final Lcom/adobe/b/a/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/a/b/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/a/b/c;


# direct methods
.method constructor <init>(Lcom/adobe/b/a/b/c;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/b/a/b/c$1;->a:Lcom/adobe/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/adobe/b/a/b/c$1;->a:Lcom/adobe/b/a/b/c;

    invoke-static {v0}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-object v1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/c$1;->a:Lcom/adobe/b/a/b/c;

    invoke-static {v0}, Lcom/adobe/b/a/b/c;->b(Lcom/adobe/b/a/b/c;)V

    goto :goto_0
.end method
