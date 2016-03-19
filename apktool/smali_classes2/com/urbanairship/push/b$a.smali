.class final Lcom/urbanairship/push/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/push/b$a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/b$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/urbanairship/push/b$a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/b$a;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/urbanairship/push/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/push/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/urbanairship/push/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/urbanairship/push/b$a;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/urbanairship/push/b$a;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/urbanairship/push/b$a;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/urbanairship/push/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/urbanairship/push/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/urbanairship/push/b$a;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/b$a;->c:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method final a(Z)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/urbanairship/push/b$a;->a:Z

    .line 95
    return-object p0
.end method

.method final a(ZLjava/util/Set;)Lcom/urbanairship/push/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/push/b$a;"
        }
    .end annotation

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/urbanairship/push/b$a;->f:Z

    .line 159
    iput-object p2, p0, Lcom/urbanairship/push/b$a;->g:Ljava/util/Set;

    .line 160
    return-object p0
.end method

.method final a()Lcom/urbanairship/push/b;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/urbanairship/push/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/b;-><init>(Lcom/urbanairship/push/b$a;B)V

    return-object v0
.end method

.method final b(Ljava/lang/String;)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/urbanairship/push/b$a;->d:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method final b(Z)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/urbanairship/push/b$a;->b:Z

    .line 107
    return-object p0
.end method

.method final c(Ljava/lang/String;)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/urbanairship/push/b$a;->e:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method final d(Ljava/lang/String;)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/urbanairship/push/b$a;->h:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method final e(Ljava/lang/String;)Lcom/urbanairship/push/b$a;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/urbanairship/push/b$a;->i:Ljava/lang/String;

    .line 185
    return-object p0
.end method
