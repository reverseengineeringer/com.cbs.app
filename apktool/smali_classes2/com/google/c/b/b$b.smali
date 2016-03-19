.class final Lcom/google/c/b/b$b;
.super Lcom/google/c/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/v",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/c/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/v",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/c/b/v;Lcom/google/c/b/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/v",
            "<TK;TV;>;",
            "Lcom/google/c/b/v",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/c/b/v;-><init>(Lcom/google/c/b/v;)V

    .line 118
    iput-object p2, p0, Lcom/google/c/b/b$b;->c:Lcom/google/c/b/v;

    .line 119
    return-void
.end method


# virtual methods
.method final a()Lcom/google/c/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/v",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/c/b/b$b;->c:Lcom/google/c/b/v;

    return-object v0
.end method
