.class final Lcom/flurry/sdk/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/aq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/i;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/aq$a",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/i;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flurry/sdk/i$1;->c:Lcom/flurry/sdk/i;

    iput-object p2, p0, Lcom/flurry/sdk/i$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/i$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/aq;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 129
    .line 1135
    invoke-virtual {p1}, Lcom/flurry/sdk/aq;->d()I

    move-result v0

    .line 1136
    if-lez v0, :cond_1

    .line 1137
    invoke-static {}, Lcom/flurry/sdk/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics report sent."

    invoke-static {v1, v2}, Lcom/flurry/sdk/am;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/flurry/sdk/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FlurryDataSender: report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/i$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Lcom/flurry/sdk/am;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/am;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/i$1$1;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/i$1$1;-><init>(Lcom/flurry/sdk/i$1;I)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/Runnable;)V

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->c:Lcom/flurry/sdk/i;

    iget-object v2, p0, Lcom/flurry/sdk/i$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/i$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    iget-object v0, p0, Lcom/flurry/sdk/i$1;->c:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)V

    :goto_0
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/i$1;->c:Lcom/flurry/sdk/i;

    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;Ljava/lang/String;)V

    goto :goto_0
.end method
