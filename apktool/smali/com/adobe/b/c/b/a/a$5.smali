.class final Lcom/adobe/b/c/b/a/a$5;
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
    .line 144
    iput-object p1, p0, Lcom/adobe/b/c/b/a/a$5;->a:Lcom/adobe/b/c/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a$5;->a:Lcom/adobe/b/c/b/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/a;->a(Lcom/adobe/b/c/b/a/a;)Lcom/adobe/b/c/b/a/c;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/adobe/b/c/b/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
