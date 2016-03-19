.class final Lb/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/g;->a(Lb/f;Ljava/util/concurrent/Executor;)Lb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/g$a;

.field final synthetic b:Lb/f;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lb/e;

.field final synthetic e:Lb/g;


# direct methods
.method constructor <init>(Lb/g;Lb/g$a;Lb/f;Ljava/util/concurrent/Executor;Lb/e;)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lb/g$5;->e:Lb/g;

    iput-object p2, p0, Lb/g$5;->a:Lb/g$a;

    iput-object p3, p0, Lb/g$5;->b:Lb/f;

    iput-object p4, p0, Lb/g$5;->c:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g$5;->d:Lb/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lb/g;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 535
    .line 1538
    iget-object v0, p0, Lb/g$5;->a:Lb/g$a;

    iget-object v1, p0, Lb/g$5;->b:Lb/f;

    iget-object v2, p0, Lb/g$5;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lb/g$5;->d:Lb/e;

    invoke-static {v0, v1, p1, v2, v3}, Lb/g;->a(Lb/g$a;Lb/f;Lb/g;Ljava/util/concurrent/Executor;Lb/e;)V

    .line 1539
    const/4 v0, 0x0

    .line 535
    return-object v0
.end method
