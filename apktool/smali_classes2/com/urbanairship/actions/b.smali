.class public final Lcom/urbanairship/actions/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/actions/p;

.field private final b:Lcom/urbanairship/actions/ActionValue;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/urbanairship/actions/p;Lcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    sget-object p1, Lcom/urbanairship/actions/p;->a:Lcom/urbanairship/actions/p;

    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/b;->a:Lcom/urbanairship/actions/p;

    .line 67
    if-nez p2, :cond_1

    new-instance p2, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {p2}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/urbanairship/actions/b;->b:Lcom/urbanairship/actions/ActionValue;

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/urbanairship/actions/b;->c:Landroid/os/Bundle;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/actions/ActionValue;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/actions/b;->b:Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method

.method public final b()Lcom/urbanairship/actions/p;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/urbanairship/actions/b;->a:Lcom/urbanairship/actions/p;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/urbanairship/actions/b;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionArguments { situation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/b;->a:Lcom/urbanairship/actions/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/b;->b:Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/b;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
