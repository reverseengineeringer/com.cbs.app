.class final Lcom/adobe/mobile/n$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/adobe/mobile/n;


# direct methods
.method public constructor <init>(Lcom/adobe/mobile/n;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    .line 147
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    invoke-virtual {v0}, Lcom/adobe/mobile/n;->f()V

    .line 153
    iget-object v0, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iput-boolean v3, v0, Lcom/adobe/mobile/n;->f:Z

    .line 156
    iget-object v0, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 159
    const-string v2, "{userId}"

    invoke-static {}, Lcom/adobe/mobile/am;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "{trackingId}"

    invoke-static {}, Lcom/adobe/mobile/am;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "{messageId}"

    iget-object v2, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v2, v2, Lcom/adobe/mobile/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "{lifetimeValue}"

    invoke-static {}, Lcom/adobe/mobile/e;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v2, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v2, v2, Lcom/adobe/mobile/n;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/mobile/n;->m:Ljava/lang/String;

    .line 168
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->u()Landroid/app/Activity;
    :try_end_0
    .catch Lcom/adobe/mobile/am$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/adobe/mobile/n$a$c;->a:Lcom/adobe/mobile/n;

    iget-object v2, v2, Lcom/adobe/mobile/n;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_0
    :goto_2
    return-void

    .line 159
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/am;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Lcom/adobe/mobile/am;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 179
    :catch_1
    move-exception v0

    .line 180
    const-string v1, "Messages - Could not load click-through intent for message (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
