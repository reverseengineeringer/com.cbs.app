.class final Lcom/urbanairship/widget/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/actions/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/urbanairship/widget/a;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/a;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/urbanairship/widget/a$2;->d:Lcom/urbanairship/widget/a;

    iput-object p2, p0, Lcom/urbanairship/widget/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/widget/a$2;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/urbanairship/widget/a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    const/4 v0, 0x0

    .line 323
    sget-object v1, Lcom/urbanairship/widget/a$3;->a:[I

    invoke-virtual {p2}, Lcom/urbanairship/actions/e;->d()Lcom/urbanairship/actions/e$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/e$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/widget/a$2;->b:Landroid/webkit/WebView;

    invoke-virtual {p2}, Lcom/urbanairship/actions/e;->b()Lcom/urbanairship/actions/ActionValue;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/widget/a$2;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/widget/a$2;->d:Lcom/urbanairship/widget/a;

    invoke-static {v0}, Lcom/urbanairship/widget/a;->a(Lcom/urbanairship/widget/a;)Lcom/urbanairship/actions/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/urbanairship/widget/a$2;->d:Lcom/urbanairship/widget/a;

    invoke-static {v0}, Lcom/urbanairship/widget/a;->a(Lcom/urbanairship/widget/a;)Lcom/urbanairship/actions/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/actions/c;->a(Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/e;)V

    .line 344
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 325
    :pswitch_0
    const-string v0, "Action %s not found"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/a$2;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "Action %s rejected its arguments"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/a$2;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-virtual {p2}, Lcom/urbanairship/actions/e;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p2}, Lcom/urbanairship/actions/e;->c()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    const-string v0, "Action %s failed with unspecified error"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/a$2;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
