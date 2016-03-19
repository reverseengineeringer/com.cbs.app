.class Lcom/adobe/b/c/a/b/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/adobe/b/a/c;

.field protected c:Ljava/lang/Double;

.field protected d:Lcom/adobe/b/a/b/a;

.field protected e:Lcom/adobe/b/a/a/f;

.field protected f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/adobe/b/a/b;

.field private i:Lcom/adobe/b/a/b;

.field private j:Lcom/adobe/b/a/b;


# direct methods
.method constructor <init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Ljava/lang/String;DLcom/adobe/b/a/c;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/e$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/a/e$1;-><init>(Lcom/adobe/b/c/a/b/a/a/e;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->h:Lcom/adobe/b/a/b;

    .line 162
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/e$2;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/a/e$2;-><init>(Lcom/adobe/b/c/a/b/a/a/e;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->i:Lcom/adobe/b/a/b;

    .line 179
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/e$3;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/a/e$3;-><init>(Lcom/adobe/b/c/a/b/a/a/e;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->j:Lcom/adobe/b/a/b;

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the channel object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/a/e;->d:Lcom/adobe/b/a/b/a;

    .line 65
    if-nez p1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the pluginManager object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    .line 70
    if-nez p6, :cond_2

    .line 71
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object p6, p0, Lcom/adobe/b/c/a/b/a/a/e;->b:Lcom/adobe/b/a/c;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->a:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->g:Z

    .line 79
    invoke-direct {p0, p3, p4, p5}, Lcom/adobe/b/c/a/b/a/a/e;->a(Ljava/lang/String;D)V

    .line 1195
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->d:Lcom/adobe/b/a/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clock:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->h:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1196
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->d:Lcom/adobe/b/a/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clock:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->i:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 1198
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "service.clock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->j:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/adobe/b/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 207
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    .line 208
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->c:Ljava/lang/Double;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "interval"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    const-string v2, "service.clock"

    const-string v3, "create"

    invoke-virtual {v1, v2, v3, v0}, Lcom/adobe/b/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    return-void
.end method


# virtual methods
.method final a(D)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is_paused.heartbeat."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    const-string v3, "service.clock"

    invoke-virtual {v2, v3, v0}, Lcom/adobe/b/a/a/f;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 131
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/b/c/a/b/a/a/e;->a(Ljava/lang/Boolean;)V

    .line 134
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/adobe/b/c/a/b/a/a/e;->a(Ljava/lang/String;D)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/a/e;->b(Ljava/lang/Boolean;)V

    .line 140
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "reset"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    const-string v2, "service.clock"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3, v0}, Lcom/adobe/b/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heartbeat."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "reset"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/e;->e:Lcom/adobe/b/a/a/f;

    const-string v2, "service.clock"

    const-string v3, "resume"

    invoke-virtual {v1, v2, v3, v0}, Lcom/adobe/b/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-void
.end method
