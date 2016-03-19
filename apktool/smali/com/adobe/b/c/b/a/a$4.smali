.class final Lcom/adobe/b/c/b/a/a$4;
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
    .line 118
    iput-object p1, p0, Lcom/adobe/b/c/b/a/a$4;->a:Lcom/adobe/b/c/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a$4;->a:Lcom/adobe/b/c/b/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/a;->a(Lcom/adobe/b/c/b/a/a;)Lcom/adobe/b/c/b/a/c;

    move-result-object v1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/adobe/b/c/b/a/c;->a(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method
