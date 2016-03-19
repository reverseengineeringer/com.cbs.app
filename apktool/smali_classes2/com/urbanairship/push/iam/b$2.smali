.class final Lcom/urbanairship/push/iam/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;


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
    .line 228
    iput-object p1, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/b;->a(Z)V

    .line 233
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/b;->a(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v1}, Lcom/urbanairship/push/iam/b;->b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/f;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/urbanairship/push/iam/e;->b(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/e;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 235
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/b;->b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->c()V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/b$2;->a:Lcom/urbanairship/push/iam/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/b;->b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->b()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
