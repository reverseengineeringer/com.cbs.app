.class final Lcom/urbanairship/push/iam/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/b;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/push/a/c;)V
    .locals 4

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-app message button clicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/push/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/b;->a(Z)V

    .line 286
    invoke-virtual {p1}, Lcom/urbanairship/push/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/actions/p;->e:Lcom/urbanairship/actions/p;

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v1}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/push/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/iam/InAppMessage;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/push/iam/b;->a(Ljava/util/Map;Lcom/urbanairship/actions/p;)V

    .line 291
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v1}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/iam/b$5;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v2}, Lcom/urbanairship/push/iam/b;->b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/f;->d()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/urbanairship/push/iam/e;->a(Landroid/content/Context;Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/a/c;J)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 293
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/urbanairship/actions/p;->f:Lcom/urbanairship/actions/p;

    goto :goto_0
.end method
