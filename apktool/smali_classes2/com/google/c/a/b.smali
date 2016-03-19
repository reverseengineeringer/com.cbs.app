.class public Lcom/google/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/c/a/b;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lcom/google/c/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/a/b;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/a/b;B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/c/a/b;-><init>(Lcom/google/c/a/b;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/a/b;->a:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static a()Lcom/google/c/a/b;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/c/a/b;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/google/c/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/c/a/b;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/c/a/b;

    invoke-direct {v0, p0}, Lcom/google/c/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/c/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/c/a/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 433
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/google/c/a/b;
    .locals 1

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/c/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/google/c/a/b$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/c/a/b$1;-><init>(Lcom/google/c/a/b;Lcom/google/c/a/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/c/a/b$a;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/c/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/c/a/b$a;-><init>(Lcom/google/c/a/b;Ljava/lang/String;B)V

    return-object v0
.end method
