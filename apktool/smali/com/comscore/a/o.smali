.class final Lcom/comscore/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/utils/m;

.field final synthetic b:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;Lcom/comscore/utils/m;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/o;->b:Lcom/comscore/a/b;

    iput-object p2, p0, Lcom/comscore/a/o;->a:Lcom/comscore/utils/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/a/o;->b:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/o;->a:Lcom/comscore/utils/m;

    invoke-static {v0, v1}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;Lcom/comscore/utils/m;)V

    return-void
.end method
