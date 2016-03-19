.class final Lcom/comscore/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/m;->b:Lcom/comscore/a/b;

    iput-object p2, p0, Lcom/comscore/a/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/a/m;->b:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/comscore/a/b;->b(Lcom/comscore/a/b;Ljava/lang/String;)V

    return-void
.end method
