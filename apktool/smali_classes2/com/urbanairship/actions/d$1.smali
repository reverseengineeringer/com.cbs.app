.class final Lcom/urbanairship/actions/d$1;
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
    .line 181
    iput-object p1, p0, Lcom/urbanairship/actions/d$1;->a:Lcom/urbanairship/actions/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 181
    check-cast p1, Lcom/urbanairship/actions/b;

    .line 1184
    sget-object v0, Lcom/urbanairship/actions/p;->b:Lcom/urbanairship/actions/p;

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->r()Lcom/urbanairship/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/b;->a()J

    move-result-wide v0

    .line 1186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1188
    :cond_0
    const/4 v0, 0x1

    .line 181
    goto :goto_0
.end method
