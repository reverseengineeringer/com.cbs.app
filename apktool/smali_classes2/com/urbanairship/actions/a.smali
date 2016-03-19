.class public abstract Lcom/urbanairship/actions/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method


# virtual methods
.method final a(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/a;->b(Lcom/urbanairship/actions/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unable to accept arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v0, Lcom/urbanairship/actions/e$a;->b:Lcom/urbanairship/actions/e$a;

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Lcom/urbanairship/actions/e$a;)Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/a;->c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/urbanairship/actions/e;->a()Lcom/urbanairship/actions/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to run action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Ljava/lang/Exception;)Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/urbanairship/actions/b;)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public abstract c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
.end method
