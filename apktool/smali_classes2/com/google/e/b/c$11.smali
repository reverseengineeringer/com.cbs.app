.class final Lcom/google/e/b/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/c;
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
.field final synthetic a:Lcom/google/e/b/c;


# direct methods
.method constructor <init>(Lcom/google/e/b/c;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/e/b/c$11;->a:Lcom/google/e/b/c;

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
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
