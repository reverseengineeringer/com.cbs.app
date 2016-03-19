.class final Lcom/urbanairship/push/i;
.super Lcom/urbanairship/BaseIntentService$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/push/h;

.field private final b:Lcom/urbanairship/push/g;

.field private final c:Lcom/urbanairship/push/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;)V
    .locals 6

    .prologue
    .line 58
    new-instance v3, Lcom/urbanairship/push/h;

    invoke-direct {v3}, Lcom/urbanairship/push/h;-><init>()V

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v4

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/j;->k()Lcom/urbanairship/push/g;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/i;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/h;Lcom/urbanairship/push/j;Lcom/urbanairship/push/g;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/push/h;Lcom/urbanairship/push/j;Lcom/urbanairship/push/g;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$a;-><init>(Landroid/content/Context;Lcom/urbanairship/l;)V

    .line 64
    iput-object p3, p0, Lcom/urbanairship/push/i;->a:Lcom/urbanairship/push/h;

    .line 65
    iput-object p5, p0, Lcom/urbanairship/push/i;->b:Lcom/urbanairship/push/g;

    .line 66
    iput-object p4, p0, Lcom/urbanairship/push/i;->c:Lcom/urbanairship/push/j;

    .line 67
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/i;->b:Lcom/urbanairship/push/g;

    invoke-virtual {v0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/urbanairship/push/i;->b:Lcom/urbanairship/push/g;

    invoke-virtual {v1}, Lcom/urbanairship/push/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/urbanairship/push/i;->b()Lcom/urbanairship/l;

    move-result-object v2

    const-string v3, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    invoke-virtual {v2, v3}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/urbanairship/push/i;->c:Lcom/urbanairship/push/j;

    invoke-virtual {v3}, Lcom/urbanairship/push/j;->t()Ljava/lang/String;

    move-result-object v3

    .line 80
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 86
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    :cond_3
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    if-nez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/urbanairship/push/i;->a:Lcom/urbanairship/push/h;

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/h;->a(Ljava/lang/String;)Lcom/urbanairship/b/c;

    move-result-object v0

    .line 108
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v2

    invoke-static {v2}, Lcom/urbanairship/d/f;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    :cond_4
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/i;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/urbanairship/push/i;->a:Lcom/urbanairship/push/h;

    invoke-virtual {v2, v0, v3}, Lcom/urbanairship/push/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/b/c;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v2

    invoke-static {v2}, Lcom/urbanairship/d/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update named user succeeded with status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/urbanairship/push/i;->b()Lcom/urbanairship/l;

    move-result-object v0

    const-string v2, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/urbanairship/push/g;->e()V

    goto :goto_0

    .line 124
    :cond_7
    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_8

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update named user failed with status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " This action is not allowed when the app is in server-only mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 131
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update named user failed with status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
