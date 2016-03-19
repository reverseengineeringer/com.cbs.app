.class final Lcom/flurry/sdk/bf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ah",
        "<",
        "Lcom/flurry/sdk/ab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bf;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/bf$2;->a:Lcom/flurry/sdk/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ag;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 67
    check-cast p1, Lcom/flurry/sdk/ab;

    .line 1070
    sget-object v0, Lcom/flurry/sdk/bf$4;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/ab$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ab$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1081
    :goto_0
    return-void

    .line 1073
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/bf;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onStartSession for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/flurry/sdk/bf$2;->a:Lcom/flurry/sdk/bf;

    iget-object v1, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bf;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-static {}, Lcom/flurry/sdk/bf;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onEndSession for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/flurry/sdk/bf$2;->a:Lcom/flurry/sdk/bf;

    iget-object v1, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bf;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 1086
    :pswitch_2
    invoke-static {}, Lcom/flurry/sdk/bf;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/flurry/sdk/bf$2;->a:Lcom/flurry/sdk/bf;

    iget-object v1, p1, Lcom/flurry/sdk/ab;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bf;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
