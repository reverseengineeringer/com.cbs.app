.class public abstract Lcom/google/c/b/q;
.super Lcom/google/c/b/u;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/u",
        "<TK;TV;>;",
        "Lcom/google/c/b/j",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/c/b/q;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/c/b/u;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/q",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/google/c/b/d;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/c/b/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/q",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/google/c/b/m;->a:Lcom/google/c/b/m;

    return-object v0
.end method


# virtual methods
.method public abstract c()Lcom/google/c/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/q",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public final synthetic g()Lcom/google/c/b/r;
    .locals 1

    .prologue
    .line 40
    .line 1232
    invoke-virtual {p0}, Lcom/google/c/b/q;->c()Lcom/google/c/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/q;->e()Lcom/google/c/b/z;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    .line 2232
    invoke-virtual {p0}, Lcom/google/c/b/q;->c()Lcom/google/c/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/q;->e()Lcom/google/c/b/z;

    move-result-object v0

    .line 40
    return-object v0
.end method
