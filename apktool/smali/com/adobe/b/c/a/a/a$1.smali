.class final Lcom/adobe/b/c/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/a/a;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$1;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$1;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/a/a;->a(Lcom/adobe/b/c/a/a/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 214
    return-object v1
.end method
