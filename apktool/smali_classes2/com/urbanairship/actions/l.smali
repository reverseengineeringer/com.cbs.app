.class public Lcom/urbanairship/actions/l;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/l$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    sget-object v1, Lcom/urbanairship/actions/l$1;->a:[I

    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/d/i;->a(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/i;->a(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/e;

    move-result-object v0

    return-object v0
.end method
