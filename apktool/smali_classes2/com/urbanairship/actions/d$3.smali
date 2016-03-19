.class final Lcom/urbanairship/actions/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Lcom/urbanairship/actions/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/d;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/d;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/urbanairship/actions/d$3;->a:Lcom/urbanairship/actions/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 214
    check-cast p1, Lcom/urbanairship/actions/b;

    .line 1217
    sget-object v0, Lcom/urbanairship/actions/p;->a:Lcom/urbanairship/actions/p;

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/urbanairship/actions/p;->d:Lcom/urbanairship/actions/p;

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 214
    goto :goto_0
.end method
