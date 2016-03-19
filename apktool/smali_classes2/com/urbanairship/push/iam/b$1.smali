.class final Lcom/urbanairship/push/iam/b$1;
.super Lcom/urbanairship/push/iam/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/b;J)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/urbanairship/push/iam/b$1;->a:Lcom/urbanairship/push/iam/b;

    invoke-direct {p0, p2, p3}, Lcom/urbanairship/push/iam/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$1;->a:Lcom/urbanairship/push/iam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/b;->a(Z)V

    .line 164
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$1;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/b$1;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v1}, Lcom/urbanairship/push/iam/b;->b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/f;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/urbanairship/push/iam/e;->c(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 166
    return-void
.end method
