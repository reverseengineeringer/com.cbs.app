.class final Lcom/comscore/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/c/b;

.field final synthetic b:Lcom/comscore/c/c;


# direct methods
.method constructor <init>(Lcom/comscore/c/c;Lcom/comscore/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/c/e;->b:Lcom/comscore/c/c;

    iput-object p2, p0, Lcom/comscore/c/e;->a:Lcom/comscore/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/c/e;->b:Lcom/comscore/c/c;

    iget-object v1, p0, Lcom/comscore/c/e;->a:Lcom/comscore/c/b;

    invoke-static {v0, v1}, Lcom/comscore/c/c;->a(Lcom/comscore/c/c;Lcom/comscore/c/b;)V

    return-void
.end method
