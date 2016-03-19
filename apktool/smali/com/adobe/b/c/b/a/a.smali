.class public final Lcom/adobe/b/c/b/a/a;
.super Lcom/adobe/b/a/a/a;
.source "SourceFile"


# instance fields
.field private i:Lcom/adobe/b/c/b/a/c;

.field private j:Lcom/adobe/b/a/b;

.field private k:Lcom/adobe/b/a/b;

.field private l:Lcom/adobe/b/a/b;

.field private m:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/c;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "service.clock"

    invoke-direct {p0, v0}, Lcom/adobe/b/a/a/a;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/adobe/b/c/b/a/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b/a/a$1;-><init>(Lcom/adobe/b/c/b/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/a;->j:Lcom/adobe/b/a/b;

    .line 102
    new-instance v0, Lcom/adobe/b/c/b/a/a$2;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b/a/a$2;-><init>(Lcom/adobe/b/c/b/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/a;->k:Lcom/adobe/b/a/b;

    .line 110
    new-instance v0, Lcom/adobe/b/c/b/a/a$3;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b/a/a$3;-><init>(Lcom/adobe/b/c/b/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/a;->l:Lcom/adobe/b/a/b;

    .line 118
    new-instance v0, Lcom/adobe/b/c/b/a/a$4;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b/a/a$4;-><init>(Lcom/adobe/b/c/b/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/a;->m:Lcom/adobe/b/a/b;

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/c/b/a/a;->b:Lcom/adobe/b/a/c;

    .line 62
    new-instance v0, Lcom/adobe/b/c/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/b/a/a;->b:Lcom/adobe/b/a/c;

    invoke-direct {v0, p0, v1}, Lcom/adobe/b/c/b/a/c;-><init>(Lcom/adobe/b/c/b/a/a;Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/a;->i:Lcom/adobe/b/c/b/a/c;

    .line 1143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1144
    const-string v1, "is_paused"

    new-instance v2, Lcom/adobe/b/c/b/a/a$5;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/b/a/a$5;-><init>(Lcom/adobe/b/c/b/a/a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v1, Lcom/adobe/b/c/b/a/a$6;

    invoke-direct {v1, p0, v0}, Lcom/adobe/b/c/b/a/a$6;-><init>(Lcom/adobe/b/c/b/a/a;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/adobe/b/c/b/a/a;->d:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/adobe/b/c/b/a/a;)Lcom/adobe/b/c/b/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a;->i:Lcom/adobe/b/c/b/a/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/adobe/b/a/a/f;)V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/adobe/b/a/a/a;->a(Lcom/adobe/b/a/a/f;)V

    .line 73
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "create"

    iget-object v2, p0, Lcom/adobe/b/c/b/a/a;->j:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 74
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "resume"

    iget-object v2, p0, Lcom/adobe/b/c/b/a/a;->l:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 75
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "pause"

    iget-object v2, p0, Lcom/adobe/b/c/b/a/a;->k:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 76
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a;->e:Lcom/adobe/b/a/a/f;

    const-string v1, "destroy"

    iget-object v2, p0, Lcom/adobe/b/c/b/a/a;->m:Lcom/adobe/b/a/b;

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 77
    return-void
.end method

.method final a(Ljava/lang/String;DI)V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "interval"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "tick"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/c/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method
