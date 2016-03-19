.class public final Lcom/flurry/sdk/aq;
.super Lcom/flurry/sdk/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/aq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ar;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/aq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/aq$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/bb",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field private g:Lcom/flurry/sdk/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/bb",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/ar;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/aq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/aq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/aq;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/aq;->d:Lcom/flurry/sdk/bb;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/bb;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/aq;->g:Lcom/flurry/sdk/bb;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/aq;)V
    .locals 1

    .prologue
    .line 14
    .line 1094
    iget-object v0, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/aq$a;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/flurry/sdk/aq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/aq$a;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/aq$a;->a(Lcom/flurry/sdk/aq;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 58
    .line 1066
    new-instance v0, Lcom/flurry/sdk/aq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/aq$1;-><init>(Lcom/flurry/sdk/aq;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/aq;->a(Lcom/flurry/sdk/ar$b;)V

    .line 61
    invoke-super {p0}, Lcom/flurry/sdk/ar;->a()V

    .line 62
    return-void
.end method

.method public final a(Lcom/flurry/sdk/aq$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/aq$a",
            "<TRequestObjectType;TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/aq$a;

    .line 49
    return-void
.end method

.method public final a(Lcom/flurry/sdk/bb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb",
            "<TRequestObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/aq;->d:Lcom/flurry/sdk/bb;

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestObjectType;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/aq;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method
