.class final Lcom/google/e/b/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/e/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/e/f;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/e/b/c;


# direct methods
.method constructor <init>(Lcom/google/e/b/c;Lcom/google/e/f;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/e/b/c$5;->c:Lcom/google/e/b/c;

    iput-object p2, p0, Lcom/google/e/b/c$5;->a:Lcom/google/e/f;

    iput-object p3, p0, Lcom/google/e/b/c$5;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/e/b/c$5;->a:Lcom/google/e/f;

    invoke-interface {v0}, Lcom/google/e/f;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
