.class public final Lcom/google/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/a/f$a;,
        Lcom/google/c/a/f$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/google/c/a/b;->a()Lcom/google/c/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/f;->a:Lcom/google/c/a/b;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/c/a/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 1076
    sget-object v0, Lcom/google/c/a/f$b;->c:Lcom/google/c/a/f$b;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/a/f$a;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method
