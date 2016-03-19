.class final Lcom/comscore/utils/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/utils/l;


# direct methods
.method constructor <init>(Lcom/comscore/utils/l;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/l;

    invoke-virtual {v0}, Lcom/comscore/utils/l;->a()V

    iget-object v0, p0, Lcom/comscore/utils/s;->a:Lcom/comscore/utils/l;

    invoke-virtual {v0}, Lcom/comscore/utils/l;->b()V

    return-void
.end method
